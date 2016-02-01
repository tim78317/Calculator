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
public class TriangleService {
 
    private double area;
    
    public double areaOfTriangle(double b, double h){
        area = 0.5 * (b * h);
        return area;
    }
}
