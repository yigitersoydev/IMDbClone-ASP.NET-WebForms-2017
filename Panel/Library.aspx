<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="Library.aspx.cs" Inherits="Panel_Library" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
     <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Kütüphane</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
     <asp:Panel ID="_success" runat="server" Visible="false">
        <div class="alert alert-success" role="alert">Dosya Kütüphaneye Başarılı Bir Şekilde Silindi.</div>
    </asp:Panel>
    <asp:Panel ID="_error" runat="server" Visible="false">
        <div class="alert alert-danger" role="alert">Bir Hata Meydana Geldi.</div>
    </asp:Panel>
    <asp:Repeater ID="librarygrid" runat="server">
        <HeaderTemplate>
            <table class="table table-hover">
                <tr>
                    <th>DOSYA</th>
                    <th>DOSYA URL</th>
                    <th>SİL</th>

                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <img src="../Library/<%#Eval("LibraryContent")%>" alt="" height="100" width="130" class="img-thumbnail images-extension" />
                </td>

                <td>
                    <input id="Text1" type="text" value="<%Response.Write(Session["url"].ToString()); %>/Library/<%#Eval("LibraryContent")%>" class="form-control deneme" />
                </td>

                <td>
                    <a href="?q=<%#Eval("LibraryID") %>">
                        <img src="../Images/Panel/delete.png" width="30" height="30" alt="" />
                    </a>
                </td>

            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
                <script>

                    $('img').error(function(){
					 
						  $(this).attr("src" ,"../Items/Items/no-image.jpg");	
						
					})
					
					  

				</script>
        </FooterTemplate>
    </asp:Repeater>
     </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

