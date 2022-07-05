<?php 
	$page = 1;	
  $query = mysql_query("SELECT * FROM content WHERE id like '%$page%'" );
  $myrow = mysql_fetch_array($query);
  $caption = $myrow['caption'];
  $text = $myrow['text'];   
?>

<section class="cbody">
  <h2 id="h2_cap"><?php echo $caption; ?></h2>
  <section id="content_text"><?php echo $text; ?></section>
</section>