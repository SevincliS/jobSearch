<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="jobPage.aspx.cs" Inherits="job_search.jobPage" %>

    <asp:Content ID ="conent1" ContentPlaceHolderID="cph1" runat="server">
        <!DOCTYPE html>
    <html lang="en">
         <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>4 Col Portfolio - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
      <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
      <link href="Custom_CSS/main.css" rel="stylesheet" />
             <link href="Custom_CSS/text.css" rel="stylesheet" />
             <script src="js/jquery-3.3.1.min.js"></script>
             <script src="Custom_Js/Js_autoSize.js"></script>
  </head>
        <body>
    <form id="form1" runat="server">
        <br />
        <asp:Label ID="lblIsVeren" class="label" style="margin-left:10%" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblTarih" class="label" style="margin-left:70%" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="lblIs" class="label" style="margin-left:10%;" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblKonum" class="label" style="margin-left:2%" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="lbltanim" class="label" style="margin-left:10%" runat="server" Text="İş Tanımı:"></asp:Label>
        <br />
        
        <asp:TextBox ID="txtTanim" runat="server" style="margin-left:10%" class="textarea" ReadOnly="true" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Label ID="lblGereklilikler" class="label" style="margin-left:10%" runat="server" Text="Aranan Özellikler:"></asp:Label>
       <br />
         <asp:TextBox ID="txtGereklilikler" runat="server" style="margin-left:10%" class="textarea" ReadOnly="true" TextMode="MultiLine"></asp:TextBox>
        <br />
            <asp:Button ID="Button1" class="btn btn-primary" style="background-color:#e78200; border-color:#e78200; margin-left:10%; margin-top:1%; width:125px; height:50px" runat="server" Text="Başvur" OnClick="Button1_Click"  />
            <br />
        <asp:Label ID="lblmesaj" runat="server" style="margin-left:10%; margin-top:1%;" Font-Bold="True" Font-Size="Large" ForeColor="#66FF33" Text="Başvuru işleminiz başarı ile gerçekleşti." Visible="False"></asp:Label>
    </form>
            <br />
            </body>
   </html>

</asp:Content> 