package com.demo.RecipeService;

import com.demo.model.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.receipeRepository.RecipeRepository;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.List;

@Service
public class RecipeService {

    @Autowired private RecipeRepository recipeRepository;

    public Recipe save(Recipe recipe) {
       if((recipe.getPrepTime() != 0) && recipe.getCookTime() != 0)
        {
           int totalTimesMilli =  recipe.getPrepTime() + recipe.getCookTime();
           recipe.setTotalTime(totalTimesMilli);
       }
       return recipeRepository.save(recipe);
    }

    public List<Recipe> getAllRecipes() {
        return recipeRepository.findAll();
    }

    public Recipe getRecipeById(Long id) {
        return recipeRepository.findById(id).orElseThrow(() -> new RuntimeException("Recipe not found"));
    }

    public void deleteRecipe(Long id) {
        recipeRepository.deleteById(id);
    }
}
