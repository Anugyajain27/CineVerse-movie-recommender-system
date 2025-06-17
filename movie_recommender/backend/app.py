import mysql.connector
import pandas as pd
import pymysql
from flask import Flask, request, jsonify, render_template
from sklearn.neighbors import NearestNeighbors

app = Flask(__name__, template_folder='../template', static_folder='../static')

@app.route('/')
def home():
    return render_template('index.html')


# Fetch data from MySQL
def fetch_data():
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='anu@2710',
        database='movies_system'
    )
    df = pd.read_sql("SELECT * FROM ratings", conn)
    conn.close()
    return df


# Recommendation route
@app.route('/recommend', methods=['GET'])
def recommend():
    movie_id = request.args.get('movie_id')
    genre = request.args.get('genre')

    if movie_id:
        movie_id = int(movie_id)
        df = fetch_data()
        pivot_table = df.pivot(index='movie_id', columns='user_id', values='rating').fillna(0)

        model = NearestNeighbors(metric='cosine', algorithm='brute')
        model.fit(pivot_table)

        distances, indices = model.kneighbors(pivot_table.loc[[movie_id]], n_neighbors=6)
        recommended_ids = pivot_table.index[indices.flatten()[1:]].tolist()

        return jsonify({'recommended_movie_ids': recommended_ids})

    elif genre:
        genre = genre.lower()  # normalize
        print("Received genre:", genre)
        conn = pymysql.connect(
            host='localhost',
            user='root',
            password='anu@2710',
            database='movies_system',
            cursorclass=pymysql.cursors.DictCursor
        )
        cursor = conn.cursor()

        query = "SELECT * FROM movies WHERE LOWER(genre) LIKE %s"
        cursor.execute(query, (f"%{genre}%",))
        results = cursor.fetchall()
        print("Rows found:", len(results))
        cursor.close()
        conn.close()

        return jsonify({'movies_by_genre': results}) # <-- ✅ FIXED format to match JS expectation directly

    else:
        return jsonify({'error': 'Please provide either a movie_id or genre'}), 400

@app.route('/get_movies_by_genre')
def get_movies_by_genre():
    genre = request.args.get('genre')
    if not genre:
        return jsonify({'error': 'No genre provided'}), 400

    conn = mysql.connector.connect(
        host='localhost',
        user='root',
        password='anu@2710',
        database='movies_system'
    )
    cursor = conn.cursor(dictionary=True)
    query = "SELECT * FROM movies WHERE LOWER(genre) LIKE %s"
    cursor.execute(query, (f"%{genre.lower()}%",))
    results = cursor.fetchall()
    cursor.close()
    conn.close()

    return jsonify(results)

@app.route('/check_movies')
def check_movies():
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='anu@2710',
        database='movies_system'
    )
    cursor = conn.cursor()
    cursor.execute("SELECT COUNT(*) FROM movies")
    count = cursor.fetchone()[0]
    conn.close()
    return f"Movies in DB: {count}"


if __name__ == '__main__':
    app.run(debug=True)

