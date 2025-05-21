<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipe CRUD</title>
    <link rel="stylesheet" href="views/style.css">
    <script src="script.js" defer></script>
<style>
body {
    margin: 5;
    padding: 10;
    font-family: 'Arial', sans-serif;
    background-color: #f8f9fa;
    color: #333;
}
h1 {
    width: 60%;
    margin: 20px auto;
    padding: 10px;
    font-size: 28px;
    text-align: center;
    color: #333;
    background-color: #eaeaea;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
}


main {
    max-width: 800px;
    margin: 30px auto;
    padding: 20px;
    background: #ffffff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

form {
    display: flex;
    flex-direction: column;
    gap: 50px;
}

fieldset {
    border: 1px solid #ddd;
    padding: 15px;
    border-radius: 8px;
}

legend {
    padding: 0 10px;
    font-weight: bold;
}

input, textarea, button {
    font-size: 16px;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    width: 100%;
}

button {
    background-color: #007bff;
    color: white;
    cursor: pointer;
    border: none;
}

button:hover {
    background-color: #0056b3;
}

.ingredient {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
}

.removeIngredient {
    background-color: #ff4d4f;
    color: white;
}

.removeIngredient:hover {
    background-color: #d11a1c;
}

</style>
</head>
<body>
    <header>
        <h1>Submit Your Recipes</h1>
    </header>
    <main>
        <form id="recipeForm" method="post" action="/recipe/create">
            <fieldset>
                <legend>Recipe Details</legend>
                <label for="heading">Recipe Heading:</label>
                <input type="text" id="heading" name="heading" placeholder="Enter recipe name" required><br><br>

                <label for="shortDescription">Short Description:</label>
                <textarea id="shortDescription" name="shortDescription" placeholder="Enter a short description" required></textarea><br><br>

                <label for="longDescription">Long Description:</label>
                <textarea id="longDescription" name="longDescription" placeholder="Enter detailed description"></textarea><br><br>

                <label for="image">Image URL:</label>
                <input type="text" id="image" name="image" placeholder="Paste image URL"><br><br>
            </fieldset>

            <fieldset>
                <legend>Cooking Details</legend>
                <label for="prepTime">Prep Time (hours):</label>
                <input type="number" step="0.1" id="prepTime" name="prepTime" placeholder="e.g., 1.5" required><br><br>

                <label for="cookTime">Cook Time (hours):</label>
                <input type="number" step="0.1" id="cookTime" name="cookTime" placeholder="e.g., 2.0" required><br><br>

                <label for="noOfServings">Number of Servings:</label>
                <input type="number" id="noOfServings" name="noOfServings" placeholder="e.g., 4" required><br><br>
            </fieldset>

            <fieldset>
                <legend>Ingredients</legend>
                <div id="ingredientsContainer">
                    <div class="ingredient">
                        <input type="text" placeholder="Label" class="ingredient-label" name="ingredientLabel[]" required>
                        <input type="number" placeholder="Quantity" class="ingredient-quantity" name="ingredientQuantity[]" required>
                        <input type="text" placeholder="Unit" class="ingredient-unit" name="ingredientUnit[]" required>
                        <button type="button" class="removeIngredient" onclick="removeIngredient(this)">Remove</button>
                    </div>
                </div>
                <button type="button" onclick="addIngredient()">Add Ingredient</button><br><br>
            </fieldset>

            <button type="submit">Submit Recipe</button>
        </form>
    </main>
</body>
</html>
