package proyecto.com;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SaveMedico extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String nombre = req.getParameter("nombre");
		
		Medico p = new Medico(nombre);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{
			pm.makePersistent(p);
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='index.jsp'>vuelva a intentarlo</a>");
		}
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		Query q = pm.newQuery(Medico.class);
		
		try{
			List<Medico> personas = (List<Medico>) q.execute();
			
			out.println("<ul>");
			for(Medico pp: personas){
				out.print("<li>");
				out.println(pp);
				out.print("</li>");
			}
			out.println("<ul><br><a href='index.html'>Registrarse Nuevamente</a>");
			
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
	}
}