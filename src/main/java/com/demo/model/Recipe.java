package com.demo.model;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

@Data
@Entity
public class Recipe {

    @Id
    @GeneratedValue
    private Long id;

    private String heading;
    private String shortDescription ;
    private String longDescription;

    private String imagePath;

    private int prepTime;
    private int cookTime;
    private int totalTime;

}



//    @ElementCollection
//    @CollectionTable(name = "recipe_ingredients", joinColumns = @JoinColumn(name = "recipe_id"))
//    private java.util.List<Ingredient> ingredients;
//}
