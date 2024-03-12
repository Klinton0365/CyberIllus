<section class="py-5 text-center container">
  <div class="row py-lg-5">
    <div class="col-lg-6 col-md-8 mx-auto">
      <?
      if (Session::get('is_loggedin')) { ?>
        <!-- It'll show the logged User's Username -->
        <!-- <h2>Welcome, <? //echo strtoupper($_SESSION['session_username']); 
                          ?></h2> -->
        <!-- <h2 class="text-white">WELCOME, <? //Session::getUser()->getUsername() 
                                              ?></h2> -->
      <? } ?>
      <h1 class="fw-light">CYBER HUB Album</h1>
      <p class="lead text-muted">Cyber-Hub era defined by the seamless integration of technology into every aspect of our lives, the Cyber World emerges as a dynamic and ever-expanding landscape. A virtual realm where ideas transcend physical boundaries, the cyber world serves as a gateway to boundless Information, Connectivity, and Innovation</p>
      <p>
      </p>
    </div>
  </div>
</section>