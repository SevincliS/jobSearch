<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="signUpPage.aspx.cs" Inherits="job_search.signUpPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="server">
    <!DOCTYPE html>
<html>
<head>
<title>Client Signup Form Flat Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Client Signup Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
    <link href="Custom_CSS/signUpStyle.css" rel="stylesheet" />
    <link href="Custom_CSS/logo.css" rel="stylesheet" />
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
                <img style="height:210px;margin-top:-9%;margin-left:29%;width:223px; padding-left:0%" src="http://localhost:43308/resimler/isbulLogo3.png" />
			</div>	
			<div class="contact-wthree">
				<form id="form1" runat="server">
					<div class="form-w3step1">
                        <asp:TextBox ID="txtisim" style="width:94%; height:30px; background-color: #343a40;color: white;" placeholder="Ad Soyad" runat="server"></asp:TextBox>
                        <asp:requiredfieldvalidator id="rqisim" runat="server" controltovalidate="txtisim" errormessage="*Lütfen bu alanı doldurunuz." setfocusonerror="true" display="Dynamic" ForeColor="Red"></asp:requiredfieldvalidator>
                        <br />
                        <asp:TextBox ID="txtemail" style="width:94%; height:30px; background-color: #343a40;color: white;" placeholder="E-posta" runat="server"></asp:TextBox>
                        <asp:requiredfieldvalidator id="rqeposta" runat="server" controltovalidate="txtemail" errormessage="*Lütfen bu alanı doldurunuz." setfocusonerror="true" display="Dynamic" ForeColor="Red"></asp:requiredfieldvalidator>
                        <br />
						<asp:TextBox ID="txtsifre" style="width:94%; height:30px; background-color: #343a40;color: white;" placeholder="Parola" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:requiredfieldvalidator id="rqsifre" runat="server" controltovalidate="txtsifre" errormessage="*Lütfen bu alanı doldurunuz." setfocusonerror="true" display="Dynamic" ForeColor="Red"></asp:requiredfieldvalidator>
                        <br />
                        <asp:TextBox ID="txtsifretekrar" style="width:94%; height:30px; background-color: #343a40;color: white;" placeholder="Parola Doğrula" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:requiredfieldvalidator id="rqsifretekrar" runat="server" controltovalidate="txtsifretekrar" errormessage="*Lütfen bu alanı doldurunuz." setfocusonerror="true" display="Dynamic" ForeColor="Red"></asp:requiredfieldvalidator>
                        <br />
					</div>
                    <asp:Button ID="btnKaydol" runat="server" Text="Kaydol" OnClick="btnKaydol_Click" />

				    <asp:Label ID="lblmesaj" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#66FF66" Text="Kaydolma işlemi başarılı." Visible="False"></asp:Label>

				</form>
			</div>  
		</div>	
	</div>	
	<!-- //main -->
	<!-- copyright -->
	<div class="w3copyright-agile">
		<p>© 2017 Client Signup Form. All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
	</div>
	<!-- //copyright --> 
</body>
</html>
</asp:Content>
