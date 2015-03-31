/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.orderModel;

/**
 *
 * @author IshanFX
 */
public class NormalOrderBean {
    private int orderFoodId;
    private int orderQuantity;
    private double orderPrice;
    private String orderState;
    private int orderDay;
    private int orderMonth;
    private int orderId;
    private int orderYear;
    private int orderCusId;

   
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderYear(int orderYear) {
        this.orderYear = orderYear;
    }

    public int getOrderMonth() {
        return orderMonth;
    }

    public void setOrderCusId(int orderCusId) {
        this.orderCusId = orderCusId;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

    public int getOrderYear() {
        return orderYear;
    }

    public void setOrderMonth(int orderMonth) {
        this.orderMonth = orderMonth;
    }

    public int getOrderDay() {
        return orderDay;
    }

    public void setOrderDay(int orderDay) {
        this.orderDay = orderDay;
    }

    public int getOrderCusId() {
        return orderCusId;
    }

    public String getOrderState() {
        return orderState;
    }

    public int getOrderFoodId() {
        return orderFoodId;
    }

    public void setOrderFoodId(int orderFoodId) {
        this.orderFoodId = orderFoodId;
    }

    public int getOrderQuantity() {
        return orderQuantity;
    }

    public void setOrderQuantity(int orderQuantity) {
        this.orderQuantity = orderQuantity;
    }

    public double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(double orderPrice) {
        this.orderPrice = orderPrice;
    }
    
}
