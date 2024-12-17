<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bengal.aspx.cs" Inherits="CatShop2.bengal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

         .upper-section {
     background-image: url('imgs/bengalcat.jpg'); /* Replace 'background-image.jpg' with your actual image path */
     background-size: cover;
     background-position: center;
     background-repeat: no-repeat;
     padding: 20px; /* Adjust padding as needed */
     text-align: center; /* Optional: Center content in the upper section */
     height: 450px;
     position: relative;
 }

 .upper-section h1,
 .upper-section p {
     color: #fff; /* Set text color to be visible against the background */
     opacity: 0; /* Initially set opacity to 0 for the fade-in effect */
     animation: fadeIn 2s forwards; /* 2s duration, forwards to keep the final state */
 }

 @keyframes fadeIn {
     from {
         opacity: 0;
         transform: translateY(20px); /* Optional: Add a slight upward movement */
     }
     to {
         opacity: 1;
         transform: translateY(0);
     }
 }

 .content {
     padding: 20px;
 }

        .container {
            width: 80%; /* Adjust the width as needed */
            margin: 0 auto; /* Center the container */
        }

        .header {
            text-align: center;
            padding: 20px;
            background-color: #197e7e;
            color: #fff;
            margin-top:20px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        /* Additional styling for the table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #cd1765;
            color: white;
        }

        /* Decrease the width of the first column */
        td:first-child {
            width: 10%;
        }

        .lower-section {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="upper-section">
     <!-- Content specific to the upper section goes here -->
     <h1 style="color:#fff"><br />Welcome to Your Cat Nutrition Guideline</h1>
     <!-- Add your image here if needed -->
 </div>
    <div class="container">
        <div class="header">
            <h1>Bengal Cat Diet Chart</h1>
        </div>

        <!-- Upper Part: Table with Five Rows -->
        <table>
            <thead>
                <tr style="color:#970808">
                    <th>Serial No</th>
                    <th>Food Name</th>
                    <th>Food Image</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Fish or chicken bones</td>
                    <td><img src="imgs/bengalbones.jpg" alt="Food 1" width="60" height="60" /></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Beans (soy, peas, kidney beans)</td>
                    <td><img src="imgs/bengalbeans.jpg" alt="Food 2" width="60" height="60" /></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Salt and spices</td>
                    <td><img src="imgs/bengalsalt.jpg" alt="Food 3" width="60" height="60" /></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Medications formulated for humans, including vitamins</td>
                    <td><img src="imgs/bengalmedication.jpg" alt="Food 4" width="60" height="60" /></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Potatoes</td>
                    <td><img src="imgs/bengalpotato.jpg" alt="Food 5" width="60" height="60" /></td>
                </tr>
            </tbody>
        </table>

        <!-- Lower Part: Image -->

        
        <div class="lower-section">
            <img src="imgs/foodweight.jpg" alt="Bengal Cat" width="950px" height="800px" />
        </div>
    </div>
</asp:Content>