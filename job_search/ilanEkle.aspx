<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="ilanEkle.aspx.cs" Inherits="job_search.ilanEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>İlan Ekle</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Client Signup Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom Theme files -->
        <link href="Custom_CSS/signUpStyle.css" rel="stylesheet" />
        <link href="Custom_CSS/logo.css" rel="stylesheet" />
        <link href="Custom_CSS/text.css" rel="stylesheet" />
        <!-- //Custom Theme files -->
        <!-- web font -->
        <link href="//fonts.googleapis.com/css?family=Old+Standard+TT:400,400i,700" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <!--web font-->
        <!-- //web font -->
    </head>
    <script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
            }
        })();
    </script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
            }
        })();
    </script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
            }
        })();
    </script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-30027142-1', 'w3layouts.com');
        ga('send', 'pageview');
    </script>
    <body>
        <div class="main main-agileits">
            <div class="main-agilerow">
                <div class="signup-wthreetop">
                    <h3 class="label" style="text-align: center; height: 116px; padding-top: 8%">Lütfen aşağıdaki alanları doldurunuz.</h3>
                </div>
                <div class="contact-wthree">
                    <form id="form1" runat="server">
                        <div class="form-w3step1">
                            <asp:TextBox ID="txtilanadi" Style="width: 94%; height: 45px; background-color: #343a40; color: white;" placeholder="İlan Adı" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqilanadi" runat="server" ControlToValidate="txtilanadi" ErrorMessage="*Lütfen bu alanı doldurunuz." SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:TextBox ID="txtsirketadi" Style="width: 94%; height: 45px; background-color: #343a40; color: white;" placeholder="Şirket Adı" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqsirketadi" runat="server" ControlToValidate="txtsirketadi" ErrorMessage="*Lütfen bu alanı doldurunuz." SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:TextBox ID="txtilankonumu" Style="width: 94%; height: 45px; background-color: #343a40; color: white;" placeholder="İlan Konumu" runat="server"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rqilankonumu" runat="server" ControlToValidate="txtilankonumu" ErrorMessage="*Lütfen bu alanı doldurunuz." SetFocusOnError="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <h3 class="label">İş Tanımı:</h3>
                            <asp:TextBox ID="txtistanimi" Style="width: 94%; height: 150px; background-color: #343a40; color: white;" placeholder="İş tanımını giriniz." runat="server" TextMode="MultiLine"></asp:TextBox>&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rqistanimi" runat="server" ControlToValidate="txtistanimi" ErrorMessage="*Lütfen bu alanı doldurunuz." SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <h3 class="label">Aranan Özellikler:</h3>
                            <asp:TextBox ID="txtarananozellikler" Style="width: 94%; height: 150px; background-color: #343a40; color: white;" placeholder="Aranan özellikleri giriniz." runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqarananozellikler" runat="server" ControlToValidate="txtarananozellikler" ErrorMessage="*Lütfen bu alanı doldurunuz." SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <asp:Button ID="btnKaydol" runat="server" Text="İlan Ekle" OnClick="btnKaydol_Click" />
                        <asp:Label ID="lblmesaj" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#66FF33" Text="Ekleme işlemi başarılı." Visible="False"></asp:Label>
                    </form>
                </div>
            </div>
        </div>
        <!-- //main -->

    </body>
    </html>
</asp:Content>
