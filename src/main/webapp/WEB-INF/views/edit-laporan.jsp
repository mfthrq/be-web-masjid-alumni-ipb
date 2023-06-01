<%@ page import="com.example.webmai.models.Laporan" %>
<% 
    Laporan l = (Laporan) request.getAttribute("laporan");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Admin | Masjid Alumni IPB</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
</head>

<body>
    <div class="container-xxl py-5">
        <div class="container d-flex justify-content-center">
            <div class="row">
                <div class="col-lg-12 wow fadeIn" data-wow-delay="0.1s">
                    <h1 class="display-6 mb-3 text-center">
                        Edit Laporan
                    </h1>
                    <form action="/update-laporan" method="POST">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="number" class="form-control" placeholder="ID Report" name="id_report" value="<%= l.get_id_report() %>">
                                    <label for="id_report">ID Report</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" name="nama_report" id="nama_report"
                                        placeholder="Your Name" value="<%= l.get_nama_report() %>" required />
                                    <label for="nama_report">Nama</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" name="email_report" id="email_report"
                                        placeholder="Your Email" value="<%= l.get_email_report() %>" required />
                                    <label for="email_report">Email</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input class="form-control" placeholder="Leave a message here" type="text"
                                        name="deskripsi_report" value="<%= l.get_deskripsi_report() %>"
                                        required></input>
                                    <label for="deskripsi_report">Deskripsi Laporan</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary py-3 px-5" type="submit" name="submit" value="Submit">
                                    Kirim
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>