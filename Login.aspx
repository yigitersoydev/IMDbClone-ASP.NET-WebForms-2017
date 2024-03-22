<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Panel Girişi</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <link rel="stylesheet" href="../Styles/bootstrap.min.css"/>
    <link rel="stylesheet" href="../Styles/AdminLTE.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"/>
    <link rel="stylesheet" href="../Scripts/plugins/iCheck/square/blue.css"/>
</head>
<body class="hold-transition login-page" style="width: 26%;margin-left: 36%; margin-top:9%;">
    <form id="form1" runat="server">
    <div id="login-box">
        <div class="login-logo">
            <a href="../Login.aspx">
                <img src="Images/Logo/Nimdb_logo.png" width="50%"/> 

            </a>
        </div>
        <div class="login-box-body">
            <p class="login-box-msg">Panele Giriş Yap</p>
            <div style="margin-left:37%; color:red;">
                <asp:Label ID="lblHata" runat="server"></asp:Label>
            </div>
            <div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtEmail" class="form-control" runat="server" placeholder="Email"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                 <div class="form-group has-feedback">
                    <asp:TextBox ID="txtSifre" class="form-control" runat="server" TextMode="Password" placeholder="Sifre"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>

                <div class="row">
                    <div class="col-xs-4">
                        <asp:Button ID="btnSiteyeGit" class="btn btn-primary btn-block btn-flat" style="background-color:#e6b91e;border-color:#907310;color:black" runat="server" Text="Siteye Git" OnClick="btnSiteyeGit_Click" />
                    </div>
                    <div class="col-xs-4"></div>
                    <div class="col-xs-4">
                        <asp:Button ID="btnGir" class="btn btn-primary btn-block btn-flat" style="background-color:#e6b91e;border-color:#907310;color:black" runat="server" Text="Giriş" OnClick="btnGir_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script src="../Scripts/plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script src="../Scripts/bootstrap.min.js"></script>
        <script src="../Scripts/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
    </script>
    </form>
</body>
</html>
