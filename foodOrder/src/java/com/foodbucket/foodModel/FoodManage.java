/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.foodModel;

/**
 *
 * @author IshanFX
 */
public interface FoodManage {
    int addFoodItems(FoodBean food);
    int modifyFoodItems(FoodBean food);
    int removeFoodItems(FoodBean food);
}
