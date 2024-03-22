<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="LibraryAdd.aspx.cs" Inherits="Panel_LibraryAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
      <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Kütüphaneye Ekle</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
      <asp:Panel ID="success" runat="server" Visible="false">
        <div class="alert alert-success" role="alert">Dosya Kütüphaneye Başarılı Bir Şekilde Eklendi.</div>
    </asp:Panel>
    <asp:Panel ID="error" runat="server" Visible="false">
        <div class="alert alert-danger" role="alert">Bir Hata Meydana Geldi.</div>
    </asp:Panel>
   
    <div class="form-group">
        <label>Dosya</label>
        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
    </div>
      <div class="form-group">
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Ekle" OnClick="Button1_Click" />
           </div>
                                 </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

