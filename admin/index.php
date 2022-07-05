<?php 
session_start();
?>
<!DOCTYPE html>
<html>
   <head>
      <title>Admin panel</title>
    <link rel="icon" href="../images/ico.png">
   </head>
   <style type="text/css">
   body {
    width: 1000px;
    margin: auto;
    font-family: Microsoft YaHei;
    color: #033657;
   }
     
    .bor {          
          border: 1px solid #033657;
          border-radius: 3px;
          padding: 3px;
          color: #033657;
          margin-bottom: 20px;
        }
   </style>
   <body>

   <?php
     $panel = $_GET['panel'];

            if ($_SESSION['auth'] == 'true') {
              if (!isset($panel)) {
              require('admin.php');
              }
              if ($panel == 'delete') {                
                $_POST['id'] = $_GET['id'];
                echo '<script>var resultActionUser = confirm("Удалить?");if (resultActionUser) { window.location.href="delete.php?id='.$_GET["id"].'&lang='.$_GET["lang"].'" }else { document.getElementById("resultConfirm").innerHTML = window.location.href="index.php";}</script> ';
              }
              if ($panel == 'logout') {
                session_destroy();
                echo("<script>location.href='index.php'</script>");
                //require('login.php');
              }
              if ($panel == 'add') {
                require('add.php');
              }
              } elseif (!isset($panel)) {
              require('login.php');
              }
              if ($panel == 'edit') {
                require('edit.php');
              }

          ?>
   </body>
</html>