<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Director_Detail.ascx.cs" Inherits="Theme_UCs_Director_Detail" %>
<asp:Repeater ID="rptr_Director_Detail" runat="server">
    <HeaderTemplate>
        
<div class="clearfix">

         <div class="main-side single clearfix" style="width:100%;">
                
    </HeaderTemplate>
    <ItemTemplate>

         <article class="post">
                 <div class="top_rating_item" style="padding-bottom:0px;">
        <div class="left_top_rating" style="width:265px;margin-right:-85px;">
          <img src="/Images/DirectorImage/<%#Eval("Image") %>" style="width:260px;height:350px;position:relative;" alt=""/>
          </div>
        <div class="centr" style="margin-left:10%;width:70%;">
          <h2 style="text-transform:none;font-size:24pt;"><%#Eval("FirstName") %> <%#Eval("LastName") %></h2><br />
            <h5 style="color:black;opacity:0.7;margin-top:-2%;">Director / Writer</h5>
             <hr style="margin-bottom:4%;" />
           <h4 style="font-size:14pt;margin-left:1%;">Birth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Convert.ToDateTime(Eval("Birth")).ToString("dd/MM/yyyy")%></h4>
            <h4 style="font-size:14pt;margin-left:1%;">Nation &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Nation") %></h4>
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