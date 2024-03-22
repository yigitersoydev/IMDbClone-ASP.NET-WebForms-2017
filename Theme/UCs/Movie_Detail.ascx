<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Movie_Detail.ascx.cs" Inherits="Theme_UCs_Movie_Detail" %>
<asp:Repeater ID="rptr_Movie_Detail" runat="server">
    <HeaderTemplate>
        <style>
 
    </style>
<div class="clearfix">
    
         <div class="main-side single clearfix" style="width:100%;">
                
    </HeaderTemplate>
    <ItemTemplate>

         <article class="post">
                 <div class="top_rating_item" style="padding-bottom:0px;">
        <div class="left_top_rating" style="width:265px;margin-right:-85px;">
          <img src="/Images/MovieImage/<%#Eval("Poster") %>" style="width:260px;height:350px;position:relative;border:1px solid black;" alt=""/>
          </div>
        <div class="centr" style="margin-left:10%;width:70%;">
          <h2 style="text-transform:none;font-size:24pt;"><%#Eval("Title") %></h2><br />
          <hr style="margin-bottom:4%;" />
           <h4 style="font-size:14pt;margin-left:1%;">Yayınlanma Tarihi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Convert.ToDateTime(Eval("ReleaseDate")).ToString("dd/MM/yyyy")%></h4>
            <h4 style="font-size:14pt;margin-left:1%;">Film Türü &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("GenreName") %></h4>
            <img src="../../Images/Other/star-full-icon.png" style="width: 40px; height: 40px; position: absolute; margin-left: 1%;margin-top:15px;" />
          
            <h4 style="position: absolute; margin-left: 5%; font-size: 24pt;margin-top:23px;"><%#Eval("Rate") %> / <span style="font-size: 14pt">10</span></h4>
        </div>
    
        <div class="clearfix"></div>
      </div>
                    
                </article>
 
    </ItemTemplate>
    <FooterTemplate>
           <div class="clearfix"></div>
         
          </div>
        
        </div>
    </FooterTemplate>
</asp:Repeater>    
    
     <asp:Repeater ID="rptr_Movie_Detail_Cast" runat="server">
        <HeaderTemplate>
            <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Oyuncular</h3>
                            <div class="box-tools pull-right">
                               
                            </div>
                        </div>
                        <div class="box-body">
            <table class="table table-hover">
                <tr>
                    <th>Fotoğraf</th>
                    <th>Ad</th>
                    <th>Soyad</th>                  
                </tr>
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                <td style="width:50px">
                    <img src="../Images/CastImage/<%#Eval("Image") %>" alt="" height="100" width="200" class="img-thumbnail" />
                </td>
                <td>
                    <%#Eval("FirstName") %>
                </td>
                <td>
                     <%#Eval("LastName") %>
                </td>
           
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
            
                             </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>

        </FooterTemplate>
    </asp:Repeater>   