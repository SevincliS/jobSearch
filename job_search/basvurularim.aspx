<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="basvurularim.aspx.cs" Inherits="job_search.basvurularim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="server">
    <form id="form2" runat="server">
    <!DOCTYPE html>
    <html lang="en">
        

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Basvurularım</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/1-col-portfolio.css" rel="stylesheet">
    </head>

    <body>

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading -->
            <h1 class="my-4">Başvurularım</h1>

            <!-- Project One -->
            <asp:Repeater ID="rpbasvuru" runat="server" OnItemCommand="rpbasvuru_ItemCommand">
                <ItemTemplate>
                    <div class="row">
                        <div>
                            <asp:LinkButton ID="link" runat="server" style="font-size:larger;color:#e78200" Text='<%#Eval("IlanAdi") %>' CommandArgument='<%#Eval("ID")%>'></asp:LinkButton>
                            <p><%#Eval("SirketAdi") %></p>
                            <p><%#Eval("IsTanimi") %></p>
                            <asp:Label ID="lblilanid" runat="server" Text='<%#Eval("ID")%>' Visible="false"></asp:Label>
                            <asp:Button CssClass="btn btn-primary" ID="btncikar" runat="server" style="background-color:#e78200;border-color:#e78200;" Text="Başvuru Kaldır" OnClick="btncikar_Click" />
                        </div>
                    </div>
                    <hr>
                </ItemTemplate>
            </asp:Repeater>



            <!-- Pagination -->
            <div style="overflow:hidden; padding-left:45%">
                    <asp:Repeater ID="rptPaging2" OnItemCommand="rptPaging2_ItemCommand" runat="server">
                        <ItemTemplate>



                            <ul class="pagination justify-content-center" style="display:inline-block">
                               
                                <li class="page-item">
                                    <asp:LinkButton  ID="linkpage" style="color:#e78200" CssClass="page-link" runat="server" CommandName="Page" CommandArgument="<%#Container.DataItem %>">
                                    <%# Container.DataItem %>

                                    </asp:LinkButton>
                                </li>
                            </ul>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>

        </div>
        <!-- /.container -->

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

    </html>

    </form>
</asp:Content>
