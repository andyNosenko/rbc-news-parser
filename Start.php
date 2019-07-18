<?php
/**
 * Created by PhpStorm.
 * User: Андрей
 * Date: 05.07.2019
 * Time: 10:34
 * Run this file to parse news from rbc.ru
 */
require_once('simplehtmldom_1_9/simple_html_dom.php');

// Create DOM from URL or file
$html = file_get_html('https://www.rbc.ru/');

// creating an array of elements
$records = [];
$records_details = [];

// Find top ten videos
$i = 1;
foreach ($html->find('a.news-feed__item') as $news) {
    if ($i > 15) {
        break;
    }

    // Find item link element
    $newsUrl = $news->href;

    // Get title
    $newsTitle = $news->find('span.news-feed__item__title', 0)->plaintext;

    // Get date
    $newsDate = $news->find('span.news-feed__item__date-text', 0)->plaintext;




    // push to a list of news
    $records[] = [
        'url' => $newsUrl,
        'title' => trim($newsTitle),
        'date' => $newsDate
    ];

    $i++;
}



foreach ($records as $record) {

    //Single news
    $newsSrc = file_get_html($record["url"]);


    foreach ($newsSrc->find('div.article__text') as $single_news) {
        //Single news description
        $newsDescription = $single_news->find('div.article__text__overview>span', 0)->plaintext;

        //Single news image
        $newsImg = $single_news->find('div.article__main-image>div.article__main-image__wrap>img', 0)->src;

       if(empty($newsDescription)) {
            $newsDescription = $record['title'];
        }

    }

    //push to a list of news details


    $records_details[] = [
        'url' => $record["url"],
        'title' => $record['title'],
        'date' => $record['date'],
        'description' => $newsDescription,
        'image' => $newsImg
    ];
}
//Console debug
var_dump($records);
var_dump($records_details);

//Connect to db
$con = mysqli_connect("localhost", "root", "", "rbk");

// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

foreach ($records_details as $record_detail) {
    //Initialize values for each news
    $url = $record_detail["url"];
    $title = $record_detail["title"];
    $date = $record_detail["date"];
    $description = $record_detail["description"];
    $image = $record_detail["image"];

    //Sql query for insert data
    $sql = "INSERT INTO news (url, title, `date`, description, image) VALUES ('$url', '$title', '$date', '$description', '$image')";

    if (!mysqli_query($con,$sql)) {
        die('Error: ' . mysqli_error($con));
    }
}

mysqli_close($con);
