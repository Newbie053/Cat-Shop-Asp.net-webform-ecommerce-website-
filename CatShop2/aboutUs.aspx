<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="CatShop2.aboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Style for About Us section */
        .aboutUs {
            padding: 40px 20px;
            text-align: center;
            background-color: #f8f8f8; /* Light gray background color */
        }

        .about-heading h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #ff0000; /* Red heading color */
        }

        .about-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        .about-content {
            flex: 1;
            text-align: left;
            padding-right: 20px;
        }

        .about-content h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 15px;
        }

        .about-content p {
            font-size: 16px;
            color: #555;
            margin-bottom: 15px;
        }

        .about-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .info-section {
            color: white;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
            background-color: #36dde125; /* Blue background color */
        }

        .info-section h2 {
            font-size: 24px;
            margin-bottom: 15px;
            color: red; /* Red heading color */
        }

        .info-section p {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .about-mail {
            margin-top: 40px;
            text-align: center;
        }

        .contact-info {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .contact-item {
            display: flex;
            align-items: center;
            margin: 10px 0; /* Adjust the margin for spacing */
        }

        .contact-item img {
            width: 30px; /* Set the width of the icons */
            height: auto;
            margin-right: 10px;
        }

        .contact-item p, .contact-item a {
            font-size: 16px;
            margin: 0;
            transition: color 0.3s; /* Smooth color transition */
        }

        .contact-item a:hover {
            color: #f71414; /* Blue text color on hover */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="aboutUs">
        <div class="about-heading">
            <h1>About Us</h1>
        </div>
        <div class="about-container">
            <div class="about-content">
                <h2>Welcome to our website</h2>
                <p>Welcome to CatShop, where feline dreams come to life! Founded by Sabnaj Akter and Dipto Saha, our passion for cats led us to establish a haven for cat lovers in Sonadanga, Khulna. At CatShop, we offer a unique and delightful shopping experience, going beyond a mere store to embody a community of dedicated cat enthusiasts.</p>
            <p>As proud owners ourselves, we understand the deep bond between cats and their owners. Our commitment is to provide a comprehensive range of high-quality products, from nutritious cat food to stylish accessories and health essentials. Every item in our shop reflects our dedication to ensuring that your beloved feline friends lead happy and healthy lives.</p>
                </div>
            <div class="about-image">
                <img src="imgs/aboutus.jpg" alt="About Us Image" />
            </div>
        </div>
        <div class="info-section">
            <h2 style="color:orange">Our Motive</h>
            <p style="color:#c72222">Our Motive is to provide high-quality products and exceptional service. At our online store, we are committed to providing top-notch products and services to enhance the well-being of your beloved feline friends. From high-quality cat food to stylish accessories and health essentials, we curate a diverse range to meet every cat's needs. Our mission is to create a purrfect shopping experience, ensuring that your cats lead happy, healthy lives. Explore our collection and embark on a journey of feline delight, where customer satisfaction and cat happiness take center stage. Join us in celebrating the joyous companionship that cats bring to our lives!</p>
        </div>
        <div class="about-mail">
            <div class="contact-info">
                <div class="contact-item">
                    <img src="imgs/gmail.png" alt="Email Icon" />
                    <p>sabnajislam786@gmail.com</p>
                </div>
                <div class="contact-item">
                    <img src="imgs/phone-call.png" alt="Phone Icon" />
                    <p>+123 456 789</p>
                </div>
                <div class="contact-item">
                    <img src="imgs/facebook.png" alt="Facebook Icon" />
                    <a href="https://www.facebook.com/" target="_blank">Visit our Facebook page</a>
                </div>
                <div class="contact-item">
                    <img src="imgs/location.jpg" alt="Location Icon" />
                    <p>Khulna, Sonadanga</p>
                </div>
            </div>
        </div>
    </section>
</asp:Content>