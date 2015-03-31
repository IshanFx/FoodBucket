/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package com.foodbucket.foodModel;


import java.io.InputStream;
import java.io.Serializable;
import javax.servlet.http.Part;

/**
 *
 * @author IshanFX
 */
public class FoodBean implements Serializable{
    private int foodId;
    private String foodName;
    private double foodPrice;
    private String foodDesc;
    private String foodCateg;
    private String foodstatus;
    private Part foodimage;

   
    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    

    public double getFoodPrice() {
        return foodPrice;
    }

    public void setFoodPrice(double foodPrice) {
        this.foodPrice = foodPrice;
    }

    public String getFoodDesc() {
        return foodDesc;
    }

    public void setFoodDesc(String foodDesc) {
        this.foodDesc = foodDesc;
    }

    public String getFoodCateg() {
        return foodCateg;
    }

    public void setFoodCateg(String foodCateg) {
        this.foodCateg = foodCateg;
    }

    public String getFoodstatus() {
        return foodstatus;
    }

    public void setFoodstatus(String foodstatus) {
        this.foodstatus = foodstatus;
    }

    public Part getFoodimage() {
        return foodimage;
    }

    public void setFoodimage(Part foodimage) {
        this.foodimage = foodimage;
    }
    
    public FoodBean(){
    
    
    }
    
    
}
