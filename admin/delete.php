<?php   
  require('../connect.php');
  $lang = $_GET['lang'];
  $id = $_GET['id'];
  //echo $id;
  $query = mysql_query("SELECT * FROM content" );
  mysql_query("DELETE FROM content WHERE id = '$id'");
  echo "<script>location.href='index.php?lang=".$lang."'</script>";
?>