<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Panel_Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" runat="Server">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Kategoriler</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
            </div>
        </div>
        <div class="box-body">
            <asp:Repeater ID="membersgrid" runat="server">
                <HeaderTemplate>
                    <table class="table table-hover">
                        <tr>
                            <th></th>
                            <th>ID</th>
                            <th>Kategori Adı</th>
                            <th>Sil</th>
                        </tr>

                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td></td>
                        <td><%#Eval("ID") %>
               
                        </td>
                        <td><%#Eval("GenreName") %>
                            <br />
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
            <asp:Panel ID="pnlsyf" runat="server"></asp:Panel>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
        </div>
        <!-- /.box-footer-->
    </div>
</asp:Content>

