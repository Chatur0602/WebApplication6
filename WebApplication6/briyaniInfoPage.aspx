<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeFile="briyaniInfoPage.aspx.cs" Inherits="WebApplication6.briyaniInfoPage" %>

<asp:Content ID="Content8" ContentPlaceHolderID="titleHolder" runat="server">
    Chicken Biryani
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="descriptionHolder" runat="server">
    One of the most royal delicacies that you can enjoy on any occasion or festival, Chicken Biryani is the epitome of a one-pot meal. Well, no one can resist the sight of the aromatic and delicious Chicken Biryani recipe. If you are also craving that, then you need not go anywhere as we have got this super-easy biryani recipe for you. So, what are you waiting for?
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="videoHolder" runat="server">
    <video width="852" height="480" controls>
  <source src="../Videos/BriyaniVideo.mp4" type="video/mp4">
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
                <h2>Ingridients</h2>
            </div>
            <p>Marination for Chicken Briyani</p>
            <ul>
                <li>
                    &frac12;KG chicken 
                </li>
                <li>
                    3 tablespoons plain yogurt
                </li>
                <li>
                    1 &frac14; tablespoons ginger garlic paste
                </li>
                <li>
                    &frac12; teaspoon salt
                </li>
                <li>
                    &frac14; teaspoon turmeric
                </li>
                <li>
                    &frac12; to 1 teaspoon red chilli powder
                </li>
                <li>
                    &frac12; to 1 teaspoon garam masala
                </li>
                <li>
                    1 tablespoon lemon juice
                </li>
            </ul>
            <p>Whole Spices</p>
            <ul>
                <li>
                    1 bay leaf
                </li>
                <li>
                    4 green cardamoms 
                </li>
                <li>
                    6 cloves
                </li>
                <li>
                    1 inch cinammon
                </li>
                <li>
                    1 star anise
                </li>
                <li>
                    &frac34; teaspoon shahi jeera
                </li>
                <li>
                    1 strand mace
                </li>
            </ul>
            <p>Other Ingridients</p>
            <ul>
                <li>
                    2 cups basmati rice
                </li>
                <li>
                    2 tablespoon 
                </li>
                <li>
                    1 large onion
                </li>
                <li>
                    &frac14; to &frac12; cup mint leaves
                </li>
                <li>
                    1 green chilli
                </li>
                <li>
                    &frac14; cup plain yogurt
                </li>
                <li>
                    &frac14; to &frac12; red chilli powder
                </li>
                <li>
                    3 cups water
                </li>
            </ul>
            <div class="heading">
                <h2>Instructions</h2>
            </div>
                <ol>
                    <p>Marination Prep</p>
                    <li>
                        Mix Marinade in a large pot (about 26cm / 11" diameter). Add chicken and coat well. Marinade 20 minutes to overnight.
                    </li>
                    <p><br />Rice Prep</p>
                    <li>Bring 3 litres / 3 quarts water to the boil, add salt and spices.</li>
                    <li>
                        Add rice, bring back up to the boil then cook for 4 minutes, or until rice is just cooked still a bit firm in the middle. Rice will taste salty at this stage, disappears in next stage of cooking.
                    </li>
                    <li>Drain immediately. Set aside. (Note 10 re: leaving whole spices in)</li>
                    <li>Heat oil in a large saucepan over medium high heat. Cook onion, in batches, for 3 to 4 minutes, until golden brown. Don't burn - they become bitter.</li>
                    <li>Remove onto paper towel lined plate. Repeat with remaining onion.</li>
                    <li>Place in a bowl leave for 10 minutes</li>
                    <p><br />Biryani</p>
                    <li>Place pot with chicken in it onto a stove over medium heat. Cover and cook for 5 minutes.</li>
                    <li>Remove lid. Cook for 5 minutes, turning chicken twice</li>
                    <li>Remove from heat.</li>
                    <li>Turn chicken so skin side is down - it should cover most of the base of the pot.</li>
                    <li>Scatter over half the onion then half the coriander.</li>
                    <li>Top with all the rice. Gently pat down and flatten surface</li>
                    <li>Drizzle saffron across rice surface in random pattern, then drizzle over ghee.</li>
                    <li>Place lid on. Return to stove over medium heat.</li>
                    <li>As soon as you see steam, turn down to low then cook for 25 minutes.</li>
                    <li>Remove from stove, rest with lid on for 10 minutes.</li>
                    <p><br />To Serve</p>
                    <li>Aim to serve it so you get nice patches of yellow rice, white rice, the curry stained rice + chicken (rather than all mixed up). To do this, use a large spoon and dig deep into the pot, and try to scoop up as much as you can in one scoop.</li>
                    <li>Turn out into bowl - or onto platter. Garnish with remaining onion and coriander with yoghurt on the side (see Note 7 for Minted Yoghurt)</li>
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
                <div class="recipeValue">753</div>
                <div >Calories</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">29g</div>
                <div >Fat</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">86g</div>
                <div >Carbs</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">34g</div>
                <div>Protein</div>
            </div>
        </div>
    </div>
</asp:Content>