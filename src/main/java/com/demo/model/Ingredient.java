package com.demo.model;

import jakarta.persistence.Entity;
import lombok.Data;

@Data
public class Ingredient {
    private String label;
    private double quantity;
    private String unit;
}
