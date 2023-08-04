<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeFile="recipePage.aspx.cs" Inherits="WebApplication6.recipePage" %>

<asp:Content ID="Content8" ContentPlaceHolderID="TitleHolder" runat="server">
    Recipes
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="descriptionHolder" runat="server">
    Select a Recipe that you would like to learn and execute.<br />HAPPY COOKING! :)
    
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

            .recipeContent {
            position:relative;
            padding: 1px;
            width:400px;
            bottom:50px;
            margin-left:100px;
            
        }

        .recipeDetails{
            grid-template-columns: repeat(2,1fr);
            display: grid;
            grid-row-gap: 1.5rem;
            grid-column-gap: 1.25rem;
            
        }

        .recipeLabel{
            font-family: SourceSansPro,Helvetica,sans-serif;
            font-size: 1.125rem;
            line-height: 1.75rem;
            text-underline-offset: 0.25rem;
            font-weight: 700;
        }
       </style>


      <div class ="cardParent">
        
        <div class ="card" style="cursor: pointer;" onclick="location.href='briyaniInfoPage.aspx';">
            <div class="content"><img src="../ProfilePic/briyani.jpg" height="230" width="325"/></div>
            <div class="content" >
                <h4><b>Chicken Biryani</b></h4>
                <p>an Indian dish made with highly seasoned rice and meat, fish, or vegetables. </p>
                
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            </div>

            <div class="content">
    <div class="recipeContent">
        <div class="recipeDetails">
            <div class="recipeItem">
                <div class="recipeLabel">Prep Time:</div>
                <div>1 Hour</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div>25 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div>1 Hour 25 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div >4 Pax</div>
            </div>
        </div>
        </div>

            </div>

        </div>

          <div class="card"  style="margin-top:20px; cursor: pointer;" onclick="location.href='lasagnaInfoPage.aspx';">
               <div class="content"> <img src="../ProfilePic/lasagna.jpg" height="250" width="325"/> </div>
                <div class="content" style="padding: 2px 16px;">
                    <h4><b>Lasagna</b></h4>
                    <p>an Italian dish consisting of lasagne baked with meat or vegetables and a cheese sauce.</p>
                    
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                </div>
              <div class="content">
    <div class="recipeContent">
        <div class="recipeDetails">
            <div class="recipeItem">
                <div class="recipeLabel">Prep Time:</div>
                <div>1 Hour 25 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div>1 hour 15 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div>2 Hour 50 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div>8 Pax</div>
            </div>
        </div>
        </div>

            </div>

          </div>

          <div class="card"  style="margin-top:20px; cursor: pointer;" onclick="location.href='NasiLemakInfoPage.aspx';">
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
              <div class="content">
                  
    <div class="recipeContent">
        <div class="recipeDetails">
            <div class="recipeItem">
                <div class="recipeLabel">Prep Time:</div>
                <div>30 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div>30 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div>1 Hour</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div>8 Pax</div>
            </div>
        </div>
        </div>
              </div>
          </div>
          <br />

          <div class="card"  style="margin-top:20px; cursor:pointer;" onclick="location.href='PastaInfoPage.aspx';">
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
              <div class="content">
                  
    <div class="recipeContent">
        <div class="recipeDetails">
            <div class="recipeItem">
                <div class="recipeLabel">Prep Time:</div>
                <div>10 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div>20 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div>30 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div>4 Pax</div>
            </div>
        </div>
        </div>
              </div>
          </div>

          <div class="card" style="cursor: pointer; margin-top:20px" onclick="location.href='MixedVegeInfoPage.aspx';">
               <div class="content"> <img src="../ProfilePic/healthy.jpg" height="220" width="325"/> </div>
                <div class="content" style="padding: 2px 16px;">
                    <h4><b>Garlic Butter Mixed Vegetables</b></h4>
                    <p>a blend of different vegitables, spiced to perfection!</p>

                    <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <span class="fa fa-star"></span>
                </div>
              <div class="content">
                  
    <div class="recipeContent">
        <div class="recipeDetails">
            <div class="recipeItem">
                <div class="recipeLabel">Prep Time:</div>
                <div>10 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div>10 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div>20 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div>4 Pax</div>
            </div>
        </div>
        </div>
              </div>
          </div>

          <div class="card" style="margin-top:20px; cursor: pointer;" onclick="location.href='ShepardsPieInfoPage.aspx';">
                <div class="content"> <img src="../ProfilePic/Pie.Jpeg" height="220" width="325"/> </div>
                <div class="content" style="padding: 2px 16px;">
                    <h4><b>Shepherd's Pie</b></h4>
                    <p>a dish of minced meat under a layer of mashed potato.</p>

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                </div>
              <div class="content">
                  
    <div class="recipeContent">
        <div class="recipeDetails">
            <div class="recipeItem">
                <div class="recipeLabel">Prep Time:</div>
                <div>15 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div>50 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div>1 Hour 5 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div>4 Pax</div>
            </div>
        </div>
        </div>
              </div>
              </div>
          </div>

    </asp:Content>
