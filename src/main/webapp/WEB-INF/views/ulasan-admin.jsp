<%@ page import="java.util.List" %>
<%@ page import="com.example.webmai.models.Ulasan" %>
<% 
    List<Ulasan> d = (List<Ulasan>) request.getAttribute("data");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Admin | Masjid Alumni IPB</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

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
        <h1 class="text-center">Ulasan Admin</h1>
        <div class="d-flex justify-content-center mb-3">
            <a href="/laporan-admin" class="btn btn-info">Laporan Admin</a>
        </div>
        <div class="container d-flex justify-content-center">
            <table class="table">
                <thead class="table-dark">
                    <tr>
                        <td>No</td>
                        <td>Id Review</td>
                        <td>Nama Review</td>
                        <td>Email Review</td>
                        <td>Selected Rating</td>
                        <td>Deskripsi Review</td>
                        <td>Aksi</td>
                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < d.size(); i++){ %>
                        <tr>
                            <td><%= i+1 %></td>
                            <td><%= d.get(i).getId_review() %></td>
                            <td><%= d.get(i).getNama_review() %></td>
                            <td><%= d.get(i).getEmail_review() %></td>
                            <td><%= d.get(i).getSelected_rating() %></td>
                            <td><%= d.get(i).getDeskripsi_review() %></td>
                            <td>
                                <a href="/edit-ulasan?id_review=<%= d.get(i).getId_review() %>" class="btn btn-primary">Edit</a>
                                <a href="/delete-ulasan?id_review=<%= d.get(i).getId_review() %>" onclick="return confirm('Apakah anda yakin untuk menghapus data ?')" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>