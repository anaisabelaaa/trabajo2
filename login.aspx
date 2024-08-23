<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ingreso</title>
    <style>
        body {
            background-image: url(img/flor.jpg);
            color: white;
            font-family: Arial, sans-serif;
        }
        .login-container {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }
       
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: bold;
        }
        button {
            width: 100%; /* Botón ocupa todo el ancho */
            padding: 10px; /* Relleno interno */
            border: none; /* Sin borde */
            border-radius: 5px; /* Bordes redondeados */
            font-size: 16px; /* Tamaño de fuente */
            cursor: pointer; /* Cambiar cursor al pasar el ratón */
            margin-top: 10px; /* Espaciado entre botones */
            transition: background-color 0.3s, transform 0.3s; /* Transiciones suaves */
        }
        .admin {
            background-color: #007bff; /* Color de fondo */
            color: white; /* Color del texto */
        }
        .admin:hover {
            background-color: #0056b3; /* Color al pasar el ratón */
            transform: scale(1.05); /* Efecto de aumento */
        }
        .user {
            background-color: #28a745; /* Color de fondo */
            color: white; /* Color del texto */
        }
        .user:hover {
            background-color: #218838; /* Color al pasar el ratón */
            transform: scale(1.05); /* Efecto de aumento */
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
        <div class="login-container">
            <h1>Bienvenido</h1>
            <p style="margin-left: 120px">¿Cómo deseas ingresar?</p>
            <button type="button" class="admin" onclick="location.href='loginadmin.aspx'">Entrar como Administrador</button>
            <button type="button" class="user" onclick="location.href='loginuser.aspx'">Entrar como Usuario</button>
        </div>
    </form>
</body>