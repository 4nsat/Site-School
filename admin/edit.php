 <style type="text/css">
        textarea {
          width: 1000px;
          max-width: 1000px;
          height: 200px;
        }
        #btn:hover {
          background: #fff;
          cursor: pointer;
        }
        .x_img {
          cursor: pointer;
          position: relative;
          left: 50px;
        }
        .x_img_txt {
          cursor: pointer;
          position: relative;
          top: -253px;
          left: 1000px;
        }
      </style>

      <H3><a href="../admin"> < </a> Редактирование записей</H3>
      <?php 
              
      require('../connect.php');
      $id2 = $_GET['id'];
      $query = mysql_query("SELECT * FROM content WHERE id like '%$id2%'" );
      $myrow = mysql_fetch_array($query);
      $m1 = $myrow['main'];
      $m2 = $myrow['menu'];
      $cap = $myrow['caption'];
      $txt = $myrow['text'];
      echo $id2;
      ?>   
      
      <script type="text/javascript" src = '../js/jquery-3.3.1.min.js'></script>
      <script src="../js/tinymce/Gruntfile.js"></script>  
      <script src="../js/tinymce/js/tinymce/tinymce.js"></script>
      <script>
      var i=0;
      tinymce.init({
        selector: "textarea",  // change this value according to your HTML
        language: "ru",
        
        setup: function (ed) {
              // on mouse uo get selected text
              
          }
          });


            $(function () {
                $("#btn_img").click(function (event) {
                  tinymce.activeEditor.insertContent('<p style = "color: red;"> Image </p><br>');
            });
      });

          function add_img() {
            i++;
              document.getElementById("add_panel").innerHTML += '<section id="add_img'+i+'"><span>Изображение '+i+' </span><input name="picture[]" type="file" /><img class="x_img" id="x_img'+i+'" src="x.png" width="10" onclick = "$(add_img'+i+').remove();i--;"><br /> </section>';
          }
           </script>

           <section id="add_p">
            <input type="submit" id="btn_img" class="bor btn" name="add_img" value = 'Добавить поле для Изображения' onclick="add_img();">
          </section>

      <section id="frm" >
        <form method="post"  enctype="multipart/form-data" action="<?php echo 'update.php?id='.$id2.''; ?>">
          <select name="select" class="bor">
            <?php  
                $table_count = mysql_fetch_array( mysql_query("SELECT COUNT(1) FROM menu"));
                    for ($num=1; $num <= $table_count[0];$num++) {

                    $query = mysql_query("SELECT * FROM menu WHERE id like '%$num%'" );
                    $myrow = mysql_fetch_array($query);
                    $id = $myrow['id'];    
                    $main = $myrow['main']; 
                    if ($num == $m1 and $m2 == '0') {
                      echo "<option selected value = ".$num.".0>".$main."</option>";
                    } else {
                    echo "<option value = ".$num.".0>".$main."</option>";   } 

                    if (!empty($myrow['menu'])) {
                        $menu_arr = explode(';',$myrow['menu']);
                        $menu = '';
                        for ($i=0; $i <= sizeof($menu_arr)-2;$i++) {
                        if ($num == $m1 and ($m2 == ($i+1))) {
                          $menu.="<option selected value = ".$num.".".($i+1).">".$menu_arr[$i]."";
                        } else {
                        $menu.="<option value = ".$num.".".($i+1).">".$menu_arr[$i]."";}
                        }
                        echo $menu."</option>";
                    }                   
                }
                 
                ?>   
          </select><br>
          <span>Загаловок</span>
          <input class="bor" type="text" name="caption" value="<?php echo $cap; ?>">
          <br> 
          <span>Текст</span>
          <textarea class="bor" name="text" id="txtr"><?php echo htmlspecialchars($txt); ?></textarea><br>
          
          <section id="add_panel">
          </section>
          <input type="submit" id="btn" class="bor" name="add_btn" value="Редактировать">
        </form>
      </section>

