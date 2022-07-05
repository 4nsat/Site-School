<?php 
  $search = $_POST['search'];
	$lang = $_GET['lang'];
	$row2 = []; 
  $n_id = [];
	$i = 0;
  $j= 0;
    $table_c = mysql_fetch_array(mysql_query("SELECT COUNT(1) FROM content"));
      for ($nu=1; $nu <= $table_c[0];$nu++) {

      $query = mysql_query("SELECT * FROM content WHERE id like '%$nu%'" );
      $myrow = mysql_fetch_array($query);
      $text = $myrow['text']; 
      $cap = $myrow['caption']; 
      if ((stristr($text, $search) == true) or (stristr($cap, $search) == true)) {
        $j++;
        $n_id[$j] = $myrow['id'];
      }
    }
    //print_r($table_c);
    //echo $j;
    
    foreach($n_id as $value) {
	if ($j == 1) { 
              //require('main_index.php');
		echo '<meta http-equiv="refresh" content="0.001,url = index.php?lang='.$lang.'&page=content&id='.$value.'">';
    }
    $query = mysql_query("SELECT * FROM content WHERE id like '%$value'" );
    $myrow = mysql_fetch_array($query);
    $id = $myrow['id'];
    $caption = $myrow['caption'];
    $text = $myrow['text'];   
    $n = 200;  
    $string = mb_strimwidth($text, 0, $n, "...");
    //while ($str <> ' ') {
  	$str = strpos($text, " ", 300);
  	//$n--;
  //}  
    $string = mb_strimwidth($text, 0, $str, "...");
?>

<section class="cbody_min">
  <h3 id="h3_cap"><a <?php echo 'href=index.php?lang='.$lang.'&page=content&id='.$id.'' ?>><?php echo $caption; ?></a></h3>
  <section id="content_text"><?php echo $string; ?></section>
</section>

<?php
}
 ?>