<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginuser.aspx.cs" Inherits="loginuser" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>LoginAna</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
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
        .btn-danger {
            background-color: #dc3545;
            border: none;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
        .social-btn {
            border-radius: 5px;
            margin-top: 10px;
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
    <div class="background"></div>
    <div class="login-container">
        <div class="text-end">
            <img src="img/logo.png" width="48" alt="">
        </div>
        <h1 class="fw-bold text-white">Bienvenido</h1>

        <!--Login-->
        <form id="Form1" action="#" runat="server">
            <div class="mb-4">
                <div class="mb-4">
                <label for="nombre" class="form-label">Nombre:</label>
                <asp:TextBox ID="txtName" runat="server"  class="form-control"></asp:TextBox>
            </div>
            <div class="mb-4">
                <label for="email" class="form-label">Correo Electrónico:</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" type="Email"></asp:TextBox>
            </div>
            <div class="mb-4">
                <label for="password" class="form-label">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
            </div>
            <asp:Label ID="lblError" runat="server" ForeColor="#FF3300"></asp:Label>
            <div class="d-grid">
                <asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" class="btn btn-danger" OnClick="Button1_Click" />
            </div>
            <div class="my-3">
                <span>No tienes cuenta? <a href="#">Regístrate</a></span><br>
                <span><a href="#">Recuperar Password</a></span>
            </div>
        </form>

        <!--Login con Redes Sociales-->
        <div class="container w-100 my-5">
            <div class="row text-center">
                <div class="col-12">Iniciar Sesión</div>
            </div>
            <div class="row">
                <div class="col">
                    <button class="btn btn-outline-primary w-100 my-1">
                        <div class="row align-items-center">
                            <div class="col-2 d-none d-md-block">
                                <img src="img/facebook.png" width="32" alt="">
                            </div>
                            <div class="col-12 col-md-10 text-center">Facebook</div>
                        </div>
                    </button>
                </div>
                <div class="col">
                    <button class="btn btn-outline-danger w-100 my-1">
                        <div class="row align-items-center">
                            <div class="col-2 d-none d-md-block">
                                <img src="img/google.png" width="32" alt="">
                            </div>
                            <div class="col-12 col-md-10 text-center">Google</div>
                        </div>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script>
        let date = new Date();
        document.body.appendChild(document.createTextNode(date.toDateString()));
    </script>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baselConnectionString2 %>" SelectCommand="SELECT * FROM [usuarios] WHERE (([nombre] = @nombre) AND ([mail] = @mail) AND ([clave] = @clave))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtName" Name="nombre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtEmail" Name="mail" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtPassword" Name="clave" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>