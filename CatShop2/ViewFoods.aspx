<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewFoods.aspx.cs" Inherits="CatShop2.ViewFoods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            margin-bottom: 20px;
        }

        .card-body {
            padding: 20px;
        }

        .img-fluid {
            max-width: 100%;
            height: auto;
        }

        h3 {
            color: #007bff;
        }

        .btn-secondary {
            background-color: #6c757d;
            color: #fff;
        }
    </style>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
                        });
                    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-sm-12">
                <center>
                    <h3>Food Inventory List</h3>
                </center>
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="alert alert-success d-none" role="alert" id="Panel1">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>"
                                    SelectCommand="SELECT * FROM [food_Inventory]"></asp:SqlDataSource>
                                <div class="col">
<asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:BoundField DataField="food_id" HeaderText="Food ID" ReadOnly="true" SortExpression="food_id" />

        <asp:TemplateField>
            <ItemTemplate>
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-7">
                            <div class="card-body">
                                <h4 class="card-title"><asp:Label ID="Label1" runat="server" Text='<%# Eval("food_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label></h4>
                                <p class="card-text">
                                    <span class="font-weight-bold">Food Id:</span> <asp:Label ID="label5" runat="server" Font-Bold="True" Text='<%# Eval("food_id") %>'></asp:Label><br />
                                    <span class="font-weight-bold">Food Weight(in gram):</span> <asp:Label ID="label2" runat="server" Font-Bold="True" Text='<%# Eval("food_weight") %>'></asp:Label><br />
                                    <span class="font-weight-bold">Price(in tk):</span> <asp:Label ID="label3" runat="server" Font-Bold="True" Text='<%# Eval("food_price") %>'></asp:Label><br />
                                    <span class="font-weight-bold">Description:</span> <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("food_description") %>'></asp:Label>
                                </p>
                                <div class="form-group mt-2">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server"
                                        Text='<%# Eval("status").ToString() == "Sold Out" ? "Sold Out" : "Add to Cart" %>'
                                        Enabled='<%# Eval("status").ToString() != "Sold Out" %>' OnClick="AddToCart_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <asp:Image CssClass="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("food_img") %>' />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col text-center">
                        <a href="homepage.aspx" class="btn btn-secondary">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
