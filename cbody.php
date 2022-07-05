<?php 
$id = $_GET['id'];

$query = mysqli_query($link, "SELECT * FROM content WHERE id like '%$id'" );
    $myrow = mysqli_fetch_array($query);
    $id = $myrow['id'];
    $caption = $myrow['caption'];
    $text = $myrow['text'];


?>
<section class="cbody">
  <h2 id="h2_cap"><?php echo $caption; ?></h2>
  <section id="content_text"><?php echo $text; ?></section>
</section>