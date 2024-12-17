<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage3.aspx.cs" Inherits="CatShop2.homepage3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        .customButton {
       padding: 10px 20px; /* Adjust the padding to increase the button size */
       background-color: #c91414; /* Set your desired background color */
       color: #fff; /* Set the text color */
       border: none;
       border-radius: 5px; /* Add rounded corners if desired */
       cursor: pointer;
       transition: background-color 0.3s; /* Add a smooth transition effect */
   }

   .customButton:hover {
       background-color: #0094ff; /* Change the background color on hover */
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

 .scrollableTextBox {
    overflow-y: scroll; /* Add a vertical scroll bar */
    resize: vertical;   /* Allow vertical resizing */
    width: 100%;        /* Make the text box take up 100% of the width */
}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="cart" id="cart">
       <i class='bx bx-x cart__close' id="cart-close"></i>

       <h2 class="cart__title-center">My Cart</h2>

       <div class="cart__container">
           <article class="cart__card">
               <div class="cart__box">
                   <img src="assets/img/featured1.png" alt="" class="cart__img">
               </div>

               <div class="cart__details">
                   <h3 class="cart__title">Jazzmaster</h3>
                   <span class="cart__price">$1050</span>

                   <div class="cart__amount">
                       <div class="cart__amount-content">
                           <span class="cart__amount-box">
                               <i class='bx bx-minus' ></i>
                           </span>

                           <span class="cart__amount-number">1</span>

                           <span class="cart__amount-box">
                               <i class='bx bx-plus' ></i>
                           </span>
                       </div>

                       <i class='bx bx-trash-alt cart__amount-trash' ></i>
                   </div>
               </div>
           </article>
           
           <article class="cart__card">
               <div class="cart__box">
                   <img src="assets/img/featured3.png" alt="" class="cart__img">
               </div>

               <div class="cart__details">
                   <h3 class="cart__title">Rose Gold</h3>
                   <span class="cart__price">$850</span>

                   <div class="cart__amount">
                       <div class="cart__amount-content">
                           <span class="cart__amount-box">
                               <i class='bx bx-minus' ></i>
                           </span>

                           <span class="cart__amount-number">1</span>

                           <span class="cart__amount-box">
                               <i class='bx bx-plus' ></i>
                           </span>
                       </div>

                       <i class='bx bx-trash-alt cart__amount-trash' ></i>
                   </div>
               </div>
           </article>

           <article class="cart__card">
               <div class="cart__box">
                   <img src="assets/img/new1.png" alt="" class="cart__img">
               </div>

               <div class="cart__details">
                   <h3 class="cart__title">Longines Rose</h3>
                   <span class="cart__price">$980</span>

                   <div class="cart__amount">
                       <div class="cart__amount-content">
                           <span class="cart__amount-box">
                               <i class='bx bx-minus' ></i>
                           </span>

                           <span class="cart__amount-number">1</span>

                           <span class="cart__amount-box">
                               <i class='bx bx-plus' ></i>
                           </span>
                       </div>

                       <i class='bx bx-trash-alt cart__amount-trash' ></i>
                   </div>
               </div>
           </article>
       </div>

       <div class="cart__prices">
           <span class="cart__prices-item">3 items</span>
           <span class="cart__prices-total">$2880</span>
       </div>
   </div>


     <main class="main">
     <!--==================== HOME ====================-->
     <section class="home" id="home">
         <div class="home__container container grid">
             <div class="home__img-bg">
                 <img src="assets/img/newkitten.jpg" alt="" class="home__img">
             </div>
    
             <div class="home__social">
                 <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                     Facebook
                 </a>
                 <a href="https://twitter.com/" target="_blank" class="home__social-link">
                     Twitter
                 </a>
                 <a href="https://www.instagram.com/" target="_blank" class="home__social-link">
                     Instagram
                 </a>
             </div>
    
             <div class="home__data">
                 <h1 class="home__title">NEW CAT <br> COLLECTIONS </h1>
                 <p class="home__description">
                     Latest arrival of the new imported cat, 
                     of Domestic Ragdoll breed.
                 </p>
                 <span class="home__price">1200 TK</span>

                 <div class="home__btns">
                     <a href="#" class="button button--gray button--small">
                         Discover
                     </a>

                     <button class="button home__button">ADD TO CART</button>
                 </div>
             </div>
         </div>
     </section>

     <!--==================== FEATURED ====================-->
     <section class="featured section container" id="featured">
         <h2 class="section__title">
             Featured
         </h2>

         <div class="featured__container grid">
             <article class="featured__card">
                 <span class="featured__tag">Sale</span>

                 <img src="assets/img/newcat.jpg" alt="" class="featured__img">

                 <div class="featured__data">
                     <h3 class="featured__title">CAT</h3>
                     <span class="featured__price">Differents Breed Available</span>
                 </div>

                 <button class="button featured__button" >View CAT</button>
             </article>

             <article class="featured__card">
                 <span class="featured__tag">Sale</span>

                 <img src="assets/img/newcatfood.jpg" alt="" class="featured__img">

                 <div class="featured__data">
                     <h3 class="featured__title">CAT FOOD</h3>
                     <span class="featured__price">Different Brand Available</span>
                 </div>

                 <button class="button featured__button">View Food</button>
             </article>

             <article class="featured__card">
                 <span class="featured__tag">FREE</span>

                 <img src="assets/img/breed.jpg" alt="" class="featured__img">

                 <div class="featured__data">
                     <h3 class="featured__title">CAT BREED</h3>
                     <span class="featured__price">FREE</span>
                 </div>

                 <button class="button featured__button">Detect Breed</button>
             </article>
         </div>
     </section>

     <!--==================== STORY ====================-->
     <section class="story section container">
         <div class="story__container grid">
             <div class="story__data">
                 <h2 class="section__title story__section-title">
                     Our Story
                 </h2>
    
                 <h1 class="story__title">
                     Healthy Cat <br> Nutrious Food
                 </h1>
    
                 <p class="story__description">
                     The healthy cats and nutrous cat foods , is available in various 
                     presentations in this store, discover them now.
                 </p>
    
                 <a href="#" class="button button--small">Discover</a>
             </div>

             <div class="story__images">
                 <img src="assets/img/newstory.jpg" alt="" class="story__img">
                 <div class="story__square"></div>
             </div>
         </div>
     </section>

     <!--==================== PRODUCTS ====================-->
     <section class="products section container" id="products">
         <h2 class="section__title">
             Products
         </h2>

         <div class="products__container grid">
             <article class="products__card">
                    <img src="assets/img/newmainecoon.jpg" alt="" class="products__img">

                 <h3 class="products__title">Maine Coon</h3>
                 <span class="products__price">2000 TK</span>

                 <button class="products__button">
                     <i class='bx bx-shopping-bag'></i>
                 </button>
             </article>

             <article class="products__card">
            <img src="assets/img/newbengal.jpg" alt="" class="products__img">

                 <h3 class="products__title">Bengal</h3>
                 <span class="products__price">1500 TK</span>

                 <button class="products__button">
                     <i class='bx bx-shopping-bag'></i>
                 </button>
             </article>

             <article class="products__card">
               <img src="assets/img/newdomesticshorthair.jpg" alt="" class="products__img">

                 <h3 class="products__title">Domestic SHorthair</h3>
                 <span class="products__price">600 TK</span>

                 <button class="products__button">
                     <i class='bx bx-shopping-bag'></i>
                 </button>
             </article>

             <article class="products__card">
                 <img src="assets/img/newfood1.jpg" alt="" class="products__img">

                 <h3 class="products__title">Chicken</h3>
                 <span class="products__price">200 TK</span>

                 <button class="products__button">
                     <i class='bx bx-shopping-bag'></i>
                 </button>
             </article>

             <article class="products__card">
                 <img src="assets/img/newfood2.jpg" alt="" class="products__img">

                 <h3 class="products__title">Tuna</h3>
                 <span class="products__price">300 TK</span>

                 <button class="products__button">
                     <i class='bx bx-shopping-bag'></i>
                 </button>
             </article>
         </div>
     </section>

     <!--==================== TESTIMONIAL ====================-->
     <section class="testimonial section container">
         <div class="testimonial__container grid">
             <div class="swiper testimonial-swiper">
                 <div class="swiper-wrapper">
                     <div class="testimonial__card swiper-slide">
                         <div class="testimonial__quote">
                             <i class='bx bxs-quote-alt-left' ></i>
                         </div>
                         <p class="testimonial__description">
                             They are the best cats that one acquires, also they are always with the latest 
                             news and trends, with a very comfortable price and especially with the attention 
                             you receive, they are always attentive to your questions.
                         </p>
                         <h3 class="testimonial__date">March 27. 2021</h3>
 
                         <div class="testimonial__perfil">
                             <img src="assets/img/testimonial1.jpg" alt="" class="testimonial__perfil-img">
 
                             <div class="testimonial__perfil-data">
                                 <span class="testimonial__perfil-name">Lee Doe</span>
                                 <span class="testimonial__perfil-detail">Director of a company</span>
                             </div>
                         </div>
                     </div>

                     <div class="testimonial__card swiper-slide">
                         <div class="testimonial__quote">
                             <i class='bx bxs-quote-alt-left' ></i>
                         </div>
                         <p class="testimonial__description">
                             
                             This cat shop is the ultimate feline haven, offering the finest cats that one can acquire. Always in tune with the latest purr-fect news and trends in the cat world, this establishment provides a diverse selection of cats at a very comfortable price point. The attention you receive is simply unparalleled – the staff is always on their paws, ready to address any questions or concerns you may have. If you're a cat enthusiast, look no further; this cat shop is the cat's meow!
                         </p>
                         <h3 class="testimonial__date">March 27. 2021</h3>
 
                         <div class="testimonial__perfil">
                             <img src="assets/img/testimonial2.jpg" alt="" class="testimonial__perfil-img">
 
                             <div class="testimonial__perfil-data">
                                 <span class="testimonial__perfil-name">Samantha Mey</span>
                                 <span class="testimonial__perfil-detail">Director of a company</span>
                             </div>
                         </div>
                     </div>

                     <div class="testimonial__card swiper-slide">
                         <div class="testimonial__quote">
                             <i class='bx bxs-quote-alt-left' ></i>
                         </div>
                         <p class="testimonial__description">
                             The attention you receive is second to none; the staff is always on the prowl, ready to address any questions or concerns you may have. If you're a cat aficionado, look no further – this cat shop is the cat's whiskers!
                         </p>
                         <h3 class="testimonial__date">March 27. 2021</h3>
 
                         <div class="testimonial__perfil">
                             <img src="assets/img/testimonial3.jpg" alt="" class="testimonial__perfil-img">
 
                             <div class="testimonial__perfil-data">
                                 <span class="testimonial__perfil-name">Raul Zaman</span>
                                 <span class="testimonial__perfil-detail">Director of a company</span>
                             </div>
                         </div>
                     </div>
                 </div>
                 
                 <div class="swiper-button-next">
                     <i class='bx bx-right-arrow-alt' ></i>
                 </div>
                 <div class="swiper-button-prev">
                     <i class='bx bx-left-arrow-alt' ></i>
                 </div>
             </div>

             <div class="testimonial__images">
                 <div class="testimonial__square"></div>
                 <img src="assets/img/reviewcat.jpg" alt="" class="testimonial__img">
             </div>
         </div>
     </section>

     <!--==================== NEW ====================-->
     <section class="new section container" id="new">
         <h2 class="section__title">
             New Arrivals
         </h2>
         
         <div class="new__container">
             <div class="swiper new-swiper">
                 <div class="swiper-wrapper">
                     <article class="new__card swiper-slide">
                         <span class="new__tag">New</span>
 
                    <img src="assets/img/newragdoll.jpg" alt="" class="new__img">
 
                         <div class="new__data">
                             <h3 class="new__title">Ragdoll</h3>
                             <span class="new__price">2300 TK</span>
                         </div>
 
                         <button class="button new__button">View</button>
                     </article>

                     <article class="new__card swiper-slide">
                         <span class="new__tag">New</span>
                             <img src="assets/img/newsiamese.jpg" alt="" class="new__img">
 
                         <div class="new__data">
                             <h3 class="new__title">Siamese</h3>
                             <span class="new__price">1200 TK</span>
                         </div>
 
                         <button class="button new__button">View</button>
                     </article>

                     <article class="new__card swiper-slide">
                         <span class="new__tag">New</span>
 
                         <img src="assets/img/newfood3.jpg" alt="" class="new__img">
 
                         <div class="new__data">
                             <h3 class="new__title">Sea Food</h3>
                             <span class="new__price">500 TK</span>
                         </div>
 
                         <button class="button new__button">View</button>
                     </article>

                     <article class="new__card swiper-slide">
                         <span class="new__tag">New</span>
 
                         <img src="assets/img/newfood4.jpg" alt="" class="new__img">
 
                         <div class="new__data">
                             <h3 class="new__title">Salmon Fish</h3>
                             <span class="new__price">600 TK</span>
                         </div>
 
                         <button class="button new__button">View</button>
                     </article>                       
                 </div>
             </div>
         </div>
     </section>

     <!--==================== SEND MESSAGE ====================-->
         <div id="aboutUs">
           <section class="newsletter section container">
         <div class="newsletter__bg grid" >
             <div>
                 <h2 class="newsletter__title">Send  <br> Message</h2>
                 <p class="newsletter__description">
                     If you have any complain  or Query feel free to message us.
             </div>

             <form action="" class="newsletter__subscribe">
                 <br />
                 <asp:TextBox runat="server" ID="subject" placeholder="Enter Your Name" Columns="40" style="padding: 5px; border: 1px solid #ccc;"></asp:TextBox>
                  <br />
                 <asp:TextBox runat="server" ID="body" placeholder="Write Message" TextMode="MultiLine" Rows="4" CssClass="scrollableTextBox" Columns="60" style="padding: 5px; border: 1px solid #ccc;"></asp:TextBox>
             <div style="margin-top: 20px;">
                <asp:Button ID="send" runat="server" Text="Send" OnClick="SendEmail" CssClass="customButton" />
             </div>

            <div>
               <asp:Label ID="status" runat="server" Text=""></asp:Label>
           </div>
             </form>
         </div>
     </section>
        </div>
 </main>

    <div class="info-section">
   <h2 style="color:orange">Our Motive</h2>
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

 <!--==================== FOOTER ====================-->
 <footer class="footer section">
     <div class="footer__container container grid">
         <div class="footer__content">
             <h3 class="footer__title">Our information</h3>

             <ul class="footer__list">
                 <li>1234 - Peru</li>
                 <li>La Libertad 43210</li>
                 <li>123-456-789</li>
             </ul>
         </div>
         <div class="footer__content">
             <h3 class="footer__title">About Us</h3>

             <ul class="footer__links">
                 <li>
                     <a href="#" class="footer__link">Support Center</a>
                 </li>
                 <li>
                     <a href="#" class="footer__link">Customer Support</a>
                 </li>
                 <li>
                     <a href="#" class="footer__link">About Us</a>
                 </li>
                 <li>
                     <a href="#" class="footer__link">Copy Right</a>
                 </li>
             </ul>
         </div>

         <div class="footer__content">
             <h3 class="footer__title">Product</h3>

             <ul class="footer__links">
                 <li>
                     <a href="#" class="footer__link">Road bikes</a>
                 </li>
                 <li>
                     <a href="#" class="footer__link">Mountain bikes</a>
                 </li>
                 <li>
                     <a href="#" class="footer__link">Electric</a>
                 </li>
                 <li>
                     <a href="#" class="footer__link">Accesories</a>
                 </li>
             </ul>
         </div>

         <div class="footer__content">
             <h3 class="footer__title">Social</h3>

             <ul class="footer__social">
                 <a href="https://www.facebook.com/" target="_blank" class="footer__social-link">
                     <i class='bx bxl-facebook'></i>
                 </a>

                 <a href="https://twitter.com/" target="_blank" class="footer__social-link">
                     <i class='bx bxl-twitter' ></i>
                 </a>

                 <a href="https://www.instagram.com/" target="_blank" class="footer__social-link">
                     <i class='bx bxl-instagram' ></i>
                 </a>
             </ul>
         </div>
     </div>

    
 </footer>

 <!--=============== SCROLL UP ===============-->
 <a href="#" class="scrollup" id="scroll-up"> 
     <i class='bx bx-up-arrow-alt scrollup__icon' ></i>
 </a>

 <!--=============== SWIPER JS ===============-->
 <script src="assets/js/swiper-bundle.min.js"></script>

 <!--=============== MAIN JS ===============-->
 <script src="assets/js/main.js"></script>

</asp:Content>
