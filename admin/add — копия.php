
  <script src="../js/tinymce/Gruntfile.js"></script>  
  <script src="../js/tinymce/js/tinymce/tinymce.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>


<style type="text/css">
        textarea {
          height: 200px;
        }
        #btn {
          margin-top: 20px;
        }
        #btn:hover {
          background: #fff;
          cursor: pointer;
        }
      </style>

      <H3>Добавление записей</H3>
      <?php 
              
      require('../connect.php');

      ?>

  <form method="post">  
        <textarea name="txt"></textarea>
        <textarea name="txt"></textarea>
        <textarea name="txt"></textarea>
    <input type="submit" id="btn" class="bor" name="add_btn" value="Добавить">
  </form>
  <?php 

  $text = $_POST['txt'];
  print_r($text);

   ?>
