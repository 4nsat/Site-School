<?php 
	$page = $_GET['page'];	
	$menu = $_GET['menu'];		
	$lang = $_GET['lang'];
	$row2 = []; 
	$i = 0;
    $query = mysqli_query($link, "SELECT id FROM content WHERE main='$page' and menu='$menu'");
    while( $row =  mysqli_fetch_assoc($query)){ 
    	$i++;
        $row2[$i] = $row;
    }

    
    foreach($row2 as $item) {
    foreach ($item as $key => $value) {
	if ($i == 1) { 
              //require('main_index.php');
		echo '<meta http-equiv="refresh" content="0.001,url = index.php?lang='.$lang.'&page=content&id='.$value.'">';
    }
    $query = mysqli_query($link, "SELECT * FROM content WHERE id like '%$value'" );
    $myrow = mysqli_fetch_array($query);
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
}
 ?>