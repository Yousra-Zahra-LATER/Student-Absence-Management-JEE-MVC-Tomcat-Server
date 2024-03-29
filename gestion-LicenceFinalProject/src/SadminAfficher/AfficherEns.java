package SadminAfficher;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.AdminModifier;
import modele.Enseignant;


@WebServlet("/AfficherEns")
public class AfficherEns extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AfficherEns() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session =request.getSession(true);
		    int op=Integer.parseInt(request.getParameter("op"));
		    AdminModifier m=new AdminModifier ();
			ArrayList<Enseignant> mo =m.selectionENS(op);
		    session.setAttribute("liste",mo);
		    response.sendRedirect("admin/pages/AfficherEns.jsp");
		
		    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}