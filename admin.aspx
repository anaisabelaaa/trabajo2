<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administrador</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-image: url(img/flor.jpg);        
            color: white;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background: rgba(53, 66, 74, 0.8);
            color: #ffffff;
            padding: 10px 20px;
            text-align: center;
        }
        nav {
            background: rgba(53, 66, 74, 0.8);
            color: #ffffff;
            padding: 15px;
            display: flex;
            justify-content: space-around;
        }
        nav a {
            color: #ffffff;
            text-decoration: none;
            padding: 10px;
        }
        .container {
            display: flex;
            padding: 20px;
        }
        .sidebar {
            width: 20%;
            background: rgba(53, 66, 74, 0.8);
            color: #ffffff;
            padding: 15px;
        }
        .sidebar a {
            color: #ffffff;
            text-decoration: none;
            display: block;
            padding: 10px;
            height: 18px;
            width: 137px;
        }
        .sidebar a:hover {
            background: #444;
        }
        .main {
            width: 80%;
            padding: 20px;
        }
        .card {
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.2);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background: rgba(53, 66, 74, 0.8);
            color: #ffffff;
        }
        .footer-links {
            text-align: center;
            margin-top: 20px;
        }
        .footer-links a {
            color: #fff;
            text-decoration: underline;
        }
        .footer-links a:hover {
            text-decoration: none;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

<header>
    <h1>Administrador</h1>
</header>

<nav>
    &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/login.aspx">Inicio</asp:HyperLink>
    <asp:HyperLink ID="HyperLink1" runat="server">Usuarios</asp:HyperLink>
&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server">Configuracion</asp:HyperLink>
</nav>

<div class="container">

    <div class="main">
        <div class="card">
            <h2>Estadísticas</h2>
            <p>Usuarios Activos: 120</p>
            <p>Usuarios Inactivos: 30</p>
            <p>Último Inicio de Sesión: 05/08/2024</p>
        </div>

        <div class="card">
            <h2>Lista de Usuarios</h2>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Juan Pérez</td>
                        <td>juan@example.com</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Ana Gómez</td>
                        <td>ana@example.com</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Pedro Ruiz</td>
                        <td>pedro@example.com</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

    </form>

</body>
</html>
