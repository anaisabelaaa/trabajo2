<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Usuario</title>
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
            flex-direction: column;
            padding: 20px;
        }
        .main {
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.2);
        }
        footer {
            background: rgba(53, 66, 74, 0.8);
            color: #ffffff;
            text-align: center;
            padding: 10px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }
        h2 {
            color: #ffffff;
        }
        p {
            line-height: 1.6;
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
    <h1>Bienvenido a Tu Perfil</h1>
</header>

<nav>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Inicio</asp:HyperLink>
    <a href="#">I</a>
    <a href="#">Mis Datos</a>
    <a href="#">Configuración</a>
    <a href="#">Ayuda</a>
    <a href="#">Cerrar Sesión</a>
</nav>

<div class="container">
    <div class="main">
        <h2>Información del Usuario</h2>
        <p><strong>Nombre:</strong> Juan Pérez</p>
        <p><strong>Email:</strong> juan.perez@example.com</p>
        <p><strong>Fecha de Registro:</strong> 01/01/2023</p>
        
        <h2>Últimas Actividades</h2>
        <ul>
            <li>Inició sesión el 05/08/2024</li>
            <li>Actualizó su perfil el 01/07/2024</li>
            <li>Completó un curso el 15/06/2024</li>
        </ul>
    </div>
</div>

<footer>
    <p>&copy; 2024 Tu Empresa. Todos los derechos reservados.</p>
</footer>

    </form>

</body>
</html>