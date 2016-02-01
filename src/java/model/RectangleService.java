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
public class RectangleService {
    
   private double area;
    
    public double areaOfRectangle(double l, double w){
        area = l*w;
        return area;
    }
    
}
