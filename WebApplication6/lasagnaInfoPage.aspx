<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeFile="lasagnaInfoPage.aspx.cs" Inherits="WebApplication6.lasagnaInfoPage" %>

<asp:Content ID="Content8" ContentPlaceHolderID="titleHolder" runat="server">
    Lasagna
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="descriptionHolder" runat="server">
    This is my mom's special homemade lasagna recipe with a meaty, made-from-scratch tomato sauce and a deliciously cheesy filling. A more traditional homemade lasagna filling would be made with ricotta but my mom's recipe calls for a blend of small-curd cottage cheese and Parmesan. I have found none better anywhere. Serve with a leafy green salad and crusty garlic bread.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="videoHolder" runat="server">
    <video width="852" height="480" controls>
  <source src="../Videos/lasagnaVideo.mp4" type="video/mp4">
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
                <div >1 Hour 25 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div >1 Hour 15 Minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div >2 Hour 50 Minutes</div>
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
        
        p{
            font-family: CopperPot,Helvetica,sans-serif;
            font-size: 1.35rem; 
        }

        li{
            display: list-item;
            text-align: -webkit-match-parent;

            padding-top:5px;
            padding-bottom:5px;
        }

        

   </style>

    <div class="IngridientContainer">
        <div class="struct">
            <div class="heading">
                <h2>Ingredients</h2>
            </div>
            
            <ul>
                <li>
                    &frac12; pound ground pork 
                </li>
                <li>
                   ½ pound lean ground beef
                </li>
                <li>
                    ½ cup minced onion
                </li>
                <li>
                    1 (28 ounce) can crushed tomatoes
                </li>
                <li>
                    1 (8 ounce) can tomato sauce
                </li>
                <li>
                    2 tablespoons chopped fresh parsley, divided
                </li>
                <li>
                    1 clove garlic, crushed
                </li>
                <li>
                    1 ½ teaspoons dried basil
                </li>
                <li>
                    1 ½ teaspoons salt
                </li>
                <li>
                    ½ teaspoon dried oregano
                </li>
                <li>
                    ⅛ teaspoon white sugar
                </li>
                <li>
                    1 (16 ounce) package lasagna noodles
                </li>
                <li>
                    1 pound small-curd cottage cheese
                </li>
                <li>
                    ¾ cup grated Parmesan cheese
                </li>
                <li>
                    3 large eggs
                </li>
                 <li>
                    2 teaspoons salt
                </li>
                <li>
                    ¼ teaspoon ground black pepper
                </li>
                <li>
                    1 (16 ounce) package shredded mozzarella cheese
                </li>
                
            </ul>
            
            
           
            <div class="heading">
                <h2>Instructions</h2>
            </div>
                <ol>
                    
                    <li>
                    Combine pork and ground beef in a large, deep skillet over medium-high heat; cook and stir until browned and crumbly, 5 to 7 minutes. Add onion and cook until translucent, about 5 minutes.                    </li>
                    
                    <li>Stir in crushed tomatoes, tomato sauce, 1 tablespoon fresh parsley, garlic, basil, salt, oregano, and sugar. Reduce heat to medium-low and simmer, stirring occasionally, for 30 minutes.</li>
                    <li>
While the sauce is simmering, bring a large pot of lightly salted water to a boil. Cook lasagna noodles in the boiling water, stirring occasionally, until tender yet firm to the bite, 8 to 10 minutes. Drain and set aside.

                    </li>
                    <li>While the noodles are cooking, preheat the oven to 375 degrees F (190 degrees C).</li>
                    <li>Mix cottage cheese, Parmesan cheese, eggs, remaining 1 tablespoon fresh parsley, salt, and pepper in a large bowl until combined.</li>
                    <li>Assemble lasagna: Spread a spoon or two of sauce over the bottom of a 9x13-inch baking dish just to to coat it. Place two layers of noodles over the sauce to cover. Layer with 1/2 of the cheese mixture, 1/2 of the remaining sauce, and 1/2 of the mozzarella cheese. Repeat layers once more using the remaining noodles, cheese mixture, sauce, and mozzarella. Cover the baking dish with aluminum foil.</li>
                    <li>Bake in the preheated oven for 30 to 40 minutes. Remove the foil and bake until cheese is golden brown, 5 to 10 more minutes.</li>
                    
                    <li>Remove from the oven and let stand for 10 minutes before cutting and serving.</li>
                   
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
                <div class="recipeValue">638</div>
                <div >Calories</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">27g</div>
                <div >Fat</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">54g</div>
                <div >Carbs</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">46g</div>
                <div>Protein</div>
            </div>
        </div>
    </div>
</asp:Content>
