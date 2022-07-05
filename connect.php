<?php 
$str = $_SERVER['REQUEST_URI'];
$bn = 'school27'.$_GET['lang'];
if(stristr($str, 'lang') === false) {
	$bn = 'school27ru';
}

$link = mysqli_connect("localhost",'root', 'root', "school27");

if (!$link) {
    echo "Ошибка: Невозможно установить соединение с MySQL." . PHP_EOL;
    echo "Код ошибки errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Текст ошибки error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

/*
$connection = mysqli_connect("localhost",'root', '');
      $bd = mysql_select_db($bn);
      mysql_query("SET NAMES 'utf8' ");
      if (!$connection || $db){
        exit(mysql_error());
      
} */