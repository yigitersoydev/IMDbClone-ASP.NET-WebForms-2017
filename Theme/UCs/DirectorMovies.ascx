<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DirectorMovies.ascx.cs" Inherits="Theme_UCs_DirectorMovies" %>
<asp:Repeater ID="rptr_DirectorMovies" runat="server">
    <HeaderTemplate>
   <div class="clearfix"> 
    
    <!-- Main Side -->
    <div class="main-side clearfix" style="width:50%;margin-top:3%;margin-left:3%;">
      <div class="title">
        <h5>Filmography ( Director )</h5>
      </div> 
       
    </HeaderTemplate>
    <ItemTemplate>

       

      
          <div class="top_rating_item"  style="margin-bottom:-11px;">
       
        <div class="centr" style="width:665px;">
             <img src="/Images/MovieImage/<%#Eval("Poster") %>" alt="" height="88" width="76" style="border:1px solid #ccc" class="img-thumbnail" />
          <h2 style="position:absolute;margin-left:7%;margin-top:-4%;"><a href="<%# WriteUrl(Eval("ID").ToString(),Eval("Title").ToString()) %>"> <%#Eval("Title") %></a></h2><br />
           
        
          <div class="cats_def" style="margin-top:20px;"></div>
        </div>
       
        <div class="clearfix"></div>
      </div>
       
    </ItemTemplate>



    <FooterTemplate>
          
    </div>
  
    
  </div>
    </FooterTemplate>

</asp:Repeater>