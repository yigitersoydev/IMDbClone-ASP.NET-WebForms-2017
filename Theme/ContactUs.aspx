<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/Master.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Theme_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_Content" Runat="Server">
    <link href="Styles/AdminLTE.min.css" rel="stylesheet" />
    <link href="Styles/bootstrap.min.css" rel="stylesheet" />

    <asp:Panel ID="success" runat="server" Visible="false">
        <div class="alert alert-success" role="alert">Mesaj Başarılı Bir Şekilde Gönderildi.</div>
    </asp:Panel>
    <asp:Panel ID="error" runat="server" Visible="false">
        <div class="alert alert-danger" role="alert">Bir Hata Meydana Geldi.</div>
    </asp:Panel>


    <h4 style="margin-left: 1%;">İletişim Formu</h4>
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Bizimle iletişim kurmak istiyorsanız sosyal medya hesaplarından veya aşağıdaki formu doldurarak bize mesaj atabilirsiniz.</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <div role="form">
            <div class="box-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Ad Soyad</label>
                    <asp:TextBox ID="txtAd" CssClass="form-control" runat="server" PlaceHolder="Ad Soyad"></asp:TextBox>

                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Email Adresi</label>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" PlaceHolder="E-Posta"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Mesaj</label>
                    <asp:TextBox ID="txtMesaj" PlaceHolder="Mesajınız" TextMode="MultiLine" Height="200" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <!-- /.box-body -->

            <div class="box-footer" style="margin-left: 78%;">
                <asp:Button ID="btnSend" runat="server" CssClass="btn btn-success" Text="GÖNDER" OnClick="btnSend_Click" />
                <asp:Button ID="btnClear" runat="server" CssClass="btn btn-danger" Text="TEMİZLE" OnClick="btnClear_Click" />
            </div>

        </div>
    </div>
</asp:Content>

