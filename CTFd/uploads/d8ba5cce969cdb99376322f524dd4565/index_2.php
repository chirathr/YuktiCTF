<!DOCTYPE html>
<?php
$cookie_name = "auth";
$cookie_value = "user";
setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day
?>
<html>
  <head>
    <title>Defense, North Korea</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <style>
      body{
        background-color: #F4D03F;
        font-family: 'Open Sans', sans-serif;
        color: green;
        align: left;
      }
      .container{
        height: 300px;
        position: absolute;
        top: 120px;
        left: 10px;
      }
      h2{
        font-size: 4em;
        font-weight: lighter;
      }
    </style>
    <title>Find Me</title>
  </head>
  <body>
    <h2>North Korean Defense&nbsp;</h2>
    <div class="container">
      <p>You are accessing the super secret website of the Department of Defense, North Korea.
         Doing so without the Supreme Leader's consent is a crime and will be dealt with severely.
         Only admins are allowed to access this page after this point.
         All hail the Supreme Leader.
      </p>
      <br>
      <img src="http://images.entertainment.ie/images_content/rectangle/620x372/kju20141011228705.jpg" alt="Supreme Cookie" width="500" height="300">
    </div>
  </body>
  <?php
  if($_COOKIE['auth']=='admin'){
    echo "flag{Y0u_ar3_C00k1e_monSt3r}";
    }
  ?>
</html>
