<?php 
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Школа №27 г. Темиртау</title>
    <link rel="icon" href="images/ico.png">
    <meta name="keywords" content="Перечень ключевых слов">
    <meta name="description" content="ОФициальный сайт Школы №27 города Темиртау">
    <link rel="stylesheet" type="text/css" href="style/index.css">
  </head>
  <?php
      if ($_GET['lang'] == 'kz') {
          $bn = 'school27kz';
          $lang = 'kz';
      } else {
          $bn = 'school27ru';
          $lang = 'ru';
      }
      /*
      $connection = mysql_connect("localhost",'root', '');
      $bd = mysql_select_db($bn);
      mysql_query("SET NAMES 'utf8' ");
      if (!$connection || $db){
        exit(mysql_error());
      } */
      require('connect.php');

        $query = mysqli_query($link,"SELECT * FROM main" );
        $myrow = mysqli_fetch_array($query);
        $city = $myrow['city'];
        $name = $myrow['name'];
        $search = $myrow['search'];
   ?> 
  <body>
    <header>
      <center><img id="header_img" src="images/header2.png"></center>
      <section id="center">
        <section id="header">

          <section id="header_n">
            <p><?php echo $city; ?></p>
            <h1><?php echo $name; ?></h1>
          </section>

          <section id="search">
          <form method="post" action="<?php echo 'index.php?lang='.$lang.'&page=search'; ?>">
            <input type="text" name="search">
            <input type="submit" onclick=""  name="search_btn" value="<?php echo $search; ?>">';
            </form>
          </section>
          <section id="lang">
          	<a href="<?php echo str_replace('kz','ru',$_SERVER['REQUEST_URI']); ?>" title="Русский">РУС</a>
          	<a href="<?php

            if ($_SERVER['REQUEST_URI']=='/') {
              echo "index.php?lang=kz";
            } else {
             echo str_replace('ru','kz',$_SERVER['REQUEST_URI']);
           }

             ?>" title="Qazaqs'a" onclick="document.location.reload()">QAZ</a>
          </section>  

        </section>
          <a id="ad_pl" href="admin">Вход</a>
      </section>
    </header>

    <section id="body">
    	<section id="menu">
    		<ul id = 'nav'>
                <?php  
                $table_count = mysqli_fetch_array( mysqli_query($link, "SELECT COUNT(1) FROM menu"));
                    for ($num=1; $num <= $table_count[0];$num++) {

                    $query = mysqli_query($link, "SELECT * FROM menu WHERE id like '%$num%'" );
                    $myrow = mysqli_fetch_array($query);
                    $id = $myrow['id'];    
                    $main = $myrow['main']; 
                    echo "<li><a href='index.php?lang=".$lang."&page=".$num."&menu=0'>".$main."</a>";    

                    if (!empty($myrow['menu'])) {
                        $menu_arr = explode(';',$myrow['menu']);
                        echo "<ul id=in_nav>";
                        $menu = '';
                        for ($i=0; $i <= sizeof($menu_arr)-2;$i++) {
                        $menu.="<li><a href='index.php?lang=".$lang."&page=".$num."&menu=".($i+1)."'>".$menu_arr[$i]."</a></li>";
                        }
                        echo $menu."</ul>";
                    }  
                    echo "</li>";                  
                }
                 
                ?>      
            </ul>
    	</section>
        <?php
            $page = $_GET['page'];            
            $id = $_GET['id'];
            if (!isset($page)) {
                echo "<section id = 'cpanel'>";
              require('main_index.php');
                echo "</section>";
              } else {
                echo "<section id = 'cpanel'>";
                if ($page == 'content') {
                  require('cbody.php');
                } elseif ($page == 'search') {
                  require('search.php');
              }else {
                require('body.php');
              }
                echo "</section>";
              }
            




            require('calendare.php');
          ?>
        
    </section>

    <footer>
    	<section>
      </section>
    </footer>
    <?php mysqli_close($link); ?>
  </body>
</html>