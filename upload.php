<?php
require('connect.php');
// Путь загрузки
$path = 'content/images/';

$txt = $_POST['text'];
$str = '/Image';
// Обработка запроса
if(stristr($txt, 'Image') == TRUE) {

  if ($_SERVER['REQUEST_METHOD'] == 'POST')
  {
   // Загрузка файла и вывод сообщения
  $picture = $_FILES['picture'];
  $i = 0;
  $arr_img = [];
  //print_r($picture);
   if (isset($picture)) { 
   for ($j=0;$j<count($picture['name']);$j++) {
    if (!@copy($_FILES['picture']['tmp_name'][$i], $path. date('Y_m_d_h_i_s-') . $_FILES['picture']['name'][$i]))
  		echo 'Что-то пошло не так';
  		else
  		echo 'Загрузка удачна';
  		$arr_img[$i] = '<center><img id="content_img" src="'.$path. date('Y_m_d_h_i_s-') .$_FILES['picture']['name'][$i].'"></center>';
      $ii = $i+1;
      $str2[$i] = $str.$ii.'/';
      echo $str2.'<br>';
      echo $arr_img[$i];
   		$i++;
  		}
  	}
    //print_r($arr_img);
  } 
  $text = preg_replace($str2, $arr_img, $txt);
} else { $text = $txt; }

$select = '';

        $select = htmlspecialchars ($_POST["select"]);
        $pos = strpos($select, ".", 0);
        $rest = substr($select, 0, $pos);
        $rest2 = substr($select, strlen($rest)+1, $pos);
        $cap = $_POST['caption'];

     
        $query = mysql_query("SELECT * FROM content" ); 
        if (!empty($cap) and !empty($text)) {
        mysql_query("INSERT INTO content(main, menu, caption, text)
        VALUES ('$rest', '$rest2', '$cap', '$text')"
              );
      }
          mysql_close();

      echo("<script>location.href='admin/index.php?panel=add'</script>");
?>