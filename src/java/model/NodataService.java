/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author timothy
 */
public class NodataService {
    
    private static final String FINAL_STATIC_ERROR_MESSAGE = "You did not enter a valid number<br> Please return to the home page and enter a valid number";
    
    public String noDataMessage(){
        return FINAL_STATIC_ERROR_MESSAGE;
    }
}
