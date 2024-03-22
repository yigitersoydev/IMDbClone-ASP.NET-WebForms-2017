<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MovieDirector.ascx.cs" Inherits="Theme_UCs_MovieDirector" %>
<asp:Repeater ID="rptr_MovieDirector" runat="server">
    <HeaderTemplate>
        <div class="clearfix">

            <div class="main-side clearfix" style="width: 50%; margin-top: 3%;margin-left:3%;">
                <div class="title">
                    <h5>Director(s)</h5>
                </div>
    </HeaderTemplate>
    <ItemTemplate>


        <div class="top_rating_item" style="margin-bottom: -11px;">

            <div class="centr">
                <img src="/Images/DirectorImage/<%#Eval("Image") %>" alt="" height="88" width="76" class="img-thumbnail" />
                <h2 style="position:absolute;margin-left:7%;margin-top:-4%;"><a href="<%# WriteUrl(Eval("ID").ToString(),Eval("FirstName").ToString()) %>"><%#Eval("FirstName") %> <%#Eval("LastName") %></a></h2>
                <br />

                <div class="cats_def" style="margin-top: 20px;"></div>
            </div>

            <div class="clearfix"></div>
        </div>

    </ItemTemplate>

    <FooterTemplate>
        </div>
  
    
  </div>
    </FooterTemplate>

</asp:Repeater>
