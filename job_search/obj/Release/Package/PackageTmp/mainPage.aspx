<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="mainPage.aspx.cs" Inherits="job_search.mainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="server">

    <form id="form1" runat="server">
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

        </head>

        <body>



            <!-- Page Content -->
            <div class="container">

                <!-- Page Heading -->
                
                <h1 class="my-4">İlanlar</h1>

                <div class="row">

                    <asp:Repeater ID="rpilan" runat="server" OnItemCommand="rpilan_ItemCommand" OnItemDataBound="rpilan_ItemDataBound">
                        <ItemTemplate>
                            <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
                                <div class="card h-100">
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <asp:LinkButton ID="link" runat="server" style="color:#e78200" Text='<%#Eval("IlanAdi") %>' CommandArgument='<%#Eval("ID")%>'></asp:LinkButton>
                                        </h4>
                                        <h5>

                                            <%#Eval("SirketAdi") %>
                                        </h5>
                                        <p class="card-text"><%#Eval("IsTanimi") %></p>
                                        <asp:Label ID="lblilanid" runat="server" Text='<%#Eval("ID")%>' Visible="false"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <!-- /.container -->
                <!-- Pagination -->
                <div style="overflow:hidden; padding-left:45%">
                    <asp:Repeater ID="rptPaging" OnItemCommand="rptPaging_ItemCommand" runat="server">
                        <ItemTemplate>



                            <ul class="pagination justify-content-center" style="display:inline-block">
                               
                                <li class="page-item">
                                    <asp:LinkButton  ID="linkpage" style="color:#e78200"  CssClass="page-link" runat="server" CommandName="Page" CommandArgument="<%#Container.DataItem %>">
                                    <%# Container.DataItem %>

                                    </asp:LinkButton>
                                </li>
                            </ul>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </body>

        </html>



    </form>

</asp:Content>
