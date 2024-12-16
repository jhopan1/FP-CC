<!DOCTYPE html>
<!-- Coding By CodingNepal - www.codingnepalweb.com -->
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Author</title>
  <!-- Linking SwiperJS CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <link rel="stylesheet" href="css/author.css">
  
</head>
<body>
  <div class="container swiper">
    <div class="slider-wrapper">
      <div class="card-list swiper-wrapper">
      <!-- Card 1 -->
      <div class="card-item swiper-slide">
          <img src="asset/gilang.jpeg" alt="" class="user-image">
          <h2 class="user-name">Achmad Gilang R.</h2>
          <p class="user-profession">Deploy Web</p>
          <div class="media-icons">
             <a href="https://www.instagram.com/glng.rmdnn"><i class="fab fa-instagram"></i></a>
           </div>
        </div>

        <!-- Card 2 -->
        <div class="card-item swiper-slide">
          <img src="asset/rais.jpeg" alt="" class="user-image">
          <h2 class="user-name">M. Mujahiddin Rais</h2>
          <p class="user-profession">FrontEnd</p>
          <div class="media-icons">
             <a href="https://www.instagram.com/raizrich27"><i class="fab fa-instagram"></i></a>
           </div>
        </div>

        <!-- Card 3 -->
        <div class="card-item swiper-slide">
          <img src="asset/dimas.jpeg" alt="" class="user-image">
          <h2 class="user-name">Dimas Apria Yudha</h2>
          <p class="user-profession">BackEnd</p>
          <div class="media-icons">
             <a href="https://www.instagram.com/aapria._"><i class="fab fa-instagram"></i></a>
           </div>
        </div>

        <!-- Card 4 -->
        <div class="card-item swiper-slide">
          <img src="asset/dhani.jpeg" alt="User Image" class="user-image">
          <h2 class="user-name">Dhani Jamiatul Hikmah</h2>
          <p class="user-profession">Database</p>
          <div class="media-icons">
             <a href="https://www.instagram.com/dhanjmh"><i class="fab fa-instagram"></i></a>
           </div>
        </div>
      </div>

      <div class="swiper-pagination"></div>
      <div class="swiper-slide-button swiper-button-prev"></div>
      <div class="swiper-slide-button swiper-button-next"></div>
    </div>
  </div>

  <!-- Linking SwiperJS script -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

  <!-- Linking custom scripts -->
  <script src="js/script.js"></script>
  <script src="js/author.js"></script>
</body>
</html>