<?php
session_start();
     // require('../connect.php');
      $connection = mysql_connect("localhost",'root', '');
      $bd = mysql_select_db('school27ru');
      mysql_query("SET NAMES 'utf8' ");
      if (!$connection || $db){
        exit(mysql_error());
      
      } 

      $login = $_POST['login']; 
      $pass = $_POST['pass']; 
      $bool = false;
      $table_count = mysql_fetch_array( mysql_query("SELECT COUNT(1) FROM logins"));
      for ($num=1; $num <= $table_count[0];$num++) {

        $query = mysql_query("SELECT * FROM logins WHERE id like '%$num%'" );
        $myrow = mysql_fetch_array($query);  
        $log = $myrow['login'];
        $pas = $myrow['pass'];  
          if ($login == $log) {
            if ($pass == $pas) {
                $bool = true;
                $_POST['true'] = 'true';
                $_SESSION['auth'] = 'true';
                $_SESSION['name'] = $myrow['name'];
                include('index.php');
                break;
              }
           }
        }   
        if ($bool == false) {
          $_POST['true'] = 'Неверный логин или пароль'; 
          include('index.php');
        }
    ?>  