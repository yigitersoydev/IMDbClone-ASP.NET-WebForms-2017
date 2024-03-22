<%@ Page Title="" Language="C#" MasterPageFile="~/Panel/PanelMaster.master" AutoEventWireup="true" CodeFile="AboutUsEdit.aspx.cs" Inherits="Panel_AboutUsEdit" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPanelContent" Runat="Server">
     <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Hakkımızda</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
    <asp:Panel ID="success" runat="server" Visible="false">
        <div class="alert alert-success" role="alert">Başarılı Bir Şekilde Eklendi.</div>
    </asp:Panel>
    <asp:Panel ID="error" runat="server" Visible="false">
        <div class="alert alert-danger" role="alert">Bir Hata Meydana Geldi.</div>
    </asp:Panel>
    <div class="form-group">
        <label>Başlık</label>
        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>İçerik</label>
        <CKEditor:CKEditorControl ID="CKEditor1" runat="server">
        </CKEditor:CKEditorControl>
    </div>

    
                            <div class="form-group">
       
            <asp:CheckBox ID="chk_timeUpdate" Text="-Tarihi Güncelle" Checked="true" AutoPostBack="true" runat="server" />
    </div>
    <div class="form-group">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Güncelle" OnClick="Button1_Click" />
    </div>
                               </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                        </div>
                        <!-- /.box-footer-->
                    </div>
</asp:Content>

