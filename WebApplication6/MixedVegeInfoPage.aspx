<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeFile="MixedVegeInfoPage.aspx.cs" Inherits="WebApplication6.MixedVegeInfoPage" %>

<asp:Content ID="Content8" ContentPlaceHolderID="titleHolder" runat="server">
    Garlic Butter Mixed Vegetables
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="descriptionHolder" runat="server">
    A simple and delightful dinner side for the busy family. Prep is simple thanks to the already-chopped frozen vegetables—and butter, garlic, pepper and Parmesan cheese add delicious flavors. If you have some extra time, you can substitute your own mix of fresh veggies.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="videoHolder" runat="server">
    <video width="852" height="480" controls>
  <source src="../Videos/vegVideo.mp4" type="video/mp4">
  <source src="movie.ogg" type="video/ogg">
Your browser does not support the video tag.
</video>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="summaryHolder" runat="server">
    <style>
        .recipeContent {
            padding: 1px;
            background-color: #f5f6ea;
            margin: 3rem 0;
            width:600px;
            margin-left:750px;
        }

        .recipeDetails{
            grid-template-columns: repeat(2,1fr);
            display: grid;
            grid-row-gap: 2rem;
            grid-column-gap: 1.5rem;
        }

        .recipeLabel{
            font-family: SourceSansPro,Helvetica,sans-serif;
            font-size: 1.125rem;
            line-height: 1.75rem;
            text-underline-offset: 0.25rem;
            font-weight: 700;
        }
   </style>

    <div class="recipeContent">
        <div class="recipeDetails">
            <div class="recipeItem">
                <div class="recipeLabel">Prep Time:</div>
                <div>10 minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div>10 minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div>20 minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div >4 Pax</div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ingridientHolder" runat="server">
    <style>
        .IngridientContainer {
            display: flex;
            flex-direction: column;
            row-gap: 3rem;
            width:400px;
            margin-left:750px;
            
        }      
        
        p{
            font-family: CopperPot,Helvetica,sans-serif;
            font-size: 1.35rem; 
            font-weight: 600;
        }

        li{
            display: list-item;
            text-align: -webkit-match-parent;

            padding-top:5px;
            padding-bottom:5px;
        }

        h2{
            font-weight: 700;
        }

        

   </style>

    <div class="IngridientContainer">
        <div class="struct">
            <div class="heading">
                <h2>Ingredients</h2>
            </div>
            <ul>
                <li>
                    1 bag ( 16 oz ) frozen mixed vegetables 
                </li>
                <li>
                    &frac12 Vegetable broth
                </li>
                <li>
                    1 tbsp butter
                </li>
                <li>
                    1 tsp minced garlic
                </li>
                <li>
                    2 tbsp grated Parmesan cheese
                </li>
                <li>
                    1 tbsp chopped fresh parsley, as garnish
                </li>
            </ul>

            <div class="heading">
                <h2>Instructions</h2>
            </div>
                <ol>
                    <p>Steps</p>
                    <li>Combine the vegetables and broth in a medium saucepan. Cook on medium 5-10 min., until heated through, stirring occasionally.</li>       
                    <li>Drain broth from pan. To pan, add the butter, garlic, and Parmesan. Season with pepper to taste. Mix until well combined. Garnish with the fresh parsley.</li>                                                       
                </ol>
             </div>

    </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="nutritionHolder" runat="server">
    <style>
        .recipeContent { 
            grid-template-columns: repeat(2,1fr);
            background-color: #f5f6ea;
            width:600px;
            margin-left:750px;
        }

        .recipeDetails{
            display: grid;
            grid-row-gap: 2rem;
            grid-column-gap: 1.5rem;
        }

        .recipeValue{
            font-family: SourceSansPro,Helvetica,sans-serif;
            font-size: 1.125rem;
            line-height: 1.75rem;
            font-weight: 700;
        }
   </style>


    <div class="recipeContent">
        <h2>Nutrition Facts (per serving)</h2>
        <div class="recipeDetails">
            <div class="recipeItem">
                <div class="recipeValue">118</div>
                <div >Calories</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">3.6g</div>
                <div >Fat</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">15.4g</div>
                <div >Carbs</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">161mg</div>
                <div>Sodium</div>
            </div>
        </div>
    </div>
</asp:Content>
