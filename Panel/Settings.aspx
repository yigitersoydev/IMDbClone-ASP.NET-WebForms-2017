<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="Panel_Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Ayarlar</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
    <script>
        jQuery(document).ready(function ($) {
            $('.hello_world').pwstabs();
        });
    </script>
    <div class="hello_world">

        <div data-pws-tab="anynameyouwant1" style="width: 100%" data-pws-tab-name="Ayarlar" data-pws-tab-icon="fa fa-cogs">


            <div class="form-group">
                <label>Şirket Adı : </label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Şirket Bilgisi :</label>
                <asp:TextBox ID="TextBox2" Rows="5" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Şirket Telefonu :</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Şirket E-Postası :</label>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="ornek@firma.com" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Şirket Fax :</label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Şirket Bilgilerini Kaydet" />
            </div>

        </div>











        <div data-pws-tab="anynameyouwant2" data-pws-tab-name="Tasarım" data-pws-tab-icon="fa fa-desktop">
            <div class="form-group">
                <label>Logo</label>
                <asp:FileUpload ID="fup_logo" CssClass="form-control" runat="server" />
            </div>
            <div class="form-group">
                <label>Favicon</label>
                <asp:FileUpload ID="fup_fav" CssClass="form-control" runat="server" />
            </div>
            <div class="form-group">
                <asp:Button ID="btn_design" runat="server" CssClass="btn btn-primary" Text="Değişiklikleri Kaydet" OnClick="btn_design_Click" />
            </div>
        </div>

        
          <div data-pws-tab="anynameyouwant3" style="width: 100%" data-pws-tab-name="Site" data-pws-tab-icon="fa fa-server">


            <div class="form-group">
                <label>SEO Başlık :  </label>
                <asp:TextBox ID="txt_seo_title" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>SEO Meta Açıklaması :</label>
                <asp:TextBox ID="txt_seo_meta" Rows="5" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Meta Anahtar Kelimeler :</label>
                <asp:TextBox ID="txt_seo_keywords" runat="server" PlaceHolder="Her Kelimeden Sonra Virgül(,) İşareti Koyunuz." CssClass="form-control"></asp:TextBox>
            </div>
          
            <div class="form-group">

                <asp:Button ID="btn_seo" runat="server" CssClass="btn btn-primary" Text="Kaydet" />
            </div>

        </div>


    </div>

    <script>
        $('.tabset11').pwstabs({
            effect: 'none',
            containerWidth: '900px',
            theme: "pws_theme_orange"
        });
    </script>
                            
                             </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

