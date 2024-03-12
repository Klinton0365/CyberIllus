<!doctype html>
<html lang="en">
<?php Session::loadTemplate('_head'); ?>

<body>
  <? //if (isset($_GET['login'])) {
  //if (!Session::isAuthenticated()) {
  Session::loadTemplate('_header');
  //} else {

  //}
  ?>
  <main>
    <?php
    if (Session::$isError) {
      Session::loadTemplate('_error');
    } else {
      Session::loadTemplate(Session::currentScript());
    }
    ?>
  </main>
  <? //if (!Session::isAuthenticated()) {
  //Session::loadTemplate('login');
  //} else {
  if (Session::isAuthenticated()) {
    Session::loadTemplate('_footer');
  } else {
    Session::loadTemplate('_ofooter');
  }
  //}
  ?>
</body>
<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="/assets/dist/js/bootstrap.bundle.min.js"></script>

</html>