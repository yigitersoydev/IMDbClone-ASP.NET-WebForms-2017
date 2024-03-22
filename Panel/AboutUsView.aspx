<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="AboutUsView.aspx.cs" Inherits="Panel_AboutUsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Hakkımızda</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                           
                       
    <asp:Repeater ID="aboutgrid" runat="server">
        <HeaderTemplate>
            <table class="table table-hover">
                <tr>
                    <th>ID</th>
                    <th>Başlık</th>
                    <th>Sil</th>
                    <th>Düzenle</th>
                  
                </tr>
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                <td>
                   <%#Eval("ID") %>
                </td>
                <td>
                   <%-- <%#Eval("newsContent").ToString().Substring(0,350) %>...--%>
                    <%#Eval("AboutTitle") %>
              
                </td>
              
                 <td>
                    <a href="?del=<%#Eval("ID") %>"> <img src="../Images/Panel/delete.png" width="30" height="30" alt="" /> </a>
                </td>
                 <td>
                    <a href="?edit=<%#Eval("ID") %>"> <img src="../Images/Panel/edit.png" width="30" height="30" alt="" /> </a>
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

