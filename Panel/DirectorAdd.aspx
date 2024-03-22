<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="DirectorAdd.aspx.cs" Inherits="Panel_DirectorAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
     <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Yönetmen Ekle</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
    <asp:Panel ID="success" runat="server" Visible="false">
        <div class="alert alert-success" role="alert">Yönetmen Başarılı Bir Şekilde Eklendi.</div>
    </asp:Panel>
    <asp:Panel ID="error" runat="server" Visible="false">
        <div class="alert alert-danger" role="alert">Bir Hata Meydana Geldi.</div>
    </asp:Panel>
    <div class="form-group">
        <label>Yönetmenin Adı</label>
        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
                            <div class="form-group">
        <label>Yönetmenin Soyadı</label>
        <asp:TextBox ID="txtSoyad" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

 <div class="form-group">
        <label>Yönetmenin Doğum Tarihi</label><br />
     <asp:TextBox ID="txtBirth" placeholder="DD.MM.YY" CssClass="form-control" runat="server"></asp:TextBox><asp:Button ID="btn_TakvimGoster" runat="server" OnClick="btn_TakvimGoster_Click" Text="Takvim" />
     <asp:Calendar ID="clnBirth" runat="server" Visible="False" OnSelectionChanged="clnRelease_SelectionChanged"></asp:Calendar>
     
    </div>
   <div class="form-group">
        <label>Ulus</label>
        <asp:TextBox ID="txtNation" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
<div class="form-group">
        <label>Yönetmenin Fotoğrafı</label>
        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
    </div>
    <div class="form-group">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Yönetmen Ekle" OnClick="Button1_Click" />
    </div>
                               </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

