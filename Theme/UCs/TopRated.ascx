<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TopRated.ascx.cs" Inherits="Theme_UCs_TopRated" %>
<asp:Repeater ID="rptr_TopRated_Movies" runat="server">
    <HeaderTemplate>
    <div class="clearfix"> 
    
    <!-- Main Side -->
    <div class="main-side clearfix" style="width:100%;">
        <div class="heading h-three h-two title">
               <h5 style="font: 700 20px/20px 'oswald', trebuchet ms;color: #222222;display: block;text-transform: uppercase;">EN ÇOK OYLANAN FİLMLER ( TOP 50 )</h5>
                </div>
    <ul style="list-style-type:decimal;">
    </HeaderTemplate>

    

    <ItemTemplate>
         
   
          <div class="top_rating_item" style="margin-left:5%">
       <div class="left_top_rating" style="width:210px;margin-right:-85px;">
          <img src="/Images/MovieImage/<%#Eval("Poster") %>" style="width:80px;height:130px;border:1px solid #ccc;" alt=""/>
          </div>
        <div class="centr" style="width:400px;margin-top:5%;">
           <li style="font-size:10pt;">
          <h2><a href="<%# WriteUrl(Eval("ID").ToString(),Eval("Title").ToString()) %>"><%#Eval("Title") %></a> <span style="color:#333;opacity:0.7;">(<%# Convert.ToDateTime(Eval("ReleaseDate")).ToString("yyyy")%>)</span></h2><br />

                 <img src="../../Images/Other/star-full-icon.png" width="25" height="25" style="position:absolute;margin-left:30%;margin-top:-40px;"/> 
            <h4 style="position:absolute;margin-left:32%;margin-top:-37px;font-size:15pt"> &nbsp;&nbsp;<%#Eval("Rate") %></h4><br />
           <h4 style="position:absolute;margin-left:36%;margin-top:-52px;font-size:15pt">/ &nbsp;&nbsp;<%#Eval("GenreName") %></h4>
           </li>
                 </div>
       
        <div class="clearfix"></div>
      </div>
      
    </ItemTemplate>



    <FooterTemplate>
          </ul>
    </div>
    <!-- Main Side --> 
    
  </div>
    </FooterTemplate>

</asp:Repeater>
