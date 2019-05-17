
<?php
require_once('config/config.php');
$ticketsData = getTickets($_REQUEST['show'])[0];
$_SESSION['SHOW'] = $_REQUEST['show'];
//print_r($ticketsData);
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><?=SYSTEM_NAME?> | Select Tickets</title>

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
  <!-- Page Content -->
  <div class="container">
  <!-- title -->
    <div class="row">
        <div class="col-md-12 mb-5">
            <h2>Select Tickets</h2>
        <hr>
        </div>
    </div>
<!-- tickets info  -->
    <div class="row" style="min-height:500px;">
      <div class="col-md-12 mb-5">
      <form>
        <div class="form-group">
            <input type="hidden" name="ticketid" value="<?=$ticketsData['TicketId']?>"/>
            <input type="hidden" name="showid" value="<?=$_SESSION['SHOW']?>"/>
            <label for="exampleFormControlSelect1">Ticket Name: <b><?=$ticketsData['TicketName']?></b> <br>Price: <b>KES <?=$ticketsData['TicketPrice']?></b></label>
            <select name="quantity" class="form-control" id="exampleFormControlSelect1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>
            </select>
        </div>
        <div class="form-group">
            <button name="next" type="submit" class="btn btn-warning mb-2">Select seats</button>
        </div>

    </form>
      </div>
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
