      <style type="text/css">
      body {
    width: 1000px;
    margin: auto;
    font-family: Microsoft YaHei;
    color: #033657;
   }
     table {
      max-width: 1000px;
      color: #033657;
     }
     table td, th {
      border: 1px solid #033657;
      border-radius: 3px;  
      padding: 5px;   
     }
     #add {
      margin-bottom: 10px;
     }
     #name {
      float: right;
     }
     #name a {
      text-decoration: none;
     }
     h3 {
      float: left;
     }
     #main_p {
      margin-left: 20px;
     }
   </style>
   <?php 
   if ($_GET['lang'] == 'kz') {
          $bn = 'school27kz';
          $lang = 'kz';
      } else {
          $bn = 'school27ru';
          $lang = 'ru';
      }
       ?>
      <H3>Панель админа</H3><br><a id="main_p" href="../"> Главная</a>
      <span id="name"><?php echo $_SESSION['name']; ?> | <a href="index.php?panel=logout">Выход</a> </span> 
      <br><br>
      <a href="index.php?panel=add" id="add">Добавить</a><br><br>
      <?php 
      require('../connect.php');
         
                $query = mysql_query("SELECT * FROM content" );

      ?>
      <table>
         <tr>
            <th>Главный меню</th>
            <th>Под меню</th>
            <th>Заголовок</th>
            <th>Дата</th>
            <th></th>
            <th></th>
         </tr>
         <?php while($myrow = mysql_fetch_array($query)) {
                $num = $myrow['main'];
                $num2 = $myrow['menu'];              
                $query2 = mysql_query("SELECT * FROM menu WHERE id like '%$num%'" );
                $myrow2 = mysql_fetch_array($query2);
                $menu_arr = explode(';',$myrow2['menu']);

          ?>
         <tr>
            <td><?=$myrow2["main"] ?></td>
            <td><?=$menu_arr[$num2-1] ?></td>
            <td><?=$myrow["caption"] ?></td>
            <td><?=$myrow["date"] ?></td>
            <td><a href="<?php 
            echo 'index.php?panel=edit&id='.$myrow['id'].'&lang='.$lang.'' 
            ?>">Редактировать</a></td>
            <td><a href="<?php 
            echo 'index.php?panel=delete&id='.$myrow['id'].'&lang='.$lang.'' 
            ?>">Удалить</a></td>
         </tr>
         <?php } ?>
      </table>
      <section id="lang">
            <a href="<?php echo str_replace('kz','ru',$_SERVER['REQUEST_URI']); ?>" title="Русский">РУС</a>
            <a href="<?php

            if (($_SERVER['REQUEST_URI']=='/admin/load.php') or ($_SERVER['REQUEST_URI']=='/admin/') or ($_SERVER['REQUEST_URI']=='/admin/index.php')) {
              echo "load.php?lang=kz";
            } else {
             echo str_replace('ru','kz',$_SERVER['REQUEST_URI']);
           }

             ?>" title="Qazaqs'a" onclick="document.location.reload()">QAZ</a>
          </section>