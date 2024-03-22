<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Actor_Detail.ascx.cs" Inherits="Theme_UCs_Actor_Detail" %>
<asp:Repeater ID="rptr_Actor_Detail" runat="server">
    <HeaderTemplate>
        
<div class="clearfix">

         <div class="main-side single clearfix" style="width:100%;">
                
    </HeaderTemplate>
    <ItemTemplate>

         <article class="post">
                 <div class="top_rating_item" style="padding-bottom:0px;">
        <div class="left_top_rating" style="width:265px;margin-right:-85px;">
          <img src="/Images/CastImage/<%#Eval("Image") %>" style="width:260px;height:350px;position:relative;" alt=""/>
          </div>
        <div class="centr" style="margin-left:10%;width:70%;">
          <h2 style="text-transform:none;font-size:24pt;"><%#Eval("FirstName") %> <%#Eval("LastName") %></h2><br />
            <h5 style="color:black;opacity:0.7;margin-top:-2%;">Actor / Actress</h5>
             <hr style="margin-bottom:4%;" />
           <h4 style="font-size:14pt;margin-left:1%;">Birth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Convert.ToDateTime(Eval("Birth")).ToString("dd/MM/yyyy")%></h4>
            <h4 style="font-size:14pt;margin-left:1%;">Nation &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Nation") %></h4>
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
<!--<div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Filmleri</h3>
                            <div class="box-tools pull-right">
                               
                            </div>
                        </div>
                        <div class="box-body">
<asp:Repeater ID="rptr_Actor_Detail_Movies" runat="server">
        <HeaderTemplate>
            <table class="table table-hover">
                <tr>
                    <th>Poster</th>
                    <th>Film Adı</th>
                    <th>Yayınlanma Tarihi</th>
                    <th>Rate</th>                  
                </tr>
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                <td style="width:50px">
                    <img src="../Images/MovieImage/%#Eval("Poster") %>" alt="" height="100" width="200" class="img-thumbnail" />
                </td>
                <td>
                    %#Eval("Title") %>
                </td>
                <td>
                    %#Eval("ReleaseDate") %>
                </td>
                <td>
                     %#Eval("Rate") %>
                </td>
           
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
                             </div>
                     
                        <div class="box-footer">
                        </div>
                      
                    </div>-->