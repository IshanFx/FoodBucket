/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.orderModel;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author IshanFX
 */
public class SpecialOrderBean {
  
    private String ordAddress;
    private String ordDeliverDate;
    private String ordCusName;
    private String ordQuantity;
    private String ordFoodCategory;
    private String ordDesc;
    private int ordId;
    private String ordState;
    private Double ordTotal;
    private int ordCusId;
    
    public SpecialOrderBean(){
    
    }
    public void setOrdCusName(String ordCusName) {
        this.ordCusName = ordCusName;
    }

    public void setOrdQuantity(String ordQuantity) {
        this.ordQuantity = ordQuantity;
    }

    public void setOrdDeliverDate(String ordDeliverDate) {
        this.ordDeliverDate = ordDeliverDate;
    }

    public String getOrdDeliverDate() {
        return ordDeliverDate;
    }

    public String getOrdAddress() {
        return ordAddress;
    }

    public String getOrdFoodCategory() {
        return ordFoodCategory;
    }

    public void setOrdAddress(String ordAddress) {
        this.ordAddress = ordAddress;
    }

    public String getOrdDesc() {
        return ordDesc;
    }

    public void setOrdFoodCategory(String ordFoodCategory) {
        this.ordFoodCategory = ordFoodCategory;
    }

    public void setOrdDesc(String ordDesc) {
        this.ordDesc = ordDesc;
    }

    public String getOrdCusName() {
        return ordCusName;
    }

    public String getOrdQuantity() {
        return ordQuantity;
    }

    public int getOrdId() {
        return ordId;
    }

    public void setOrdId(int ordId) {
        this.ordId = ordId;
    }

    public String getOrdState() {
        return ordState;
    }

    public void setOrdState(String ordState) {
        this.ordState = ordState;
    }

    public Double getOrdTotal() {
        return ordTotal;
    }

    public void setOrdTotal(Double ordTotal) {
        this.ordTotal = ordTotal;
    }

    public int getOrdCusId() {
        return ordCusId;
    }

    public void setOrdCusId(int ordCusId) {
        this.ordCusId = ordCusId;
    }
    
}
