/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.model;

/**
 *
 * @author sanfa
 */
public class Calculator {
    private double number1;
    private double number2;
    private String operation;

    public Calculator(double number1, double number2, String operation) {
        this.number1 = number1;
        this.number2 = number2;
        this.operation = operation;
    }

    public double getResult() {
        switch (operation) {
            case "suma":
                return number1 + number2;
            case "resta":
                return number1 - number2;
            case "multiplica":
                return number1 * number2;
            case "divide":
                return number2 != 0 ? number1 / number2 : Double.NaN;
            default:
                return Double.NaN;
        }
    }
}

