<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeFile="PastaInfoPage.aspx.cs" Inherits="WebApplication6.PastaInfoPage" %>

<asp:Content ID="Content8" ContentPlaceHolderID="titleHolder" runat="server">
    Tomato Chicken Pasta
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="descriptionHolder" runat="server">
    This dish is perfect for when you want something delicious and comforting but also fairly healthy. 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="videoHolder" runat="server">
    <video width="852" height="480" controls>
  <source src="../Videos/pastaVideo.mp4" type="video/mp4">
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
                <div class="recipeValue">10 minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Cook Time:</div>
                <div class="recipeValue">20 minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Total Time:</div>
                <div class="recipeValue">30 minutes</div>
            </div>
            <div class="recipeItem">
                <div class="recipeLabel">Servings:</div>
                <div class="recipeValue">4 Pax</div>
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
            <ul>
                <li>
                    8 ounces uncooked pasta 
                </li>
                <li>
                    2 chicken breasts 
                </li>
                <li>
                    1 &frac12; tablespoons garlic powder
                </li>
                <li>
                    Salt & pepper to taste 
                </li>
                <li>
                    1 tablespoon butter
                </li>
                <li>
                    1 tablespoon olive oil
                </li>
                <li>
                    2-3 cloves of garlic (minced)
                </li>
                <li>
                    2 tablespoons tomato paste
                </li>
                <li>
                    1 (14 fluid ounce canned tomato sauce) 
                </li>
                <li>
                    &frac34 cup heavy/whipping cream
                </li>
                <li>
                    &frac14 teaspoon Italian seasoning
                </li>
                <li>
                    2 cups (packed) fresh baby spinach
                </li>
                <li>
                    Freshly grated parmesan cheese
                </li>
            </ul>
            <div class="heading">
                <h2>Instructions</h2>
            </div>
                <ol>
                    <li>Boil a large, salted pot of water for your pasta and cook it al dente according to package instructions.</li>
                    <li>Meanwhile, cut the chicken in half lengthwise so you've got 4 thinner pieces. Season both sides of each piece with the garlic powder and salt & pepper.</li>
                    <li>Remove from heat.</li>
                    <li>Add the butter and olive oil to a skillet over medium-high heat. Let the pan heat up for a few minutes, then cook the chicken for about 5 minutes/side or until it's cooked through, then transfer the chicken to a plate.</li>
                    <li>Add the garlic to the skillet and cook for 30 seconds.</li>
                    <li>Add in the tomato paste, tomato sauce, cream, and Italian seasoning. Stir until it's nice and smooth. Reduce the heat to medium. Let the sauce cook for about 3-5 minutes (let it gently bubble and it will thicken up a bit).</li>
                    <li>Meanwhile, cut the chicken up into strips.</li>
                    <li>Season the sauce with some salt & pepper, then add in the chicken and spinach and let it warm through for a minute or two.</li>
                    <li>If the sauce gets too thick, add in a splash of the hot pasta water prior to draining it. </li>
                    <li>Drain the pasta and toss with the sauce.</li>
                    <li>Serve immediately with parmesan cheese over top.</li>
                </ol>
             </div>

    </div>
</asp:Content>
