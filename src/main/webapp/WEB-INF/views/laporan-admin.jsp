<%@ page import="java.util.List" %>
<%@ page import="com.example.webmai.models.Laporan" %>
<% 
    List<Laporan> d = (List<Laporan>) request.getAttribute("data");
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
    <link href="${pageContext.request.contextPath}/css/sidebar.css" rel="stylesheet" />
    <style>
        body {
            margin: 0;
            font-family: "Lato", sans-serif;
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
    <a class="active" href="/laporan-admin">Laporan</a>
    <a href="/ulasan-admin">Ulasan</a>
</div>

<div class="content">
    <div class="container-xxl py-5">
        <h1 class="text-center mb-5">Laporan Admin</h1>
        <div class="container d-flex justify-content-center">
            <table class="table">
                <thead class="table-dark">
                <tr class="text-center">
                    <td colspan="3">
                        <p>Status Connection : <b> ${connStatus == "Connected" ? "<font color='#20fa2f'>Connected</font>" : "<font color='red'>Disconnected</font>"} ${connMessage}</b></p>
                    </td>
                    <td colspan="3">
                        <p>
                            Jumlah Data : ${data.size()}
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>No</td>
                    <td>ID Report</td>
                    <td>Nama Report</td>
                    <td>Email Report</td>
                    <td>Deskripsi Report</td>
                    <td>Aksi</td>
                </tr>
                </thead>
                <tbody>
                <% for (int i = 0; i < d.size(); i++){ %>
                <tr>
                    <td><%= i+1 %></td>
                    <td><%= d.get(i).get_id_report() %></td>
                    <td><%= d.get(i).get_nama_report() %></td>
                    <td><%= d.get(i).get_email_report() %></td>
                    <td><%= d.get(i).get_deskripsi_report() %></td>
                    <td>
                        <a href="/edit-laporan?id_report=<%= d.get(i).get_id_report() %>" class="btn btn-primary">Edit</a>
                        <a href="/delete-laporan?id_report=<%= d.get(i).get_id_report() %>" class="btn btn-danger" onclick="return confirm('Hapus Data Ini?');">Delete</a>
                    </td>
                </tr>
                <% } %>

                <% if ( d.size() == 0 ) { %>
                <tr>
                    <td colspan="6" align="center"><i>Tidak Ada Data</i></td>
                </tr>
                <% } %>

                </tbody>
            </table>
        </div>
    </div>
</div>


</body>

</html>