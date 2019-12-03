package servlets;

import business.Annuity;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tom Valli
 */
public class AnnuityCalcServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "/AnnuityResults.jsp";
        String msg = "";
        double deposit1, deposit2, rate;
        int term;
        Annuity a = new Annuity();
        
        try { //validates deposits
            deposit1 = Double.parseDouble(request.getParameter("amt1"));
            a.setDeposit(deposit1);
            
            deposit2 = Double.parseDouble(request.getParameter("amt2"));
            a.setDepositEnd(deposit2);
            
            if (deposit1 == 0 && deposit2 == 0) {
                msg += "At least one deposit must be greater than zero.<br>";
            }
            if (deposit1 < 0 || deposit2 < 0) {
                msg += "Deposit cannot be negative, that's a withdrawal!<br>";
            }
        } catch (NumberFormatException e) {
            msg += "(Deposits): Non-numeric or bad data<br>";
        }
        
        try {//rate validation
            
            rate = Double.parseDouble(request.getParameter("irt"));
            a.setRate(rate);
            
            if (rate <= 0 || rate >= 100) {
                msg += "Interest rate cannot be less than or equal to 0% or greater than 100%<br>";
            }
            
        } catch (NumberFormatException e) {
            msg += "(Interest Rate): Non-numeric or bad data<br>";
        }
        
        try { //term validation
            //final version needs full validation, etc.
            //IN FINAL VERSION: EITHER Deposit1 OR Deposit2 can be zero, but NOT BOTH!
            
            term = Integer.parseInt(request.getParameter("term"));
            a.setTerm(term);
            
            if (term < 1) {
                msg += "Term length must be a number greater than zero<br>";
            }
            
            
        } catch (NumberFormatException e) {
            msg += "(Term): Non-numeric or bad data<br>";
        }
        
        
        
        if (!msg.isEmpty()) {
            url = "/AnnuityInput.jsp";
            request.setAttribute("msg", msg);
        }
        
        HttpSession sess = request.getSession();
        sess.setAttribute("annuity", a);
        
        RequestDispatcher disp = 
                getServletContext().getRequestDispatcher(url);
        disp.forward(request, response);
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
