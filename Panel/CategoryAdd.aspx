<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="CategoryAdd.aspx.cs" Inherits="Panel_CategoryAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Kategori Ekle</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                           
    <asp:Panel ID="success" runat="server" Visible="False">
        <div class="form-group">
           <div class="alert alert-success" role="alert">Kategori Ekleme Başarılı...</div>
        </div>
    </asp:Panel>
    <asp:Panel ID="error" runat="server" Visible="False">
        <div class="form-group">
            <div class="alert alert-danger" role="alert">Kategori Ekleme Başarısız...</div>
        </div>
    </asp:Panel>


    <div class="form-group">
        <label>Kategori Ekle</label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Kaydet" OnClick="Button1_Click" />
    </div>
         </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

