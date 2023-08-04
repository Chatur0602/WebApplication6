<%@ Page Title="" Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication2.home" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  margin-top:2.5rem;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  
}

.yeet {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 3s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>

    <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 4</div>
  <img src="../Images/4.jpg" style="width:100%">
          <div class="w3-display-topright w3-container w3-padding-16 w3-black">
            Buritto
          </div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 4</div>
  <img src="../Images/5.png" style="width:100%">
          <div class="w3-display-topright w3-container w3-padding-16 w3-black">
            Smoked Salmon
          </div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 4</div>
  <img src="../Images/6.jpg" style="width:100%">
          <div class="w3-display-topright w3-container w3-padding-16 w3-black">
            Butter Chicken
          </div>
</div>

        <div class="mySlides fade">
  <div class="numbertext">4 / 4</div>
  <img src="../Images/2.jpg" style="width:100%">
          <div class="w3-display-topright w3-container w3-padding-16 w3-black">
            Veg Skewers
          </div>
    </div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
    <span class="dot"></span> 
</div>

    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" yeet", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " yeet";
            setTimeout(showSlides, 3000); // Change image every 2 seconds
        }
    </script>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="descriptionHolder" runat="server">
    <div style="background: linear-gradient(to right, blue,
                    green, green, blue);
            -webkit-text-fill-color: transparent;
            -webkit-background-clip: text;">
    Welcome to Kozy Kitchen<br />
    Access a variety of recipes to learn & grow your culinary portfolio.<br />
    <a href="login.aspx">Login or </a><a href="registrationPage.aspx">Sign up</a> as a Member to take a shot at one of our Quizzes.</div>
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="recipeHolder" runat="server">
    <br /><strong><span style="color:brown;font-size:40px">Learn Popular Recipes</span> 
    <br />
    </strong><br />
  
</asp:Content>

<asp:Content ID="content3" ContentPlaceHolderID="newsPlacementHolder" runat="server">
    <style>
        .news{
            position: absolute;
            top: 285px;
            right: 50px;
            width: 350px;
            height: 501px;
            border: 5px solid #73AD21;
            border-radius:3px;
        }

        .newsImage{
            position: absolute;
            padding-top: 50px;
        }
        
        .newsContent {
            position: relative;
            left: 150px;
            padding-right: 150px;
        }

      
    </style>
    <div class ="news">
    <h3 style="position:absolute; font-weight: 600;">News & Trending</h3>
    <div class="newsImage">
                    <img class="img" src="../ProfilePic/news1.png" />
                </div>
                <br>­
                <div class = "newsContent" >
                    <a href="#">The Halloween Drinks and Eats You Need to Try Before the Spooky Season Ends</a>
                </div>
                <div class="newsImage">
                    <img class="img" src="../ProfilePic/news2.png" />
                </div>
                <br>­
                <div class = "newsContent">
                   <a href="#">Will Canned Tomato Products Disappear From Shelves This Winter?</a>  
                </div>
                <div class="newsImage">
                    <img class="img" src="../ProfilePic/news3.png" />
                </div>
                <br>­
                <div class = "newsContent">
                    <a href="#">Move Over Betty Crocker! Chrissy Teigen's Baking Mixes Are Here</a>
                </div>
                <div class="newsImage">
                    <img class="img" src="../ProfilePic/news4.png" />
                </div>
                <br>­
                <div class = "newsContent">
                    <a href="#">How to Make Taylor Swift's Chai Cookies</a>
                </div>
  </div>
</asp:Content>

<asp:Content ID="content5" ContentPlaceHolderID="tracksPlacementHolder" runat="server">
    <style>
        .tracks{
            position: absolute;
            top: 225px;
            left: 50px;
            width: 350px;
            height: 650px;
            border: 5px solid #73AD21;
            border-radius:3px;
        }

      
        
        .tracksContent {
            position: relative;
           
        }

         p{
            font-family: CopperPot,Helvetica,sans-serif;
            font-size: 1.35rem; 
            font-weight: 500;
            padding-left:10px;
        }

        li{
            display: list-item;
            text-align: -webkit-match-parent;
            cursor:pointer;
        
        }


      
    </style>
    <div class ="tracks">
    <h3 style="position:relative; font-weight:600; ">Learning Tracks</h3>
    
        <p>Italian Cuisine</p>
        <ul>
            <li><a href="PastaInfoPage.aspx">Tomato Chicken Pasta</a></li>
            <li><a href="LasagnaInfoPage.aspx">Lasagna</a></li>
            <li><a href="#">Thincrust Pizza</a></li>
        </ul>­

        <p>Indian Cuisine</p>
        <ul>
            <li><a href="briyaniInfoPage.aspx">Chicken Biryani</a></li>
            <li><a href="#">Butter Chicken</a></li>
            <li><a href="#">Dal Makhani</a></li>
        </ul>­

        <p>Fusion Cuisine</p>
        <ul>
            <li><a href="#">Veg Skewers</a></li>
            <li><a href="MixedVegeInfoPage.aspx">Mixed Vegetables</a></li>
            <li><a href="#">Buritto</a></li>
            <li><a href="NasiLemakInfoPage.aspx">Nasi Lemak</a></li>
        </ul>­

        <p>Western Cuisine</p>
        <ul>
            <li><a href="ShepardsPieInfoPage.aspx">Shepard's Pie</a></li>
            <li><a href="#">Smoked Salmon</a></li>
            <li><a href="#">BBQ Pork Ribs</a></li>
        </ul>­
                
  </div>
</asp:Content>

<asp:Content ID="foodCard" ContentPlaceHolderID="cardHolder" runat="server">
       <style>
           .cardParent {
                margin: 1rem;
                padding: 2rem 2rem;
                text-align: center;
                margin-bottom: 100px;
            }

            .card {
                /* Add shadows to create the "card" effect */
                background-image: linear-gradient(to bottom right, red, yellow);
                position: relative;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.5);
                transition: 0.3s;
                width: 300px;
                border-radius: 5px;
                display: inline-block;
                margin:20px;
            }

            /* On mouse-over, add a deeper shadow */
            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }


       </style>


      <div class ="cardParent">
        <!-- Main Content Placeholder -->
        
        <div  class ="card" onclick="location.href='briyaniInfoPage.aspx';" style="cursor: pointer;">
            
            <img href="../briyaniInfoPage.aspx" src="../ProfilePic/briyani.jpg" height="200" width="300"/>
            <div style="padding: 2px 16px;">
                <h4><b>Chicken Biryani</b></h4>
                <p>an Indian dish made with highly seasoned rice and meat, fish, or vegetables. &nbsp&nbsp&nbsp&nbsp&nbsp</p> 
            </div>
        </div>
        

          <div class="card" onclick="location.href='lasagnaInfoPage.aspx';" style="cursor: pointer;">
                <img src="../ProfilePic/lasagna.jpg" height="200" width="300"/>
                <div style="padding: 2px 16px;">
                    <h4><b>Lasagna</b></h4>
                    <p>an Italian dish consisting of lasagne baked with meat or vegetables and a cheese sauce.</p>
                </div>
          </div>

          <div class="card" onclick="location.href='NasiLemakInfoPage.aspx';" style="cursor: pointer;">
                <img src="../ProfilePic/nasiLemak.jpg" height="200" width="300"/>
                <div style="padding: 2px 16px;">
                    <h4><b>Nasi Lemak</b></h4>
                    <p>Malay cuisine that consists of fragrant rice cooked in coconut milk and pandan leaf.</p>
                </div>
          </div>
          <br />

          <div class="card" onclick="location.href='PastaInfoPage.aspx';" style="cursor: pointer; margin-top:20px;">
                <img src="../ProfilePic/pasta.jpg" height="200" width="300"/>
                <div style="padding: 2px 16px;">
                    <h4><b>Tomato Chicken Pasta</b></h4>
                    <p>pasta made in solid strings, between macaroni and vermicelli.</p>
                </div>
          </div>

          <div class="card" onclick="location.href='MixedVegeInfoPage.aspx';" style="cursor: pointer; margin-top:20px;">
                <img src="../ProfilePic/healthy.jpg" height="200" width="300"/>
                <div style="padding: 2px 16px;">
                    <h4><b>Mixed Vegetables</b></h4>
                    <p>a blend of different vegitables, spiced to perfection!</p>
                </div>
          </div>

          <div class="card" onclick="location.href='ShepardsPieInfoPage.aspx';" style="cursor: pointer; margin-top:20px;">
                <img src="../ProfilePic/Pie.Jpeg" height="200" width="300"/>
                <div style="padding: 2px 16px;">
                    <h4><b>Shepherd's Pie</b></h4>
                    <p>a dish of minced meat under a layer of mashed potato. &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</p>
                </div>
              </div>
          </div>
           

</asp:Content>



