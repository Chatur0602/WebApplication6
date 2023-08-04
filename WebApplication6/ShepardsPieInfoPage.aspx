<%@ Page Language="C#" MasterPageFile="~/mySite.Master" AutoEventWireup="true" CodeFile="ShepardsPieInfoPage.aspx.cs" Inherits="WebApplication6.ShepardsPieInfoPage" %>

<asp:Content ID="Content8" ContentPlaceHolderID="titleHolder" runat="server">
    Sheperd's Pie
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="descriptionHolder" runat="server">
    Shepherd's Pie comes to us from England, and is traditionally made with lamb or mutton. It's pure comfort food.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="videoHolder" runat="server">
    <video width="852" height="480" controls>
  <source src="../Videos/pieVideo.mp4" type="video/mp4">
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
                <h2>Ingredients</h2>
            </div>
            <ul>
                <li>
                    1 teaspoon salt and pepper (or other seasonings of your choice)
                </li>
                <li>
                    3 large potatoes , peeled and quartered
                </li>
                <li>
                    8 tablespoons (1 stick) butter, divided
                </li>
                <li>
                    1 medium onion, chopped
                </li>
                <li>
                    1 to 2 cups mixed vegetables, such as diced carrots, corn, or peas
                </li>
                <li>
                    1 &frac12 pounds ground round beef
                </li>
                <li>
                    &frac12 cup beef broth
                </li>
                <li>
                    1 teaspoon Worcestershire sauce
                </li>
            </ul>
     
            <div class="heading">
                <h2>Instructions</h2>
            </div>
                <ol>
                    <p>Boil the potatoes</p>
                    <li>
                        Place the peeled and quartered potatoes in medium sized pot. Cover with at least an inch of cold water. Add a teaspoon of salt. Bring to a boil, reduce to a simmer, and cook until tender (about 20 minutes).
                    </li>
                    <p><br />Preheat the oven</p>
                    <li>Preheat the oven to 400°F.</li>
                    <p><br />Saute the vegetables</p>
                    <li>While the potatoes are cooking, melt 4 tablespoons of the butter in a large sauté pan on medium heat. Add the chopped onions and cook until tender, about 6 to 10 minutes.</li>
                    <li>If you are including vegetables, add them according to their cooking time. Carrots should be cooked with the onions, because they take as long to cook as the onions do.</li>
                    <li>If you are including peas or corn, add them toward the end of the cooking of the onions, or after the meat starts to cook, as they take very little cooking time.</li>
                    <p><br />Ground beef, Worcestershire sauce, and broth</p>
                    <li>Add ground beef to the pan with the onions and vegetables. Cook until no longer pink. Drain the pan of excess fat, if necessary (anything more than 1 tablespoon). Season with salt and pepper.</li>
                    <li>Add the Worcestershire sauce and beef broth. Bring the broth to a simmer and reduce heat to low. Cook uncovered for 10 minutes, adding more beef broth if necessary to keep the meat from drying out.</li>
                    <li>Taste the cooked filling and, if needed, add more salt, pepper, Worcestershire, or other seasonings of your choice.</li>  
                    <p><br />Mash the cooked potatoes</p>
                    <li>When the potatoes are done cooking (a fork can easily pierce), remove them from the pot and place them in a bowl with the remaining 4 tablespoons of butter. Mash with a fork or potato masher, taste, and adjust seasonings with salt and pepper.</li>
                    <p><br />Layer the meat mixture and mashed potatoes in a casserole dish</p>
                    <li>Spread the cooked filling in an even layer in a large baking dish</li>
                    <li>Spread the mashed potatoes over the top of the ground beef. Rough up the surface of the mashed potatoes with a fork so there are peaks that will get well browned. You can even use a fork to make creative designs in the mashed potatoes.</li>
                    <p><br />Bake in oven</p>
                    <li>Place in a 400°F oven and cook until browned and bubbling, about 30 minutes. If necessary, broil for the last few minutes to help the surface of the mashed potatoes brown.</li>
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
                <div class="recipeValue">865</div>
                <div >Calories</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">50g</div>
                <div >Fat</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">51g</div>
                <div >Carbs</div>
                
            </div>
            <div class="recipeItem">
                <div class="recipeValue">54g</div>
                <div>Protein</div>
            </div>
        </div>
    </div>
</asp:Content>