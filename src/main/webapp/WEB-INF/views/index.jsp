<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Masjid Alumni IPB</title>
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
    <!-- Spinner Start -->
    <div
      id="spinner"
      class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
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
          <a href="/" class="nav-item nav-link active">Utama</a>
          <a href="/tentang" class="nav-item nav-link">Tentang</a>
          <a href="/agenda" class="nav-item nav-link">Agenda</a>
          <a href="/donasi" class="nav-item nav-link">Donasi</a>
          <div class="nav-item dropdown">
            <a
              href="#"
              class="nav-link dropdown-toggle"
              data-bs-toggle="dropdown"
              >Lainnya</a
            >
            <div class="dropdown-menu bg-light border-0 m-0">
              <a href="/contact" class="dropdown-item">Kontak</a>
              <a href="/laporan" class="dropdown-item">Laporan</a>
              <a href="/ulasan" class="dropdown-item">Ulasan</a>
            </div>
          </div>
        </div>
      </div>
    </nav>
    <!-- Navbar End -->

    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
      <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              class="w-100"
              style="height: 1000px"
              src="${pageContext.request.contextPath}/img/foto-luar-masjid-alumni-ipb.jpg"
              alt="Image"
            />
            <div class="carousel-caption">
              <div class="container">
                <div class="row">
                  <div class="col-12 col-lg-6">
                    <h1 class="display-3 text-white mb-4 animated slideInDown">
                      Masjid Alumni IPB
                    </h1>
                    <p class="fs-5 text-white mb-5">Masjid Alumni IPB</p>
                    <a href="/tentang" class="btn btn-primary py-3 px-5"
                      >Tentang</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img
              class="w-100"
              style="height: 1000px"
              src="${pageContext.request.contextPath}/img/foto-luar-masjid-alumni-ipb-2.png"
              alt="Image"
            />
            <div class="carousel-caption">
              <div class="container">
                <div class="row">
                  <div class="col-12 col-lg-6">
                    <h1 class="display-3 text-white mb-4 animated slideInDown">
                      Masjid Alumni IPB
                    </h1>
                    <p class="fs-5 text-white mb-5">Masjid Alumni IPB</p>
                    <a href="/tentang" class="btn btn-primary py-3 px-5"
                      >Tentang</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#header-carousel"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#header-carousel"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- About Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="h-100">
              <h1 class="display-6">Masjid Alumni IPB</h1>
              <p class="fs-5 text-primary mb-4">Kota Bogor</p>
              <p class="mb-4" align="justify">
                Masjid Alumni IPB merupakan kategori masjid umum. Masjid Alumni
                IPB beralamat di Jl. Cidangiang Pajajaran, Kota Bogor, Prov.
                Jawa Barat. Masjid Alumni IPB memiliki luas tanah 1.000
                m<sup>2</sup>, luas bangunan 1.000 m<sup>2</sup> dengan status
                tanah girik. Dibangun sejak tahun 2012 atas swadaya alumni,
                pemerintah, maupun masyarakat yang diharapkan menjadi pusat
                ibadah dan dakwah di Kota Bogor.
              </p>
            </div>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <div
              class="position-relative overflow-hidden rounded ps-5 pt-5 h-100"
              style="min-height: 400px"
            >
              <img
                class="position-absolute w-100 h-100"
                src="${pageContext.request.contextPath}/img/foto-luar-masjid-alumni-ipb.jpg"
                alt=""
                style="object-fit: cover"
              />
              <div
                class="position-absolute top-0 start-0 bg-white rounded pe-3 pb-3"
                style="width: 200px; height: 200px"
              >
                <div
                  class="d-flex flex-column justify-content-center text-center bg-primary rounded h-100 p-3"
                >
                  <h2 class="text-white mb-0">Sejak</h2>
                  <h3 class="text-white">2012</h3>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- Jadwal Sholat Start -->
    <div class="container-xxl py-5 px-5 text-center bg-jadwal-sholat">
      <h1 class="text-white wow fadeInUp">Jadwal Sholat</h1>
      <p class="text-white mb-5">
        Berikut adalah jadwal sholat Kota Bogor (WIB)
      </p>
      <div class="row">
        <div class="col wow fadeInUp">
          <h2 class="text-white sm:">Subuh</h2>
          <h5 class="text-white">04:34</h5>
        </div>
        <div class="col wow fadeInUp">
          <h2 class="text-white">Zuhur</h2>
          <h5 class="text-white">11:49</h5>
        </div>
        <div class="col wow fadeInUp">
          <h2 class="text-white">Ashar</h2>
          <h5 class="text-white">15:11</h5>
        </div>
        <div class="col wow fadeInUp">
          <h2 class="text-white">Maghrib</h2>
          <h5 class="text-white">17:43</h5>
        </div>
        <div class="col wow fadeInUp">
          <h2 class="text-white">Isya</h2>
          <h5 class="text-white">18:56</h5>
        </div>
      </div>
    </div>
    <!-- Jadwal Sholat End -->

    <!-- Agenda Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="text-center mx-auto" style="max-width: 600px">
          <h1 class="display-6">Agenda Masjid</h1>
          <p>Berikut adalah beberapa agenda di Masjid Alumni IPB</p>
        </div>
        <div class="row g-4 justify-content-center" id="agendaCard">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-item rounded h-100 p-5">
              <div class="align-items-center mb-4">
                <div class="">
                  <img
                    class="img-fluid mb-3"
                    src="${pageContext.request.contextPath}/img/contoh-agenda-1.jpg"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Salah Idola Dapat Merusak Hati</h4>
              </div>
              <p class="mb-4">
                Kajian selasa pagi, 23 Mei 2023 Kajian terbuka untuk umum,
                ikhwan dan akhwat Bersama Ust. Abu Bakar Al Akhdhory, Lc
              </p>
              <a class="btn btn-light px-3" href="/agenda-detail"
                >Lanjut Baca</a
              >
            </div>
          </div>

          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-item rounded h-100 p-5">
              <div class="align-items-center mb-4">
                <div class="">
                  <img
                    class="img-fluid mb-3"
                    src="${pageContext.request.contextPath}/img/contoh-agenda-2.jpg"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Kajian Muslimah</h4>
              </div>
              <p class="mb-4">
                Kajian ahad pagi (Basement Masjid), 21 Mei 2023 Kajian muslimah,
                terbuka untuk umum Bersama Teteh Eca
              </p>
              <a class="btn btn-light px-3" href="/agenda-detail1"
                >Lanjut Baca</a
              >
            </div>
          </div>

          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-item rounded h-100 p-5">
              <div class="align-items-center mb-4">
                <div class="">
                  <img
                    class="img-fluid mb-3"
                    src="${pageContext.request.contextPath}/img/contoh-agenda-3.jpg"
                    alt=""
                  />
                </div>
                <h4 class="mb-0">Tanda-tanda orang bertaqwa</h4>
              </div>
              <p class="mb-4">
                Kajian rabu pagi, 17 Mei 2023 Kajian muslimah, terbuka untuk
                umum Bersama Ustadz Samsam Nurhidayat
              </p>
              <a class="btn btn-light px-3" href="/agenda-detail2"
                >Lanjut Baca</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Agenda End -->

    <!-- Testimonial Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="text-center mx-auto" style="max-width: 500px">
          <h1 class="display-6 mb-5">Testimoni Pengunjung</h1>
        </div>
        <div class="row g-5">
          <div class="wow fadeIn" data-wow-delay="0.5s">
            <div class="owl-carousel testimonial-carousel" id="testimoni">
              <div class="testimonial-item text-center">
                <img class="mx-auto" src="${pageContext.request.contextPath}/img/logo-quote.png" alt="" />
                <p class="fs-5">
                  Masjid ini sangat indah dan tenang. Saya merasa nyaman dan
                  damai saat beribadah di sini.
                </p>
                <h5>Kinaya Khairunnisa</h5>
              </div>
              <div class="testimonial-item text-center">
                <img class="mx-auto" src="${pageContext.request.contextPath}/img/logo-quote.png" alt="" />
                <p class="fs-5">
                  Masjid ini tempat yang bagus untuk belajar agama. Khotbah
                  Jumatnya informatif dan menginspirasi.
                </p>
                <h5>Cahya Rudiansah</h5>
              </div>
              <div class="testimonial-item text-center">
                <img class="mx-auto" src="${pageContext.request.contextPath}/img/logo-quote.png" alt="" />
                <p class="fs-5">
                  Masjid ini tempat yang saya kunjungi untuk mencari ketenangan
                  dan kedamaian. Suasana spiritualnya membantu saya mengatasi
                  stres.
                </p>
                <h5>Reza Pratama</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Testimonial End -->

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
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
      ><i class="bi bi-arrow-up"></i
    ></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/counterup/counterup.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
  </body>
</html>
