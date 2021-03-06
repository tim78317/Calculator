/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CircleService;
import model.NodataService;
import model.RectangleService;
import model.TriangleService;

/**
 *
 * @author tliebl
 */
@WebServlet(name = "CalcController", urlPatterns = {"/CalcController"})
public class CalcController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String test = "fail";
        String tri = "";
        String rec = "";
        String cir = "";
        if(request.getParameter("width") == null || request.getParameter("length") == null){
            rec = null;
        }else if(request.getParameter("width").equals(rec) || request.getParameter("length").equals(rec)){
            rec = "fail";
        }
        if(request.getParameter("radius1") == null){
            cir = null;
        }else if(request.getParameter("radius1").equals(cir)){
            cir = "fail";
        }
        if(request.getParameter("base") == null || request.getParameter("height") == null){
            tri = null;
        }else if(request.getParameter("base").equals(tri) || request.getParameter("height").equals(tri)){
            tri = "fail";
        } 
        
        if(test.equals(rec) || test.equals(cir) || test.equals(tri)){
            NodataService nds = new NodataService();
            String errorDataMessage = nds.noDataMessage();
             request.setAttribute("errorDataMessage",errorDataMessage);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/calculator.jsp");
        dispatcher.forward(request, response);
        }else if(request.getParameter("length") != null && request.getParameter("width") != null ){
        double l = Double.parseDouble(request.getParameter("length"));
        double w = Double.parseDouble(request.getParameter("width"));
        RectangleService rs = new RectangleService();
        Double area = rs.areaOfRectangle(l, w);
        request.setAttribute("area",area);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/calculator.jsp");
        dispatcher.forward(request, response);
        }else if(request.getParameter("radius1") != null){
        double r1 = Double.parseDouble(request.getParameter("radius1"));
            CircleService cs = new CircleService();
            Double areaOfCircle = cs.areaOfCircle(r1);
            request.setAttribute("areaOfCircle",areaOfCircle);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/calculator.jsp");
        dispatcher.forward(request, response);
        }else if(request.getParameter("base") != null){
        double s1 = Double.parseDouble(request.getParameter("base"));
        double s2 = Double.parseDouble(request.getParameter("height"));
            TriangleService ts = new TriangleService();
            Double areaOfTriangle = ts.areaOfTriangle(s1, s2);
            request.setAttribute("areaOfTriangle",areaOfTriangle);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/calculator.jsp");
        dispatcher.forward(request, response);
        }
//         request.setAttribute("area",area);
//            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/resultspage.jsp");
//        dispatcher.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
