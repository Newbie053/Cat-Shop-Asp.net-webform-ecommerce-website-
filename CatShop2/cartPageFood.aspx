<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cartPageFood.aspx.cs" Inherits="CatShop2.cartPageFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: white; /* Set your desired background color (orange in this case) */
        }

        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
            background-color: #37e6ce;
        }

        .card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card-body {
            padding: 20px;
        }

        #imgview {
            border-radius: 8px;
        }

        .font-weight-bold {
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .btn-place-order {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <h4>Food Details</h4>
                        </div>
                        <div class="text-center mb-4">
                            <img id="imgview" class="img-fluid" src="Cat_inventory/cat_food1.png" alt="Food Image" />
                        </div>
                        <hr>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label class="font-weight-bold">Food ID:</label>
                                <asp:Label CssClass="form-control" ID="Label1" runat="server"></asp:Label>
                            </div>
                            <div class="col-md-6">
                                <label class="font-weight-bold">Price:</label>
                                <asp:Label CssClass="form-control" ID="Label2" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold">Food Name:</label>
                            <asp:Label CssClass="form-control" ID="Label3" runat="server"></asp:Label>
                        </div>
                        <div class="text-center mt-4">
                            <asp:Button ID="btnPlaceOrder" runat="server" CssClass="btn btn-success btn-place-order"
                                Text="Place Order" OnClick="btnPlaceOrder_Click1" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
