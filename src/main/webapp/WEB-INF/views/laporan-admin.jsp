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
</head>

<body>
    <p>Status Connection : <b> ${connStatus == "Connected" ? "<font color='green'>Connected</font>" : "<font color='red'>Disconnected</font>"} ${connMessage}</b></p>
    <p>
        Jumlah Data : ${data.size()}
    </p>
    <div class="container-xxl py-5">
        <h1 class="text-center">Laporan Admin</h1>
        <div class="d-flex justify-content-center mb-3">
            <a href="/ulasan-admin" class="btn btn-info">Ulasan Admin</a>
        </div>
        <div class="container d-flex justify-content-center">
            <table class="table">
                <thead class="table-dark">
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
</body>

</html>