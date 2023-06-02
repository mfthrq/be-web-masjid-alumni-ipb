<%@ page import="com.example.webmai.models.Ulasan" %>
<% 
    Ulasan u = (Ulasan) request.getAttribute("uls");
%>
<!DOCTYPE html>
<html>

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

    <style>
        body {
            margin: 0;
            font-family: "Lato", sans-serif;
            background-color: #ffffff;
        }

        .sidebar {
            margin: 0;
            padding: 0;
            width: 200px;
            background-color: #f1f1f1;
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        .sidebar a {
            display: block;
            color: black;
            padding: 16px;
            text-decoration: none;
        }

        .sidebar a.active {
            background-color: #007BFF;
            color: white;
        }

        .sidebar a:hover:not(.active) {
            background-color: #009BEE;
            color: white;
        }

        div.content {
            margin-left: 200px;
            padding: 1px 16px;
            height: 1000px;
        }

        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
            .sidebar a {float: left;}
            div.content {margin-left: 0;}
        }

        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }
        }
    </style>
</head>

<body>
<div class="sidebar">
    <div class="p-5 border-bottom border-3 border-dark mb-3">
        <h4 class="text-center">MAI Admin</h4>
    </div>
    <a href="/laporan-admin">Laporan</a>
    <a class="active" href="/ulasan-admin">Ulasan</a>
</div>
<div class="content">
    <div class="container-xxl py-5">
        <div class="container d-flex justify-content-center">
            <div class="row">
                <div class="col-lg-12 wow fadeIn" data-wow-delay="0.1s">
                    <h1 class="display-6 mb-3 text-center">
                        Edit Ulasan
                    </h1>
                    <form action="/update-ulasan" method="POST">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="number" class="form-control" placeholder="ID Ulasan" name="id_review" value="<%= u.getId_review() %>">
                                    <label for="id_review">ID Ulasan</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" name="nama_review" id="nama_review"
                                           placeholder="Your Name" value="<%= u.getNama_review() %>" required />
                                    <label for="nama_review">Nama</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" name="email_review" id="email_review"
                                           placeholder="Your Email" value="<%= u.getEmail_review() %>" required />
                                    <label for="email_review">Email</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="number" class="form-control" name="selected_rating" id="selected_rating"
                                           placeholder="Your Email" value="<%= u.getSelected_rating() %>" required />
                                    <label for="selected_rating">Selected Rating</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input class="form-control" placeholder="Leave a message here" type="text"
                                           name="deskripsi_review" value="<%= u.getDeskripsi_review() %>"
                                           required></input>
                                    <label for="deskripsi_review">Deskripsi Ulasan</label>
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
</div>
</body>