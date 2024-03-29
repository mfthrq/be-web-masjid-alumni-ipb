<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>Ulasan | Masjid Alumni IPB</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="" name="keywords" />
  <meta content="" name="description" />

  <!-- Favicon -->
  <link href="${pageContext.request.contextPath}/img/logo-masjid-alumni-ipb.jpeg" rel="icon" />

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap"
    rel="stylesheet" />

  <!-- Fontawesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">

  <!-- Icon Font Stylesheet -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

  <!-- Libraries Stylesheet -->
  <link href="${pageContext.request.contextPath}/lib/animate/animate.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

  <!-- Customized Bootstrap Stylesheet -->
  <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Template Stylesheet -->
  <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!------ Include the above in your HEAD tag ---------->

  <script>
    jQuery(document).ready(function ($) {

      $(".btnrating").on('click', (function (e) {

        var previous_value = $("#selected_rating").val();

        var selected_value = $(this).attr("data-attr");
        $("#selected_rating").val(selected_value);

        $(".selected-rating").empty();
        $(".selected-rating").html(selected_value);

        for (i = 1; i <= selected_value; ++i) {
          $("#rating-star-" + i).toggleClass('btn-warning');
          $("#rating-star-" + i).toggleClass('btn-default');
        }

        for (ix = 1; ix <= previous_value; ++ix) {
          $("#rating-star-" + ix).toggleClass('btn-warning');
          $("#rating-star-" + ix).toggleClass('btn-default');
        }
      }));
    });
  </script>
</head>
<script>
  function showPopup() {
    alert("Data Berhasil Terkirim!");
  }
</script>
<body>
  <!-- Spinner Start -->
  <div id="spinner"
    class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-grow text-primary" role="status"></div>
  </div>
  <!-- Spinner End -->

 <!-- Navbar Start -->
 <nav
 class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5"
>
 <a href="/" class="navbar-brand d-flex align-items-center">
   <img
     class="img-fluid me-3"
     src="${pageContext.request.contextPath}/img/logomasjidalumniipb-removebg.png"
     alt=""
   />
 </a>
 <button
   type="button"
   class="navbar-toggler"
   data-bs-toggle="collapse"
   data-bs-target="#navbarCollapse"
 >
   <span class="navbar-toggler-icon"></span>
 </button>
 <div class="collapse navbar-collapse" id="navbarCollapse">
   <div class="navbar-nav mx-auto bg-light rounded pe-4 py-3 py-lg-0">
     <a href="/" class="nav-item nav-link">Utama</a>
     <a href="/tentang" class="nav-item nav-link">Tentang</a>
     <a href="/agenda" class="nav-item nav-link">Agenda</a>
     <a href="/donasi" class="nav-item nav-link">Donasi</a>
     <div class="nav-item dropdown">
       <a
         href="#"
         class="nav-link dropdown-toggle active"
         data-bs-toggle="dropdown"
         >Lainnya</a
       >
       <div class="dropdown-menu bg-light border-0 m-0">
         <a href="/contact" class="dropdown-item">Kontak</a>
         <a href="/laporan" class="dropdown-item "">Laporan</a>
         <a href="/ulasan" class="dropdown-item active"">Ulasan</a>
       </div>
     </div>
   </div>
 </div>
</nav>
<!-- Navbar End -->

  <!-- Page Header Start -->
  <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5 text-center">
      <h1 class="display-4 animated slideInDown mb-4 text-white">Ulasan</h1>
    </div>
  </div>
  <!-- Page Header End -->

  <!-- Contact Start -->
  <div class="container-xxl py-5">
    <div class="container d-flex justify-content-center">
      <div class="">
        <div class="wow fadeIn" data-wow-delay="0.1s">
          <h1 class="display-6 text-center mb-3">
            Ulasan
          </h1>
          <p align="justify">Kami sangat menghargai umpan balik Anda tentang pengalaman Anda dengan Masjid Alumni IPB.
            Ulasan Anda membantu kami terus meningkatkan pelayanan kami kepada jamaah dan komunitas yang kami layani.
            Silakan bagikan pengalaman, saran, atau apapun yang ingin Anda sampaikan tentang kunjungan Anda ke Masjid
            Alumni IPB. </p>
          <form action="/save-ulasan" method="POST" onsubmit="showPopup()">
            <div class="row g-3">
              <div class="col-12 d-flex justify-content-center">
                <div class="form-group" id="rating-ability-wrapper">
                  <label class="control-label" for="rating">
                    <input type="hidden" type="int" id="selected_rating" name="selected_rating" value="" required="required">
                  </label>
                  <button type="button" class="btnrating btn btn-default btn-lg" data-attr="1" id="rating-star-1">
                    <i class="fa fa-star" aria-hidden="true"></i>
                  </button>
                  <button type="button" class="btnrating btn btn-default btn-lg" data-attr="2" id="rating-star-2">
                    <i class="fa fa-star" aria-hidden="true"></i>
                  </button>
                  <button type="button" class="btnrating btn btn-default btn-lg" data-attr="3" id="rating-star-3">
                    <i class="fa fa-star" aria-hidden="true"></i>
                  </button>
                  <button type="button" class="btnrating btn btn-default btn-lg" data-attr="4" id="rating-star-4">
                    <i class="fa fa-star" aria-hidden="true"></i>
                  </button>
                  <button type="button" class="btnrating btn btn-default btn-lg" data-attr="5" id="rating-star-5">
                    <i class="fa fa-star" aria-hidden="true"></i>
                  </button>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating">
                  <input type="text" class="form-control" name="nama_review" id="nama_review" placeholder="Your Name" required/>
                  <label for="name">Nama</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating">
                  <input type="text" class="form-control" id="email_review" name="email_review" placeholder="Your Email" required/>
                  <label for="email">Email</label>
                </div>
              </div>
              <div class="col-12">
                <div class="form-floating">
                  <textarea type="text" class="form-control" name="deskripsi_review" placeholder="Leave a message here" id="deskripsi_review"
                    style="height: 100px" required></textarea>
                  <label for="message">Deskripsi Ulasan</label>
                </div>
              </div>
              <div class="col-12">
                <button class="btn btn-primary py-3 px-5" type="submit" name="submit" value="simpan">
                  Kirim
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- Contact End -->

  <!-- Footer Start -->
  <div
  class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn"
  data-wow-delay="0.1s"
>
  <div class="container py-5">
    <div class="row">
      <div class="col-lg-4 col-md-6">
        <img
          class="img-fluid me-3 bg-white rounded-top rounded-bottom w-64 h-50"
          src="${pageContext.request.contextPath}/img/logomasjidalumniipb-removebg.png"
          alt=""
        />
        <div class="d-flex mt-3">
          <a
            class="btn btn-square me-1"
            href="https://www.facebook.com/masjidalumniipb.kotabogor"
          >
            <i class="fab fa-facebook-f"></i>
          </a>
          <a
            class="btn btn-square me-1"
            href="https://www.youtube.com/@MASJIDALUMNIIPB"
          >
            <i class="fab fa-youtube"></i>
          </a>
          <a
            class="btn btn-square me-1"
            href="https://www.instagram.com/masjid_alumni_ipb/"
          >
            <i class="fab fa-instagram"></i>
          </a>
          <a
            class="btn btn-square me-1"
            href="https://www.tiktok.com/@masjidalumniipb"
          >
            <i class="fab fa-tiktok"></i>
          </a>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <h5 class="text-light mb-4">Alamat</h5>
        <p>
          <i class="fa fa-map-marker-alt me-3"></i>
          Jl. Cidangiang, Tegallega Bogor Tengah, 16129 Kota Bogor, Jawa
          Barat
        </p>
        <p><i class="fa fa-phone-alt me-3"></i>+62 811-1128-155</p>
        <p>
          <i class="fa fa-envelope me-3"></i>adm.masjidalumniipb@gmail.com
        </p>
      </div>
      <div class="col-lg-4 col-md-6">
        <h5 class="text-light mb-4">Tautan Cepat</h5>
        <a class="btn btn-link" href="/tentang">Tentang</a>
        <a class="btn btn-link" href="/agenda">Agenda</a>
        <a class="btn btn-link" href="/donasi">Donasi</a>
        <a class="btn btn-link" href="/contact">Kontak</a>
        <a class="btn btn-link" href="/laporan">Laporan</a>
        <a class="btn btn-link" href="/ulasan">Ulasan</a>
      </div>
    </div>
  </div>
  <div class="container-fluid copyright">
    <div class="container">
      <div class="row">
        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
          &copy; 2023. Masjid Alumni IPB. Seluruh hak cipta.
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Footer End -->

  <!-- Back to Top -->
  <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>

  <!-- Template Javascript -->
  <script src="js/main.js"></script>
</body>

</html>