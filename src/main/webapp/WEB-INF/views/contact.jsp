<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>Kontak | Masjid Alumni IPB</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="" name="keywords" />
  <meta content="" name="description" />

  <!-- Favicon -->
  <link href="${pageContext.request.contextPath}/img/logo-masjid-alumni-ipb.jpeg" rel="icon" />

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap"
    rel="stylesheet"
  />

  <!-- Fontawesome -->
  <link
    rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
  />

  <!-- Icon Font Stylesheet -->
  <link
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
    rel="stylesheet"
  />
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
    rel="stylesheet"
  />

  <!-- Libraries Stylesheet -->
  <link href="${pageContext.request.contextPath}/lib/animate/animate.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

  <!-- Customized Bootstrap Stylesheet -->
  <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Template Stylesheet -->
  <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
</head>

<body>
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
          <a href="/contact" class="dropdown-item active">Kontak</a>
          <a href="/laporan" class="dropdown-item">Laporan</a>
          <a href="/ulasan" class="dropdown-item">Ulasan</a>
        </div>
      </div>
    </div>
  </div>
</nav>
<!-- Navbar End -->

  <!-- Page Header Start -->
  <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5 text-center">
      <h1 class="display-4 animated slideInDown mb-4 text-white">Kontak</h1>
    </div>
  </div>
  <!-- Page Header End -->

  <!-- Contact Start -->
  <div class="container-xxl py-5">
    <div class="container">
      <div class="row g-5">
        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
          <h1 class="display-6">
            Kontak
          </h1>
          <p class="mb-4" align="justify">
            Terima kasih telah mengunjungi situs web Masjid Alumni IPB. Jika Anda memiliki pertanyaan, saran, atau ingin
            berhubungan dengan kami, silakan hubungi kami melalui informasi kontak di bawah ini. Kami akan dengan senang
            hati membantu Anda.
          </p>
          <form>
            <div class="row g-3">
              <div class="col-md-6">
                <div class="form-floating">
                  <input type="text" class="form-control" id="name" placeholder="Your Name" />
                  <label for="name">Nama</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating">
                  <input type="email" class="form-control" id="email" placeholder="Your Email" />
                  <label for="email">Email</label>
                </div>
              </div>
              <div class="col-12">
                <div class="form-floating">
                  <input type="text" class="form-control" id="subject" placeholder="Subject" />
                  <label for="subject">Judul</label>
                </div>
              </div>
              <div class="col-12">
                <div class="form-floating">
                  <textarea class="form-control" placeholder="Leave a message here" id="message"
                    style="height: 100px"></textarea>
                  <label for="message">Pesan</label>
                </div>
              </div>
              <div class="col-12">
                <button class="btn btn-primary py-3 px-5" type="submit">
                  Kirim
                </button>
              </div>
            </div>
          </form>
        </div>
        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 450px">
          <div class="position-relative rounded overflow-hidden h-100">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3963.3583249532758!2d106.80462181477114!3d-6.602315295225437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c5dca793b97d%3A0x2d846c3c1ae3bb7a!2sAlumni%20IPB%20Mosque!5e0!3m2!1sen!2sid!4v1684429601981!5m2!1sen!2sid"
              width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
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