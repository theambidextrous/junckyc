
<?php
require_once('config/config.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><?=SYSTEM_NAME?></title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/business-frontpage.css" rel="stylesheet">
<style>
.pb-5, .py-5 {
    padding-bottom: 1rem!important;
}

.pt-5, .py-5 {
    padding-top: 1rem!important;
}
.mb-5, .my-5 {
    margin-bottom: 1rem!important;
}
</style>
</head>

<body>

  
  <?php
  require_once('config/nav.php');
  ?> 
  <!-- Header -->
  <header class="bg-primary py-5 mb-5">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12">
          <h1 class="display-4 text-white mt-5 mb-2"> Welcome To <?=SYSTEM_NAME?></h1>
          <p class="lead mb-5 text-white-50"><?=SYSTEM_TAGLINE?></p>
        </div>
      </div>
    </div>
  </header>

  <!-- Page Content -->
  <div class="container">

    <div class="row">
      <div class="col-md-12 mb-5">
        <h2>Now Showing</h2>
        <hr>
        <p></p>
      </div>
      <!-- <div class="col-md-4 mb-5">
        <h2>Contact Us</h2>
        <hr>
        <address>
          <strong>Start Bootstrap</strong>
          <br>3481 Melrose Place
          <br>Beverly Hills, CA 90210
          <br>
        </address>
        <address>
          <abbr title="Phone">P:</abbr>
          (123) 456-7890
          <br>
          <abbr title="Email">E:</abbr>
          <a href="mailto:#">name@example.com</a>
        </address>
      </div> -->
    </div>
    <!-- /.row -->

    <div class="row">
    <?php 
    $movies_data = getMovies();
    foreach( $movies_data as $md ):
    ?>
      <div class="col-md-2 mb-5">
        <div class="card h-100">
          <img class="card-img-top" src="images/movies/<?=$md['Banner']?>" alt="">
          <div class="card-body">
            
            <p class="card-text"><?=ucwords($md['Title'])?></p>
          </div>
          <div class="card-footer">
            <a href="movie_details.php?id=<?=$md['MovieId']?>" class="btn btn-primary">Showtimes</a>
          </div>
        </div>
      </div>
      <?php 
      endforeach ; 
      ?>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
<?php
require_once('config/footer.php');
?>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
