/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;



/**
 *
 * @author tliebl
 */
public class CircleService {
    
    private double area;
    private double radius;
    private final static double pi = 3.14159;
    
    public double areaOfCircle(double r){
        radius = (Math.pow(r, 2.00));
        area = pi * radius;
        area = Math.floor(area * 100)/100;
        return area;
    }
    
}
