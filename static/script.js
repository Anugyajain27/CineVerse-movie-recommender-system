// Splash screen logic
window.onload = function () {
  setTimeout(() => {
    document.getElementById("splash").style.display = "none";
    document.getElementById("main").classList.remove("hidden");
  }, 5000);
};

// Fetch and display movies
function getMovies() {
  const genre = document.getElementById("genreInput").value.trim();
  if (!genre) {
    alert("Please enter a genre.");
    return;
  }

  fetch(`/recommend?genre=${encodeURIComponent(genre)}`)
    .then(res => res.json())
    .then(data => {
      showMovies(data.movies_by_genre || []);
      document.getElementById("main").classList.add("hidden");
      document.getElementById("results").classList.remove("hidden");
    })
    .catch(err => {
      console.error("Error:", err);
      alert("Failed to fetch movies.");
    });
}

// Show movies as cards
function showMovies(movies) {
  const movieList = document.getElementById("movie-list");
  movieList.innerHTML = "";

  if (movies.length === 0) {
    movieList.innerHTML = "<p>No movies found for this genre.</p>";
    return;
  }

  movies.forEach(movie => {
    const movieCard = document.createElement("div");
    movieCard.className = "movie-card";
    movieCard.innerHTML = `
      <img src="${movie.image_url}" alt="${movie.title}" class="movie-poster">
      <div class="movie-info">
        <h3>${movie.title}</h3>
        <p><strong>Genre:</strong> ${movie.genre}</p>
        <p><strong>Rating:</strong> ${movie.rating}</p>
        <p><strong>Year:</strong> ${movie.year}</p>
        <p><strong>Duration:</strong> ${movie.duration} mins</p>
      </div>
    `;

    // Add modal popup trigger
    movieCard.onclick = () => openModal(movie);
    movieList.appendChild(movieCard);
  });
}

function renderMovies(movies) {
  const container = document.getElementById('movie-container');
  container.innerHTML = ''; // Clear previous

  movies.forEach(movie => {
    const card = document.createElement('div');
    card.className = 'movie-card';
    card.innerHTML = `
      <img src="${movie.image_url}" alt="${movie.title}" />
      <h3>${movie.title}</h3>
    `;
    card.addEventListener('click', () => openModal(movie));
    container.appendChild(card);
  });
}

// Show movie popup
function openModal(movie) {
  document.getElementById("modal-image").src = movie.image_url;
  document.getElementById("modal-title").innerText = movie.title;
  document.getElementById("modal-genre").innerText = "Genre: " + movie.genre;
  document.getElementById("modal-rating").innerText = "Rating: " + movie.rating;
  document.getElementById("modal-year").innerText = movie.year;
  document.getElementById("modal-duration").innerText = "Duration: " + movie.duration + " mins";
  document.getElementById("modal-imdb").href = movie.imdb_url;
  document.getElementById("movie-modal").classList.remove("hidden");
}


function closeModal() {
  document.getElementById("movie-modal").classList.add("hidden");
}


// Back button
function goBack() {
  document.getElementById("results").classList.add("hidden");
  document.getElementById("main").classList.remove("hidden");
}

//// Show splash screen for 5 seconds, then reveal main content
//window.onload = function () {
//  setTimeout(() => {
//    document.getElementById("splash").style.display = "none";
//    document.getElementById("main").classList.remove("hidden");
//  }, 5000);  // ⏳ Splash duration
//};
//
//// Fetch movies from Flask backend based on user-input genre
//function getMovies() {
//  const genre = document.getElementById("genreInput").value.trim();
//
//  if (!genre) {
//    alert("Please enter a genre.");
//    return;
//  }
//
//  fetch(`http://127.0.0.1:5000/recommend?genre=${encodeURIComponent(genre)}`)
//    .then(response => {
//      if (!response.ok) {
//        throw new Error(`HTTP error! Status: ${response.status}`);
//      }
//      return response.json();
//    })
//    .then(data => {
//      console.log("Received data:", data);
//      showMovies(data.movies_by_genre || []);
//    })
//    .catch(err => {
//      console.error("Error fetching movies:", err);
//      alert("Failed to fetch movies. Is the backend running?");
//    });
//}
//
//// Display movies as cards with click-to-view modal
//function showMovies(movies) {
//  const movieList = document.getElementById("movie-list");
//  movieList.innerHTML = ""; // Clear previous content
//
//  if (movies.length === 0) {
//    movieList.innerHTML = "<p>No movies found for this genre.</p>";
//    return;
//  }
//
//  movies.forEach(movie => {
//    const movieCard = document.createElement("div");
//    movieCard.className = "movie-card";
//    movieCard.innerHTML = `
//      <h3>${movie.title}</h3>
//      <p><strong>Genre:</strong> ${movie.genre}</p>
//      <p><strong>Rating:</strong> ${movie.rating}</p>
//      <p><strong>Duration:</strong> ${movie.duration} mins</p>
//    `;
//
//    movieCard.addEventListener("click", () => openModal(movie));
//    movieList.appendChild(movieCard);
//  });
//}
//
//// Open modal popup with full movie details
//function openModal(movie) {
//  document.getElementById("modal-image").src = movie.image_url || "https://via.placeholder.com/300x400";
//  document.getElementById("modal-title").innerText = movie.title;
//  document.getElementById("modal-genre").innerText = "Genre: " + movie.genre;
//  document.getElementById("modal-rating").innerText = "Rating: " + movie.rating;
//  document.getElementById("modal-duration").innerText = "Duration: " + movie.duration + " mins";
//
//  document.getElementById("movie-modal").classList.remove("hidden");
//}
//
//// Close modal
//function closeModal() {
//  document.getElementById("movie-modal").classList.add("hidden");
//}
