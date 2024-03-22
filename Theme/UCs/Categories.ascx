<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Categories.ascx.cs" Inherits="Theme_UCs_Categories" %>

<asp:Repeater ID="rptr_Categories" runat="server">
    <HeaderTemplate>

        <div class="clearfix">

            <!-- Main Side -->
            <div class="main-side clearfix" style="width: 98%;margin-left:-5px;padding-bottom:63px;">
                <div class="heading h-three h-two title" style="padding-bottom:0">

                    <h5 style="font: 700 20px/20px 'oswald', trebuchet ms; color: #222222; display: block; text-transform: uppercase;">KATEGORİLER (A-Z)</h5>
                </div>
    </HeaderTemplate>
    <ItemTemplate>
    
       <div style="float:left;margin:5px;padding-top:2%;width:120px;height:25px;border:1px solid black;background-color:#e6b91e;">
          <h2 style="margin-left:15%;"> <a style="color:black;margin-left:10%" href="<%# WriteUrl(Eval("ID").ToString(),Eval("GenreName").ToString()) %>">  <%#Eval("GenreName") %> </a> </h2>
       </div>
  
    </ItemTemplate>

    <FooterTemplate>
        </div>
   
        <!-- Main Side -->

        </div>
    </FooterTemplate>
</asp:Repeater>
