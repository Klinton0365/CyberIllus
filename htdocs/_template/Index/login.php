<?php
if (isset($_GET['logout'])) {
 Session::destroy();
} ?>
<section class="py-5 text-center container" style="margin-bottom:0px;padding-bottom:0px;">
 <div class="row py-lg-5" style="margin-bottom: 0px;padding-bottom:0px;">
  <div class="col-lg-6 col-md-8 mx-auto">
   <h1 class="fw-light">If You Got Access Key You Can See CyberAlbum</h1>
   <p class="lead text-muted">Cyber-Hub era defined by the seamless integration of technology into every aspect of our lives, the Cyber World emerges as a dynamic and ever-expanding landscape. A virtual realm where ideas transcend physical boundaries, the cyber world serves as a gateway to boundless Information, Connectivity, and Innovation</p>
   <p>
    <a href="login.php" class="btn btn-primary my-2">Log In</a>
    <a href="signup.php" class="btn btn-secondary my-2" style="color: #0FFB00 ;">Sign Up</a>
   </p>
  </div>
 </div>
</section>