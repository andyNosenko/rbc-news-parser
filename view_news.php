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
//Get news id from index.php
$news_id = $_GET['id'];

$sql = "SELECT * FROM news WHERE id = $news_id ";
$result = $con->query($sql);

//Fetch data
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_object($result)) {
        ?>
        <h1><? echo $row->title; ?></h1>
        <br>
        <? if(!empty($row->image)) {?>
            <img src="<? echo $row->image?>" alt="">
        <?}?>
        <p><? echo $row->description; ?></p>
        <br>
        <p><? echo $row->date; ?> || <a href="<? echo $row->url; ?>">Источник новости</a></p>
        <hr>
        <?
    }
}else {
    ?>
    <p>No news in the database</p>
<? }
   mysqli_close($con);
?>
