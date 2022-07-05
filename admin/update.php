<?php
require('../connect.php');
// Путь загрузки
$path = 'content/images/';

$txt = $_POST['text'];
$id = $_GET['id'];
$str = 'Image';
// Обработка запроса
if(stristr($txt, 'Image') === TRUE) {

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
      $text = preg_replace($str, $arr_img[$i], $txt);
   		$i++;
  		}
  	}
    //print_r($arr_img);
  }
} else { $text = $txt; }

$select = '';

        $select = htmlspecialchars ($_POST["select"]);
        $pos = strpos($select, ".", 0);
        $rest = substr($select, 0, $pos);
        $rest2 = substr($select, strlen($rest)+1, $pos);
        $cap = $_POST['caption'];

     
        $query = mysql_query("SELECT * FROM content" ); 
        if (!empty($cap) and !empty($text)) {
        mysql_query("update content set main = '$rest', menu='$rest2', caption='$cap', text='$text' where id='$id'");
      }
          mysql_close();

      echo("<script>location.href='index.php'</script>");
?>