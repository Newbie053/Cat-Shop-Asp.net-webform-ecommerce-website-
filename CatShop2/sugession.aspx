<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sugession.aspx.cs" Inherits="CatShop2.sugession" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
        }

        .container {
            display: flex;
            flex-wrap: wrap; /* Allow container to wrap on smaller screens */
            justify-content: center; /* Center content horizontally */
            margin: 20px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden; /* Added to ensure children don't overflow */
            transition: box-shadow 0.3s ease; /* Add smooth transition for box-shadow */
        }

        .container:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
        }

        .dropdown-container {
            flex: 1;
            padding: 20px;
            box-sizing: border-box;
        }

        .dropdown-container .ddl-options {
            width: 100%; /* Adjusted width to be 100% */
            padding: 10px;
            font-size: 16px;
            transition: border 0.3s ease; /* Add smooth transition for border */
        }

        .ddl-options:hover {
            border: 1px solid #cd1765; /* Change border color on hover */
        }

        .btn-fetch {
            margin-top: 10px;
            padding: 10px;
            border: 1px solid #333;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease; /* Add smooth transition for background color */
        }

        .btn-fetch:hover {
            background-color: #cd1765; /* Change background color on hover */
            color: #fff; /* Change text color on hover */
        }

        .description-container {
            flex: 1;
            padding: 20px;
            box-sizing: border-box;
        }

        .description-container h4 {
            color: #cd1765;
            margin-bottom: 20px;
        }

        .image-container {
            flex: 1;
            overflow: hidden;
            display: flex; /* Make it a flex container */
            justify-content: center; /* Center along the horizontal axis */
            align-items: center; /* Center along the vertical axis */
        }

        .image-container img {
            max-width: 100%; /* Ensure the image doesn't exceed the container width */
            max-height: 100%; /* Ensure the image doesn't exceed the container height */
            border-radius: 10px;
            transition: transform 0.3s ease; /* Add smooth transition for image scale */
        }

        .image-container img:hover {
            transform: scale(1.1); /* Scale up the image on hover */
        }

        /* Additional styles for the link */
        .link-container {
            text-align: center;
            margin-top: 20px;
        }

        .link-container h5 {
            color: #ff0000;
            margin-bottom: 10px;
        }

        .external-link {
            color: #2862be;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s ease; /* Add smooth transition for link color */
        }

        .external-link:hover {
            color: #cd1765; /* Change link color on hover */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="dropdown-container">
            <h5 style="color:#cd1765">Choose your cat Breed from the drop-down menu:</h5>
            <asp:DropDownList ID="ddlOptions" runat="server" AutoPostBack="true" CssClass="ddl-options">
                <asp:ListItem Text="Bengal" Value="1" />
                <asp:ListItem Text="Siamese" Value="2" />
                <asp:ListItem Text="Ragdoll" Value="3" />
                <asp:ListItem Text="Maine Coon" Value="4" />
                <asp:ListItem Text="Domestic Shorthair" Value="5" />
            </asp:DropDownList>
            <asp:Button ID="btnFetchAndRedirect" runat="server" Text="Get Diet" OnClick="btnFetchAndRedirect_Click" CssClass="btn-fetch" />
        </div>

        <div class="description-container">
            <h4 style="color:#cd1765">Diet Suggestion for Your Cat </h4>
            <p>
                Welcome to our Diet Suggestion page! Here, you can choose your cat's breed from the dropdown menu and get personalized diet recommendations. Discover the best food suggestions for your cat's breed on our Diet Advice page. Find the right meals that make your cat healthy and happy. Learn how to feed your furry friend with delicious and nutritious options. Make every meal a special treat for your beloved cat.
            </p>
        </div>

        <div class="image-container">
            <!-- Add your image link here -->
            <img src="imgs/diet.jpg" alt="Diet Suggestion Image">
        </div>
    </div>
    <div class="link-container">
        <h5>If you don't know your cat breed </h5>
        <a href="https://29dc-34-173-45-153.ngrok-free.app/" class="external-link">
            Click Here
        </a>
    </div>
</asp:Content>