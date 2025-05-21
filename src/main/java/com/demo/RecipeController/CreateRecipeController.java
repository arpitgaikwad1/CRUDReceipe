package com.demo.RecipeController;

import com.demo.RecipeService.RecipeService;
import com.demo.model.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

@Controller
@RequestMapping("/recipe")

public class CreateRecipeController {

    @Autowired private  RecipeService recipeService;


    @PostMapping("/test")

    public ResponseEntity<?>  test()
    {
        System.out.println("Im in test");
        return ResponseEntity.ok("Ok");
    }

    @PostMapping("/create")
    public ResponseEntity<Recipe> createRecipe(@ModelAttribute Recipe recipe) {
        System.out.println("Received  recipe: " + recipe);
        return ResponseEntity.ok(recipeService.save(recipe));
    }

    @GetMapping
    public ResponseEntity<List<Recipe>> getAllRecipes() {
        return ResponseEntity.ok(recipeService.getAllRecipes());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Recipe> getRecipeById(@PathVariable Long id) {
        return ResponseEntity.ok(recipeService.getRecipeById(id));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteRecipe(@PathVariable("id")Long id) {
        recipeService.deleteRecipe(id);
        return ResponseEntity.noContent().build();
    }


        @RequestMapping("/recipeform")
    public String getrecipeform()
    {
        return "/recipeform";
    }
}

