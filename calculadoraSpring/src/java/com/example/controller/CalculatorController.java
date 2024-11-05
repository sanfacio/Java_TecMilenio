/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.controller;

/**
 *
 * @author sanfa
 */

import com.example.model.Calculator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorController {

    @GetMapping("/calculator")
    public String showCalculator() {
        return "calculator";
    }

    @PostMapping("/calculate")
    public String calculate(
            @RequestParam("number1") double number1,
            @RequestParam("number2") double number2,
            @RequestParam("operation") String operation,
            Model model) {

        Calculator calculator = new Calculator(number1, number2, operation);
        double result = calculator.getResult();

        model.addAttribute("number1", number1);
        model.addAttribute("number2", number2);
        model.addAttribute("operation", operation);
        model.addAttribute("result", result);

        return "result";
    }
}
