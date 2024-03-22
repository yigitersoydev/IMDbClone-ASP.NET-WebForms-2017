<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="Directors.aspx.cs" Inherits="Panel_Directors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Yönetmenler</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                           
                       
    <asp:Repeater ID="newsgrid" runat="server">
        <HeaderTemplate>
            <table class="table table-hover">
                <tr>
                    <th>ID</th>
                    <th>Fotoğraf</th>
                    <th>Ad</th>
                    <th>Soyad</th>
                    <th>Doğum Tarihi(DD.MM.YY)</th>
                    <th>Ulus</th>
                    <th>Delete</th>
                    <th>Edit</th>
                  
                </tr>
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                <td>
                   <%#Eval("ID") %>
                </td>
                <td style="width:50px">
                    <img src="../Images/DirectorImage/<%#Eval("Image") %>" alt="" height="100" width="200" class="img-thumbnail" />
                </td>
                <td>
                    <%#Eval("FirstName") %>
                </td>
                <td>
                     <%#Eval("LastName") %>
                </td>
                <td>
             <%# Convert.ToDateTime(Eval("Birth")).ToString("dd/MM/yyyy")%>
                </td>
                <td>
             <%#Eval("Nation") %>
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
                            <asp:Panel ID="pnlsyf" runat="server"></asp:Panel>
                             </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

