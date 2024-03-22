<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="MovieEdit.aspx.cs" Inherits="Panel_MovieEdit" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphPanelContent" runat="Server">
     <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Film Düzenle</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
    <asp:Panel ID="success" runat="server" Visible="false">
        <div class="alert alert-success" role="alert">Film Başarılı Bir Şekilde Güncellendi.</div>
    </asp:Panel>
    <asp:Panel ID="error" runat="server" Visible="false">
        <div class="alert alert-danger" role="alert">Bir Hata Meydana Geldi.</div>
    </asp:Panel>
    <div class="form-group">
        <label>Filmin Adı</label>
        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
 
   <div class="form-group">
        <label>Film Rate</label>
        <asp:TextBox ID="txtRate" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
 <div class="form-group">
       <label>Film Kategori</label><br />
        <asp:DropDownList ID="dll_kategori" runat="server" DataSourceID="SqlDataSource1" DataTextField="GenreName" DataValueField="GenreName"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baglanti %>" SelectCommand="SELECT [GenreName] FROM [Genres] ORDER BY [GenreName]"></asp:SqlDataSource>
             </div>    

    <div class="form-group">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Film Bilgilerini Güncelle" OnClick="Button1_Click"  />
    </div>
       </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

