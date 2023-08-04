<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeFile="quizPage.aspx.cs" Inherits="WebApplication6.quizPage" %>

<asp:Content ID="Content8" ContentPlaceHolderID="TitleHolder" runat="server">
    Quizzes
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="descriptionHolder" runat="server">
    Select a Quiz that you would like to attempt, the goal of our quiz is to test your knowledge on the recipes needed to make the food that we love.<br />
    GOOD LUCK! :)
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cardHolder" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
           .cardParent {
                margin: 1rem;
                padding: 2rem 2rem;
                margin-left: 125px;
                margin-bottom: 100px;

            }

            .card {
                /* Add shadows to create the "card" effect */
                position: relative;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.5);
                transition: 0.3s;
                width: 1600px;
                border-radius: 5px;
                display: inline-block;
                margin-bottom:20px;
                background-image: linear-gradient(to right, lightblue, orange);
            }

            /* On mouse-over, add a deeper shadow */
            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }
            
            .content{
                display: inline-block;
                width: 500px;
            }

            .checked {
                color: orange;
            }
       </style>


      <div class ="cardParent">
        
        <div class ="card" style="cursor: pointer;" onclick="location.href='briyaniQuizPage.aspx';">
            <div class="content"><img src="../ProfilePic/briyani.jpg" height="235" width="325"/></div>
            <div class="content" >
                <h4><b>Chicken Biryani</b></h4>
                <p>an Indian dish made with highly seasoned rice and meat, fish, or vegetables. </p>
                
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            </div>
        </div>

          <div class="card" onclick="location.href='lasagnaQuizPage.aspx';" style="cursor: pointer; margin-top:20px">
               <div class="content"> <img src="../ProfilePic/lasagna.jpg" height="240" width="325"/> </div>
                <div class="content" style="padding: 2px 16px;">
                    <h4><b>Lasagna</b></h4>
                    <p>an Italian dish consisting of lasagne baked with meat or vegetables and a cheese sauce.</p>
                    
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                </div>
          </div>

          <div class="card" onclick="location.href='NasiLemakQuizPage.aspx';" style="cursor: pointer; margin-top:20px">
                <div class="content"> <img src="../ProfilePic/nasiLemak.jpg" height="240" width="325"/></div>
                <div class="content" style="padding: 2px 16px;">
                    <h4><b>Nasi Lemak</b></h4>
                    <p>Malay cuisine that consists of fragrant rice cooked in coconut milk and pandan leaf.</p>

                    <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                </div>
          </div>
          <br />

          <div class="card" onclick="location.href='PastaQuizPage.aspx';" style=" cursor: pointer; margin-top:20px">
                <div class="content"> <img src="../ProfilePic/pasta.jpg" height="240" width="325"/> </div>
                <div class="content" style="padding: 2px 16px;">
                    <h4><b>Tomato Chicken Pasta</b></h4>
                    <p>pasta made in solid strings, between macaroni and vermicelli.</p>

                    <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                </div>
          </div>

          <div class="card" onclick="location.href='MixedVegeQuizPage.aspx';" style="cursor: pointer; margin-top:20px">
               <div class="content"> <img src="../ProfilePic/healthy.jpg" height="230" width="325"/> </div>
                <div class="content" style="padding: 2px 16px;">
                    <h4><b>Garlic Butter Mixed Vegetables</b></h4>
                    <p>a blend of different vegitables, spiced to perfection!</p>

                    <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <span class="fa fa-star"></span>
                </div>
          </div>

          <div class="card" onclick="location.href='SheperdsPieQuizPage.aspx';" style="cursor: pointer; margin-top:20px">
                <div class="content"> <img src="../ProfilePic/Pie.Jpeg" height="230" width="325"/> </div>
                <div class="content" style="padding: 2px 16px;">
                    <h4><b>Shepherd's Pie</b></h4>
                    <p>a dish of minced meat under a layer of mashed potato.</p>

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                </div>
              </div>
          </div>
    </asp:Content>
