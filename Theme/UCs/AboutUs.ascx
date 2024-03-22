<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AboutUs.ascx.cs" Inherits="Theme_UCs_AboutUs" %>
<asp:Repeater ID="rptr_About" runat="server">
    <HeaderTemplate>

    </HeaderTemplate>
    <ItemTemplate>
<div class="clearfix">

            <!-- Main Side -->
            <div class="main-side single full_width clearfix">

                <article class="post">
                       <div class="meta"><span class="date"><%#Eval("AboutDate") %></span> <a class="admin">admin</a> </div>
                    <h1 style="margin-left: 34%; margin-bottom: 4%;"><strong><%#Eval("AboutTitle") %></strong></h1>
                    <figure>

                        <img src="/Images/Other/<%#Eval("AboutImage") %>" alt="" />

                    </figure>
                   
                    <p style="margin-bottom: 35px;margin-top:30px; font-family: cursive; font-size: 15px; line-height: 21px;">
                        <%#Eval("AboutContent") %>
                    </p>
                    

                </article>

            </div>
            <!-- Main Side -->
        </div>
    </ItemTemplate>
    <FooterTemplate>

    </FooterTemplate>
</asp:Repeater>