<%@ Page Title="" Language="C#" MasterPageFile="~/Theme/Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Theme_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_Content" Runat="Server">
    
    <div class="clearfix">
            <!-- Main Side -->
      
            <div class="main-side clearfix" style="width:67%">
          
                <!-- Movies -->
                <div class="heading h-three h-two title">
               <h5 style="font: 700 20px/20px 'oswald', trebuchet ms;color: #222222;display: block;text-transform: uppercase;">YENİ EKLENEN FİLMLER</h5>
                </div>

                <!-- News -->
                  <asp:PlaceHolder ID="ph_NewlyAdded" runat="server"></asp:PlaceHolder>
             <br />
                <!-- End News -->
                 <asp:PlaceHolder ID="ph_YearMovies" runat="server"></asp:PlaceHolder>

            </div>
            <!-- Main Side -->

            <!-- Sidebar -->
       <aside class="sidebar" style="box-shadow:0px 0px 5px #444;margin-top:4%;">
           
               
                <div class="widget tabs">
                   
                               <asp:PlaceHolder ID="ph_Categories" runat="server"></asp:PlaceHolder>
                    
                </div>




            </aside>
           
        </div>
</asp:Content>

