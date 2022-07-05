<style type="text/css">
  #vhod {
    font-weight: bold;
  }
  #log_in {
    width: 200px;
    margin-right: auto;
    margin-left: auto;
    margin-top: 50px;
  }
  span {
    margin-left: 10px;
  }
  input {
    margin: 10px;
  }
  .bor {
    margin-top: 10px;
    margin-bottom: 10px;
  }
  #btn:hover {
          background: #fff;
          cursor: pointer;
        }
  #eror {
    font-size: 12px;
    color: red;
  }
  #main_p {
    position: absolute;
    margin: 0;
    margin-top: -40px;
  }
</style>
<p id="main_p" ><a href="../"> Главная</a></p>
<section id="log_in">
   <span id="vhod">Вход</span>
   <br>
   <form method="post" action="load.php">
   <section class="bor">
   <span>Логин</span>
   <br>
   <input type="text" name="login">
   <br>
   <span>Пароль</span>
   <br>
   <input type="password" name="pass">

   <input class="bor" id="btn" type="submit" name="btn_in" value="Вход">
   </section>
   <span id="eror"><?php echo $_POST['true']; ?></span>
   </form>
   
</section>
