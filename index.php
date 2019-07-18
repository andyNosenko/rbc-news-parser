<?php
/**
 * Created by PhpStorm.
 * User: Андрей
 * Date: 12.07.2019
 * Time: 1:34
 */
//Connect to db
$con = mysqli_connect("localhost", "root", "", "rbk");

// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$sql = "SELECT * FROM news";
$result = $con->query($sql);

//Fetch data
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_object($result)) {
        ?>
        <p><a href="view_news.php?id=<? echo $row->id; ?>"><? echo $row->title; ?></a></p>
        <br>
        <p><? echo mb_strimwidth($row->description, 0, 200, "...");?></p>
        <br>
        <p><? echo $row->date; ?> || <a href="view_news.php?id=<? echo $row->id; ?>">Читать подробнее</a></p>
        <hr>
        <?
    }
}else {
    ?>
    <p>No news in the database</p>
<? }
   mysqli_close($con);
?>
