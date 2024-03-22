<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Panel_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">İletişim</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                           
    <asp:Panel ID="success" runat="server" Visible="false">
        <div class="alert alert-success" role="alert">Mesajlar Başarılı Bir Şekilde Silindi.</div>
    </asp:Panel>
    <asp:Panel ID="error" runat="server" Visible="false">
        <div class="alert alert-danger" role="alert">Bir Hata Meydana Geldi.</div>
    </asp:Panel>
    <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Hepsini Sil" OnClick="Button1_Click" />
    <asp:Repeater ID="contactgrid" runat="server">
        <HeaderTemplate>

            <table class="table table-hover">

                <tr>
                    <th>Gönderen Kişi</th>
                    <th>E-Posta</th>
                    <th>Mesaj</th>
                    <th>Cevapla</th>
                    <th>Sil</th>

                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <%#Eval("ContactName") %>
                </td>
                <td>
                    <%#Eval("ContactEmail") %>
                </td>
                 <td>
                    <%#Eval("ContactMessage") %>
                </td>
                 <td>
                    <a href="mailto:<%#Eval("ContactEmail") %>">
                        <img src="../Images/Panel/cevapla.png" width="30" height="30" alt="" />
                    </a>
                </td>
                <td>
                    <a href="?q=<%#Eval("ID") %>">
                        <img src="../Images/Panel/delete.png" width="30" height="30" alt="" />
                    </a>
                </td>
                
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
                                </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

