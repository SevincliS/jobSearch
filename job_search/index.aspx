<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="job_search.signInPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="server">
    <!DOCTYPE html>
<html>
<head>
<title>Is Bul</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Client Signup Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
    <link href="Custom_CSS/signUpStyle.css" rel="stylesheet" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Old+Standard+TT:400,400i,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
<!-- //web font -->
</head>
<body>
<script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
<script>
(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
  		// format, zoneKey, segment:value, options
  		_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
  	}
})();
</script>
<script>
(function(){
if(typeof _bsa !== 'undefined' && _bsa) {
	// format, zoneKey, segment:value, options
	_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
}
})();
</script>
<script>
(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
  		// format, zoneKey, segment:value, options
  		_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
  	}
})();
</script><script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-30027142-1', 'w3layouts.com');
  ga('send', 'pageview');
</script>
<body>
	<!-- main -->
	<div class="main main-agileits">
		<h1>Client Signup Form</h1>
		<div class="main-agilerow"> 
			<div class="signup-wthreetop">
                &nbsp;<img style="height:210px;margin-top:-9%;margin-left:29%;width:223px; padding-left:0%" src="resimler/isbulLogo3.png" /></div>	
			<div class="contact-wthree">
				<form id="form1" runat="server">
					<div class="form-w3step1">
                        <asp:TextBox ID="txtemail" style="width:94%; height:30px; background-color: #343a40;color: white;" placeholder="E-posta" runat="server" TextMode="Email"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtsifre" style="width:94%; height:30px; background-color: #343a40;color: white;" placeholder="Parola" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
					</div>
                    <asp:Button ID="btngiris" runat="server" Text="Giriş Yap" OnClick="btngiris_Click" />
                    &nbsp;
                    <br />
                    <asp:Button ID="btnKaydolYonlendir" runat="server" Text="Kaydol" OnClick="btnKaydolYonlendir_Click" />
				    <asp:Label ID="lblhata" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Hatalı giriş yaptınız." Visible="False"></asp:Label>
                </form>
			</div>  
		</div>	
	</div>	
	<!-- //main -->
	
</body>
</html>
</asp:Content>
