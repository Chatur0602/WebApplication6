<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeFile="NasiLemakInfoPage.aspx.cs" Inherits="WebApplication6.NasiLemakInfoPage" %>

<asp:Content ID="Content8" ContentPlaceHolderID="titleHolder" runat="server">
    Nasi Lemak
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="descriptionHolder" runat="server">
    A Malaysian classic. Delicious Malaysian coconut rice, served with anchovy hot chile sauce, fried anchovies, fried peanut, sliced cucumber or tomato and hard-boiled egg. If you do not have tamarind juice, substitute with same amount of lemon juice.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="videoHolder" runat="server">
    <video width="852" height="480" controls>
  <source src="../Videos/NasiVideo.mp4" type="video/mp4">
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
                <div>30 minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div>30 minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div>1 Hour</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div >8 Pax</div>
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

        li{
            display: list-item;
            text-align: -webkit-match-parent;

            padding-top:5px;
            padding-bottom:5px;
        }

        h2{
            font-weight: 700;
        }

        p{
            font-family: CopperPot,Helvetica,sans-serif;
            font-size: 1.35rem; 
            font-weight: 600;
        }

   </style>

    <div class="IngridientContainer">
        <div class="struct">
            <div class="heading">
                <h2>Ingredients</h2>
            </div>
            <p>For the rice</p>
            <ul>
                <li>
                    2 cups coconut milk
                </li>
                <li>
                    2 cups water
                </li>
                <li>
                    &frac14; teaspoon ground ginger
                </li>
                <li>
                    1 piece fresh ginger, peeled and thinly sliced
                </li>
                <li>
                    salt to taste
                </li>
                <li>
                    1 whole bay leaf
                </li>
                <li>
                    2 cups long grain rice, rinsed and drained
                </li>
            </ul>
            <p>For the garnish</p>
            <ul>
                <li>
                    4 eggs
                </li>
                <li>
                    1 cucumber
                </li>
                <li>
                    1 cup oil for frying
                </li>
                <li>
                    1 cup raw peanuts
                </li>
                <li>
                    1 (4 ounce) package white anchovies, washed
                </li>
            </ul>
            <p>For the Sauce</p>
            <ul>
                <li>
                    2 tablespoons vegetable oil
                </li>
                <li>
                    1 medium onion, sliced
                </li>
                <li>
                    3 cloves garlic, thinly sliced
                </li>
                <li>
                    3 shallots, thinly sliced
                </li>
                <li>
                    2 teaspoons chile paste
                </li>
                <li>
                    1 (4 ounce) package white anchovies, washed
                </li>
                <li>
                    3 tablespoons white sugar
                </li>
                <li>
                    &frac14; cup tamarind juice
                </li>
            </ul>
            <div class="heading">
                <h2>Instructions</h2>
            </div>
                <ol> 
                    <p>Step 1</p>
                    <li>In a medium saucepan over medium heat, stir together coconut milk, water, ground ginger, ginger root, salt, bay leaf, and rice. Cover, and bring to a boil. Reduce heat, and simmer for 20 to 30 minutes, or until done.</li>            
                    <p><br />Step 2</p>
                    <li>Place eggs in a saucepan, and cover with cold water. Bring water to a boil, and immediately remove from heat. Cover, and let eggs stand in hot water for 10 to 12 minutes. Remove eggs from hot water, cool, peel and slice in half. Slice cucumber.</li>
                    <p><br />Step 3</p>
                    <li>Meanwhile, in a large skillet or wok, heat 1 cup vegetable oil over medium-high heat. Stir in peanuts and cook briefly, until lightly browned. Remove peanuts with a slotted spoon and place on paper towels to soak up excess grease. Return skillet to stove. Stir in the contents of one package anchovies; cook briefly, turning, until crisp. Remove with a slotted spoon and place on paper towels. Discard oil. Wipe out skillet.</li>       
                    <p><br />Step 4</p>
                    <li>Heat 2 tablespoons oil in the skillet. Stir in the onion, garlic, and shallots; cook until fragrant, about 1 or 2 minutes. Mix in the chile paste, and cook for 10 minutes, stirring occasionally. If the chile paste is too dry, add a small amount of water. Stir in remaining anchovies; cook for 5 minutes. Stir in salt, sugar, and tamarind juice; simmer until sauce is thick, about 5 minutes.</li>
                    <p><br />Step 5</p>
                    <li>Serve the onion and garlic sauce over the warm rice, and top with peanuts, fried anchovies, cucumbers, and eggs.</li>                   
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
                <div class="recipeValue">578</div>
                <div >Calories</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">32g</div>
                <div >Fat</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">57g</div>
                <div >Carbs</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">20g</div>
                <div>Protein</div>
            </div>
        </div>
    </div>
</asp:Content>