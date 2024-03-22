<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Newly_Added.ascx.cs" Inherits="Theme_UCs_Newly_Added" %>
<asp:Repeater ID="rptr_Newly_Added_Movies" runat="server">
    <HeaderTemplate>
<!--
    <div class="clearfix"> 
    
   
    <div class="main-side clearfix" style="width:100%;">-->
     <!-- 
         <div class="top_rating_item" style="margin-left:5%">
        <div class="left_top_rating" style="width:265px;margin-right:-85px;">
          <img src="/Images/MovieImage/%#Eval("Poster") %>" style="width:150px;height:200px;" alt=""/>
          </div>
        <div class="centr" style="width:400px;">
          <h2><a href="%# WriteUrl(Eval("ID").ToString(),Eval("Title").ToString()) %>">%#Eval("Title") %></a></h2><br />
           <h4 style="margin-top:20px">Yayınlanma Tarihi &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;%#Eval("ReleaseDate") %></h4><br />
            <h4>NIMDb Puanı &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;%#Eval("Rate") %> / 10</h4><br />
           <h4>Tür &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<%#Eval("GenreName") %></h4>
          <div class="cats_def" style="margin-top:47px;"><a href="%# WriteUrl(Eval("ID").ToString(),Eval("Title").ToString()) %>" style="background-color:#e6b91e;color:black;border:0.5px solid black;">Devamı..</a></div>
        </div>
       
        <div class="clearfix"></div>
      </div>
         -->
         <style>
            #wrapper h2 {
                font-family: "Gotham Rounded",Helvetica,Arial,sans-serif;
                font-size: 16px;
                font-weight: 600;
                color: #FFFFFF;
            }

            figcaption {
                padding: 5px;
                font-family: 'Cherry Swash', cursive;
                font-size: 1em;
                font-weight: 700;
                border: none;
                background: transparent;
                word-wrap: normal;
                text-align: center;
            }

            a {
                text-decoration: none;
            }

            .one-edge-shadow {
                -webkit-box-shadow: 0 10px 8px -6px black;
                -moz-box-shadow: 0 10px 8px -6px black;
                box-shadow: 0 10px 8px -6px black;
            }

        </style>
        <div class="clearfix">

            <!-- Main Side -->
            <div class="main-side clearfix" style="width: 100%;">
    </HeaderTemplate>

    

    <ItemTemplate>
      
           <div class="top_rating_item" style="margin-left: 2%; float: left; margin-top: 2%; height: 340px;margin-right:4%;">
            <div class="left_top_rating" style="margin-right: -33px; padding-bottom: 2%; position: relative;">

              <img src="../../Images/Other/black-bar.png" style="width:216px;height:40px;position:absolute;margin-top:121%;opacity:0.7;" />
                    <img src="../../Images/Other/star-full-icon.png" style="width: 30px; height: 30px; position: absolute; margin-left: 2%; margin-top: 123%;" />
                    <h2 style="position: absolute; margin-left: 18%; margin-top: 126%; font-size: 19px; color: #fff;"><%#Eval("Rate") %> / <span style="font-size: 14px">10</span></h2>
                <img src="../../Images/Other/calender.png" style="width:25px;height:25px;position:absolute;margin-left:64%;margin-top:125%;"/>
                <h2 style="position: absolute; margin-left: 78%; margin-top: 126%; font-size: 19px; color: #fff;"> <%# Convert.ToDateTime(Eval("ReleaseDate")).ToString("yyyy")%></h2>
                <a href="<%# WriteUrl(Eval("ID").ToString(),Eval("Title").ToString()) %>">

                    <img src="/Images/MovieImage/<%#Eval("Poster") %>" class="one-edge-shadow" style="width: 216px; height: 300px;" alt="" />
                </a>

                <br />
                <div id="wrapper">
                    <figcaption><a href="<%# WriteUrl(Eval("ID").ToString(),Eval("Title").ToString()) %>" style="color: black;"><%#Eval("Title") %></a></figcaption>
                    <!-- <h2 style="position: absolute; left: 7px; top: 252px;"><a href="%# WriteUrl(Eval("ID").ToString(),Eval("Title").ToString()) %>" style="color: white;">%#Eval("Title") %></a></h2>-->
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
       
    </ItemTemplate>



    <FooterTemplate>
         </div>
  
        </div>

     <!--      
    </div>
  
    
  </div>-->
    </FooterTemplate>

</asp:Repeater>
<asp:Panel ID="pnlsyf" runat="server"></asp:Panel>