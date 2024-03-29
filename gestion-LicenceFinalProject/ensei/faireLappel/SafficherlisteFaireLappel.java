package faireLappel;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modeleE.Etudiant;
import modeleE.mesgroupes;

/**
 * Servlet implementation class SafficherlisteFaireLappel
 */
@WebServlet("/SafficherlisteFaireLappel")
public class SafficherlisteFaireLappel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SafficherlisteFaireLappel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session =request.getSession(true);
		int iduser=Integer.parseInt(request.getParameter("iduser"));
		String name=request.getParameter("name");
		session.setAttribute("iduser", iduser);
		session.setAttribute("name", name);
		int op=Integer.parseInt(request.getParameter("op"));
		int op1=Integer.parseInt(request.getParameter("op1"));
		mesgroupes g=new mesgroupes();
		ArrayList<Etudiant> l =g.ConsulterGroupe(op);
		session.setAttribute("idseance", op);
		session.setAttribute("idgroupe", op1);
		session.setAttribute("liste",l);
		response.sendRedirect("enseignant/pages/listeFaireReleve.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}