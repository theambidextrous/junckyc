<?php
//constant
session_start();
define('SYSTEM_NAME', 'Junky Cinema');
define('SYSTEM_TAGLINE', 'The ultimate leading platform for online movie booking');
define('BASE_URL', 'http://localhost/imovies/');
define('DB', 'imovies');
define('DB_USER', 'imovies');
define('DB_PASS', 'Areacode254');
//db connection
function connection(){
    return $conn = new mysqli('localhost', DB_USER, DB_PASS, DB, 3306);
}

function getMovies($id = 0){
    if($id == 0 ){
        $arrr = [];
        $query = 'SELECT `MovieId`, `Title`, `Banner`, `Plot`, `Trailer`, `Writers`, `Directors`, `Cast`, `ReleaseDate`, `Ratings`, `Status` FROM `movies`';
        $resp = mysqli_query( connection(), $query);
        while($data = $resp->fetch_assoc()){
            array_push($arrr, $data);
        }

        return $arrr;

    }else{
        $arrr = [];
        $query = "SELECT `MovieId`, `Title`, `Banner`, `Plot`, `Trailer`, `Writers`, `Directors`, `Cast`, `ReleaseDate`, `Ratings`, `Status` FROM `movies` WHERE MovieId = '$id'";
        $resp = mysqli_query( connection(), $query);
        $arrr = $resp->fetch_assoc();
        return $arrr;
    }
}
function getShowtimes($movieid, $day){
    $arrr = [];
        $query = "SELECT `ShowtimeId`, `Date`, `Time`, `Status`, `MovieId`, `HallId` FROM `showtime` WHERE `MovieId` = '$movieid' AND `Date` = '$day'";
        $resp = mysqli_query( connection(), $query);
        while($data = $resp->fetch_assoc()){
            array_push($arrr, $data);
        }

        return $arrr;
}
function getShowDates($movieid){
        $query = "SELECT GROUP_CONCAT(DISTINCT(`Date`)) as dates FROM `showtime` WHERE `MovieId` = '$movieid' order by Date asc ";
        $resp = mysqli_query( connection(), $query);
        $data = $resp->fetch_assoc();
        return $data;
}
function getTickets($showid){
    $arrr = [];
    $query = "SELECT `TicketId`, `TicketName`, `TicketPrice`, `TicketMax`, `Status`, `ShowtimeId` FROM `ticket` WHERE `ShowtimeId` = '$showid'";
    $resp = mysqli_query( connection(), $query);
    while($data = $resp->fetch_assoc()){
        array_push($arrr, $data);
    }

    return $arrr; 
}


?>