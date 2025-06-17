DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS ratings;


CREATE TABLE movies (
    title VARCHAR(255),
    genre VARCHAR(100),
    rating FLOAT,
    duration INT,
    year INT,
    imdb_url VARCHAR(500),
    image_url VARCHAR(500)
);

INSERT INTO movies (title, genre, rating, duration, year, imdb_url, image_url) VALUES
('Tere Naam', 'Drama, Romance', 8.7, 160, 2003, 'https://www.imdb.com/title/tt0374271/', 'https://m.media-amazon.com/images/M/MV5BMTA5Mjg4NzY5NDReQTJeQWpwZ15BbWU3MDU0Njg4MzE@._V1_.jpg'),
('Chalte Chalte', 'Drama, Romance', 6.5, 167, 2003, 'https://www.imdb.com/title/tt0346723/?ref_=ls_t_6', 'https://m.media-amazon.com/images/M/MV5BYmU2OGNiMjktMmY0OS00MjNhLWIwZWMtNGY1NjgwNjA5MTRhXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Kuch Kuch Hota Hai', 'Comedy, Drama, Musical', 7.5, 185, 1998, 'https://www.imdb.com/title/tt0172684/?ref_=ls_t_7', 'https://upload.wikimedia.org/wikipedia/en/0/07/Kuch_Kuch_Hota_Hai_poster.jpg'),
('Kabir Singh', 'Drama, Romance', 7.0, 173, 2019, 'https://www.imdb.com/title/tt8983202/?ref_=ls_t_8', 'https://m.media-amazon.com/images/M/MV5BOTQyOWNhOTktODlmNy00NDVkLWE4MTAtYjZlMTg5MzA4ZWY0XkEyXkFqcGc@._V1_QL75_UX820_.jpg'),
('Jab We Met', 'Comedy, Drama, Romance', 7.9, 138, 2007, 'https://www.imdb.com/title/tt1093370/?ref_=ls_t_9', 'https://stat4.bollywoodhungama.in/wp-content/uploads/2020/04/75-10.jpg'),
('Baby John', 'Action,Drama', 5.1, 161, 2024, 'https://www.imdb.com/title/tt27757805/', 'https://m.media-amazon.com/images/M/MV5BMDRjNTI5ZGUtZTlhYS00NWU2LTlhMmQtZDM2MTAxZTY5YjlmXkEyXkFqcGc@._V1_.jpg'),
('Hum Tum', 'Comedy, Drama, Romance', 7.0, 143, 2004, 'https://www.imdb.com/title/tt0378072/?ref_=ls_t_11', 'https://m.media-amazon.com/images/M/MV5BYWUxNWUzOTItNzI3MS00M2M3LWEwM2QtNDZkNzJhNWQ2ODk0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Salaam Namaste', 'Comedy, Drama, Romance', 6.2, 158, 2005, 'https://www.imdb.com/title/tt0456165/?ref_=ls_t_12', 'https://m.media-amazon.com/images/M/MV5BMjA3NDQ5MzM5OF5BMl5BanBnXkFtZTgwOTUzOTI0MzE@._V1_.jpg'),
('Mohabbatein', 'Drama, Musical, Romance', 7.0, 216, 2000, 'https://www.imdb.com/title/tt0213890/?ref_=ls_t_13', 'https://m.media-amazon.com/images/M/MV5BYTk3MTQ3YzgtNDM2ZS00ODUyLWJhNWQtYTA1MTE5MzQ5NDk4XkEyXkFqcGc@._V1_.jpg'),
('Fanaa', 'Drama, Romance', 7.1, 168, 2006, 'https://www.imdb.com/title/tt0439662/?ref_=ls_t_14', 'https://m.media-amazon.com/images/M/MV5BZTljMDRhMzItMmQwYi00YjQzLWJiZjEtNWJjMjM1ZWUwZTYzXkEyXkFqcGc@._V1_.jpg'),
('Kabhi Alvida Naa Kehna', 'Drama, Romance', 6.1, 193, 2006, 'https://www.imdb.com/title/tt0449999/?ref_=ls_t_15', 'https://m.media-amazon.com/images/M/MV5BYmRkOWQ1NDItYTk2ZC00YWM2LWE4ZWEtNjIwNTczMmRmZjc3XkEyXkFqcGc@._V1_.jpg'),
('Highway', 'Adventure, Drama, Romance', 7.6, 133, 2014, 'https://www.imdb.com/title/tt2980794/?ref_=ls_t_16', 'https://m.media-amazon.com/images/M/MV5BMjE5NjkyNTczM15BMl5BanBnXkFtZTgwNDg4MzE5MDE@._V1_FMjpg_UX1000_.jpg'),
('Jannat: In Search of Heaven...', 'Drama, Romance, Thriller', 6.9, 140, 2008, 'https://www.imdb.com/title/tt1216300/?ref_=ls_t_17', 'https://m.media-amazon.com/images/M/MV5BMjkyNzhhYmMtODEzYy00ZDFjLTgxYzMtYzE4ZjBiNDc2ZWFhXkEyXkFqcGc@._V1_.jpg'),
('Jannat 2', 'Action, Drama, Romance', 6.3, 150, 2012, 'https://www.imdb.com/title/tt2319889/?ref_=ls_t_18', 'https://m.media-amazon.com/images/M/MV5BM2Q0YjcxNzAtZmNiYi00Nzk1LThiNDUtZWMxNTFhNTExNTg1XkEyXkFqcGc@._V1_.jpg'),
('Awarapan', 'Action, Crime, Drama', 7.4, 126, 2007, 'https://www.imdb.com/title/tt1020937/?ref_=ls_t_19', 'https://m.media-amazon.com/images/M/MV5BMWRiMDY0ZTAtNDJlOS00MjVmLWFkNTktNDk4YzNmNTY4NmIwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Woh Lamhe ...', 'Drama, Romance', 6.5, 156, 2006, 'https://www.imdb.com/title/tt0833561/?ref_=ls_t_20', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdSok3x8gl-wixnYmAb1bb5CoTEDYN0u7EQQ&s'),
('Zeher', 'Crime, Drama, Mystery', 5.6, 132, 2005, 'https://www.imdb.com/title/tt0451983/?ref_=ls_t_21', 'https://m.media-amazon.com/images/M/MV5BNDMwMzgzODAtNGJjZS00ODYwLTgwMGYtY2Y5NDA3NjczMWNmXkEyXkFqcGc@._V1_.jpg'),
('Arya 2', 'Action, Drama, Romance', 7.5, 155, 2009, 'https://www.imdb.com/title/tt1526323/?ref_=ls_t_22', 'https://i.pinimg.com/564x/52/a4/20/52a420a029b40da96c6bc6328f2f2d3a.jpg'),
('Andaaz', 'Action, Drama, Romance', 5.2, 145, 2003, 'https://www.imdb.com/title/tt0346507/?ref_=ls_t_24', 'https://m.media-amazon.com/images/M/MV5BOTM5MTQ4MzQ3Ml5BMl5BanBnXkFtZTcwNDI1ODQyMQ@@._V1_FMjpg_UX1000_.jpg'),
('Housefull 3', 'Comedy', 4.9, 140, 2016, 'https://www.imdb.com/title/tt4559046/?ref_=ext_shr_lnk', 'https://m.media-amazon.com/images/M/MV5BYzIzMGJlNjgtYTUzMy00NGY2LWI1ZDktMDM0OTdiY2EzM2YxXkEyXkFqcGc@._V1_.jpg'),
('Shiddat', 'Drama, Romance', 7.6, 146, 2021, 'https://www.imdb.com/title/tt11314148/?ref_=ls_t_26', 'https://m.media-amazon.com/images/M/MV5BZmQwYTE4MTUtZDU3ZC00M2UyLTlhZjMtOGIyMTZjZjQ3MmI5XkEyXkFqcGc@._V1_.jpg'),
('Rab Ne Bana Di Jodi', 'Comedy, Drama, Music', 7.2, 167, 2008, 'https://www.imdb.com/title/tt1182937/?ref_=ls_t_27', 'https://m.media-amazon.com/images/M/MV5BN2M3MzMzM2UtNDJkNC00NTI2LTg1YjgtOWRiNjNmNTk3MjlmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Tu Jhoothi Main Makkaar', 'Comedy, Drama, Romance', 6.0, 150, 2023, 'https://www.imdb.com/title/tt8672856/?ref_=ls_t_28', 'https://m.media-amazon.com/images/M/MV5BY2Y0ZmZjNjQtYjIwYi00YWNhLThjNGUtMTU0ZTI3Zjc0YTNjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Satyaprem Ki Katha', 'Drama, Romance', 6.7, 146, 2023, 'https://www.imdb.com/title/tt14914988/?ref_=ls_t_29', 'https://m.media-amazon.com/images/M/MV5BMTVmZDNjMGEtNzc5MC00ODY4LWI1ZTYtMjM2ODhhNGExNzgxXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Kal ho na ho', 'Romance', 7.9, 186, 2003, 'https://www.imdb.com/title/tt0347304/', 'https://m.media-amazon.com/images/M/MV5BZTczMDQ0N2EtMTY4NS00ODJhLTk4MzQtOGJmZGRmY2M4MWQwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Stolen', 'Unknown', 7.5, 92, 2023, 'https://www.imdb.com/title/tt.../','https://m.media-amazon.com/images/M/MV5BOThmMTZjMTUtMTE5OC00OTA0LWIzNjktZTA5NTBmZDc4Mjk0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Kesari Chapter 2: The Untold Story of Jallianwala Bagh', 'History,Drama', 8.2, 133, 2025, 'https://www.imdb.com/title/tt3562110/','https://m.media-amazon.com/images/M/MV5BOTJiYTA4NDItMWNiYy00YmE3LTg4ZGItNjVlOGZlZGY4MjExXkEyXkFqcGc@._V1_.jpg'),
('Bhool Chuk Maaf', 'Romance, Comedy', 6.0, 140, 2025, 'https://www.imdb.com/title/tt32058735/', 'https://m.media-amazon.com/images/M/MV5BMjIyMTZiMGEtNmIyYi00MGI1LWFmY2MtYTMyZjBlYzljMDFlXkEyXkFqcGc@._V1_.jpg'),
('Jaat', 'Action, Thriller', 6.1, 158, 2025, 'https://www.imdb.com/title/tt32223398/','https://m.media-amazon.com/images/M/MV5BNDQxYmM2YmUtOGJmYy00YzcyLTkxOTItYmI3ZTZjZmUwZDMxXkEyXkFqcGc@._V1_.jpg'),
('Raid 2', 'Crime, Drama', 7.1, 145, 2025, 'https://www.imdb.com/title/tt28089700/', 'https://m.media-amazon.com/images/M/MV5BNjQyOTRiYTQtNzU0MS00ZGM2LWE4MTktODI5ZjZiN2NkYjYyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('12th Fail', 'Biography, Drama', 8.7, 147, 2023, 'https://www.imdb.com/title/tt23849204/', 'https://m.media-amazon.com/images/M/MV5BNTE3OTIxZDYtNjA0NC00N2YxLTg1NGQtOTYxNmZkMDkwOWNjXkEyXkFqcGc@._V1_.jpg'),
('The Diplomat', 'Drama, Thriller', 7.0, 130, 2025, 'https://www.imdb.com/title/tt26229612/', 'https://m.media-amazon.com/images/M/MV5BNjNhODY5OWEtZjMxNy00NzFhLWIzOTQtZTNmYjUwOGRiMzYwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('3 Idiots', 'Comedy, Drama', 8.4, 170, 2009, 'https://www.imdb.com/title/tt1187043/', 'https://m.media-amazon.com/images/M/MV5BNzc4ZWQ3NmYtODE0Ny00YTQ4LTlkZWItNTBkMGQ0MmUwMmJlXkEyXkFqcGc@._V1_.jpg'),
('Sikandar', 'Action, Drama', 3.8, 148, 2025, 'https://www.imdb.com/title/tt31712434/', 'https://m.media-amazon.com/images/M/MV5BZjc3NzQyMTItMjBkOS00NTE4LTk4NDMtNTRiYzdjN2U2N2QwXkEyXkFqcGc@._V1_.jpg'),
('Housefull 5 ', 'Comedy', 3.7, 163, 2025, 'https://www.imdb.com/title/tt9104736/','https://m.media-amazon.com/images/M/MV5BZmIzMThjNTYtNjkwZi00NmM3LTliNGItZWIxYTUwMGU1YzM0XkEyXkFqcGc@._V1_.jpg'),
('Main Hoon Na', 'Action, Drama, Romance', 7.1, 182, 2004, 'https://www.imdb.com/title/tt0347473/', 'https://m.media-amazon.com/images/M/MV5BMDcwZDJhOGQtNWI5NS00MmI3LWFkYjMtNTY3OGUxMjgwMjZiXkEyXkFqcGc@._V1_.jpg'),
('Veer-Zaara', 'Drama, Romance', 7.8, 192, 2004, 'https://www.imdb.com/title/tt0420332/', 'https://m.media-amazon.com/images/M/MV5BMmI0ODNhYmEtOWM4My00MmFlLTk4ZmEtYmQ2MmNjODcxNzU2XkEyXkFqcGc@._V1_.jpg'),
('Chak De! India', 'Biography, Drama, Sport', 8.1, 153, 2007, 'https://www.imdb.com/title/tt0871510/', 'https://m.media-amazon.com/images/M/MV5BMjYyOTdmYTYtYjQ4Ni00ZmFiLWJlZjYtZmJkNDI5MmNlNjMyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Heyy Babyy', 'Comedy, Drama, Family', 6.1, 144, 2007, 'https://www.imdb.com/title/tt0806088/', 'https://m.media-amazon.com/images/M/MV5BMGUxMDY4NGQtMzdmMC00MDNhLWE4OWItMjU3YzgxNjdlN2Q4XkEyXkFqcGc@._V1_.jpg'),
('Om Shanti Om', 'Comedy, Drama, Musical', 6.8, 162, 2007, 'https://www.imdb.com/title/tt1024943/', 'https://i.pinimg.com/originals/f2/c4/d0/f2c4d07f68cd4d33790ea3e11a305915.jpg'),
('Shaurya', 'Drama, War', 7.2, 149, 2008, 'https://www.imdb.com/title/tt1101665/', 'https://m.media-amazon.com/images/M/MV5BZmVkYzVhZTMtMWM1MC00MDY5LThkOWYtOGZjMTFiMWU5MWNhXkEyXkFqcGc@._V1_.jpg'),
('Bhoothnath', 'Comedy, Drama, Family', 6.4, 150, 2008, 'https://www.imdb.com/title/tt0991346/', 'https://m.media-amazon.com/images/M/MV5BMWVhYmJhNGUtOTQ2My00YTlmLTlmMDUtY2RlYmQwNWRjNmI5XkEyXkFqcGc@._V1_.jpg'),
('Billu', 'Comedy, Drama, Music', 6.4, 137, 2009, 'https://www.imdb.com/title/tt1230448/', 'https://m.media-amazon.com/images/M/MV5BYTMyMGQyMzktNDUyMC00ZTY3LWIxNjktOTI0ODMzYTBlMDdkXkEyXkFqcGc@._V1_.jpg'),
('Ra.One', 'Action, Sci-Fi, Thriller', 4.9, 156, 2011, 'https://www.imdb.com/title/tt1562871/', 'https://m.media-amazon.com/images/M/MV5BMzcyMjMxOTg4MF5BMl5BanBnXkFtZTcwNzEwMDE5Ng@@._V1_FMjpg_UX1000_.jpg'),
('Don 2', 'Action, Crime, Drama', 7.1, 148, 2011, 'https://www.imdb.com/title/tt1285241/', 'https://m.media-amazon.com/images/M/MV5BOTc3YmI2OTgtMTBmMi00Y2FmLWJjNGUtZTJjOGI1NDVlMDY5XkEyXkFqcGc@._V1_.jpg'),
('Jab Tak Hai Jaan', 'Drama, Romance', 6.7, 176, 2012, 'https://www.imdb.com/title/tt2176013/', 'https://m.media-amazon.com/images/M/MV5BMTUyMzM5OTM5NF5BMl5BanBnXkFtZTcwNTIwMjA3OA@@._V1_.jpg'),
('Chennai Express', 'Action, Comedy, Romance', 6.2, 141, 2013, 'https://www.imdb.com/title/tt2112124/', 'https://m.media-amazon.com/images/M/MV5BMjE2OTEyOTA3OV5BMl5BanBnXkFtZTcwNjI4MDk3OQ@@._V1_.jpg'),
('Aashiqui 2', 'Drama, Romance', 7.1, 134, 2013, 'https://www.imdb.com/title/tt2203308/', 'https://m.media-amazon.com/images/M/MV5BN2M2MjQwZmQtMWQ5ZS00NmYwLWEwZmMtZmM1ZWM3MGMzOGU3XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Haider', 'Crime, Drama, Thriller', 8.0, 158, 2014, 'https://www.imdb.com/title/tt3390572/', 'https://m.media-amazon.com/images/M/MV5BMjA1NTEwMDMxMF5BMl5BanBnXkFtZTgwODkzMzI0MjE@._V1_FMjpg_UX1000_.jpg'),
('Ek Villain', 'Action, Comedy, Drama', 6.6, 140, 2014, 'https://www.imdb.com/title/tt3175038/', 'https://m.media-amazon.com/images/M/MV5BMjU2MTEwNzE0N15BMl5BanBnXkFtZTgwODgyNjMxMjE@._V1_.jpg'),
('Chhichhore', 'Comedy, Drama, Sport', 8.3, 144, 2019, 'https://www.imdb.com/title/tt9052870/', 'https://m.media-amazon.com/images/M/MV5BMjFkYThiNDMtMmFhYS00ZjQ5LWJjZjMtZmQ3ODAxYmIwM2RlXkEyXkFqcGc@._V1_.jpg'),
('Stree 2: Sarkate Ka Aatank', 'Horror, Comedy,Fantasy', 6.9, 120, 2024, 'https://www.imdb.com/title/tt27510174/', 'https://m.media-amazon.com/images/M/MV5BMTA1NmUxYzItZmVmNy00YmQxLTk4Y2UtZjVkMWUwMWQ5N2IxXkEyXkFqcGc@._V1_.jpg'),
('Bhediya', 'Comedy, Horror', 6.7, 143, 2022, 'https://www.imdb.com/title/tt14099334/', 'https://m.media-amazon.com/images/M/MV5BYTIxYjUxMTAtNDM5Zi00ZWU1LThhZDMtNDU5ZjEwMzhjMzVmXkEyXkFqcGc@._V1_.jpg'),
('Baaghi 3', 'Action, Thriller', 2.2, 146, 2020, 'https://www.imdb.com/title/tt8366590/', 'https://m.media-amazon.com/images/M/MV5BNjY1OWY0NTctOGMwZC00YWIzLWE1NzQtYzM3MzM3YTg1ZTY2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Street Dancer 3D', 'Drama, Musical', 3.7, 145, 2020, 'https://www.imdb.com/title/tt9648672/', 'https://m.media-amazon.com/images/M/MV5BODI4Y2U2YWUtYmNmZS00YWQ4LTlhZWEtNWI0ZTc2MmQzMTJiXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Pyaar Ka Punchnama', 'Comedy, Romance', 7.0, 109, 2011, 'https://www.imdb.com/title/tt1998729/', 'https://m.media-amazon.com/images/M/MV5BMWEzM2I5OGYtODI1NS00OWJlLWIxY2MtM2MyMTlmZjMwM2I4XkEyXkFqcGc@._V1_.jpg'),
('Sonu Ke Titu Ki Sweety', 'Comedy, Drama, Romance', 6.6, 136, 2018, 'https://www.imdb.com/title/tt7137380/', 'https://m.media-amazon.com/images/M/MV5BNmM0ZjFkOTAtNmVjMi00NmExLTk2MzItZWNmNWFhYzNmMjY2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Luka Chuppi', 'Comedy, Romance', 6.7, 107, 2019, 'https://www.imdb.com/title/tt8108208/', 'https://m.media-amazon.com/images/M/MV5BZWQ5MjlhNjktNWZkZi00YjdkLThlNWQtOGRlZmJmZGMwMmE2XkEyXkFqcGc@._V1_.jpg'),
('Bhool Bhulaiyaa 2', 'Comedy, Horror, Thriller', 5.4, 138, 2022, 'https://www.imdb.com/title/tt12049750/', 'https://m.media-amazon.com/images/M/MV5BOTZhY2NjMGItODAyOS00MGVlLTk5ZDYtNzBjMjQ3ZDdkYmZmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Dunki', 'Comedy, Drama', 7.1, 138, 2023, 'https://www.imdb.com/title/tt14829958/', 'https://m.media-amazon.com/images/M/MV5BMThhZjM4M2UtYmE1NC00YTMzLTk3ZTAtNmQ1ZmI4YmRmZGE1XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Pati Patni Aur Woh', 'Comedy, Romance, Drama', 5.8, 126, 2019, 'https://www.imdb.com/title/tt9680136/?ref_=ls_t_8', 'https://m.media-amazon.com/images/M/MV5BYTAyNmY3OTgtZjNmZi00MzFhLWJjOWItMDgzNjZiMTAyZmNlXkEyXkFqcGc@._V1_.jpg'),
('Love Aaj Kal', 'Romance, Drama', 4.7, 142, 2020, 'https://www.imdb.com/title/tt10023024/?ref_=ls_t_9', 'https://m.media-amazon.com/images/M/MV5BZjAyMTc5N2ItZGJlMy00YzNkLTg3MjUtZDRjOTg2MmYwNmJlXkEyXkFqcGc@._V1_.jpg'),
('Dhamaka', 'Thriller, Drama', 6.7, 103, 2021, 'https://www.imdb.com/title/tt13510660/?ref_=ls_t_10', 'https://m.media-amazon.com/images/M/MV5BNzc3OWNkNTktNGVkZi00ZWIyLWIxNDMtMDVlM2E4MDJlYjYzXkEyXkFqcGc@._V1_.jpg'),
('Bhool Bhulaiyaa 3', 'Comedy, Horror, Fantasy', 4.6 , 158, 2024, 'https://www.imdb.com/title/tt26932223/?ref_=ls_t_16', 'https://m.media-amazon.com/images/M/MV5BMGFhMDQ4MzMtMTUxOC00NDE0LTkzZWMtMzhhMGNiMDlhNDNmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Freddy', 'Thriller, Romance', 7.3, 124, 2022, 'https://www.imdb.com/title/tt15145764/?ref_=ls_t_12', 'https://m.media-amazon.com/images/M/MV5BODRlMDU2MWQtNDUwNy00ODlmLWJiMzgtOTlmNzFjNGM2MGIxXkEyXkFqcGc@._V1_.jpg'),
('Shehzada', 'Action, Comedy, Drama', 4.5, 142, 2023, 'https://www.imdb.com/title/tt13130948/?ref_=ls_t_13', 'https://m.media-amazon.com/images/M/MV5BN2U5YTY1MGEtYjZkZi00YTQwLThkMzMtN2Q2ZDk1M2MyNTYzXkEyXkFqcGc@._V1_.jpg');


CREATE TABLE ratings (
    user_id INT,
    movie_id INT,
    rating FLOAT
);

INSERT INTO ratings (user_id, movie_id, rating) VALUES
(1, 1, 4.5),
(2, 1, 4.0),
(3, 2, 3.5),
(4, 2, 4.2),
(5, 3, 4.0),
(6, 3, 3.8);

SELECT * FROM ratings WHERE movie_id = 1;

