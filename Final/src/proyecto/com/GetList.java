package proyecto.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class GetList extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		Query q = pm.newQuery(Cita.class);
		
		try{
			List<Cita> personas = (List<Cita>) q.execute();
			
			out.println("<ul>");
			for(Cita p: personas){
				out.print("<li>");
				out.println(p);
				out.print("</li>");
			}
			out.println("<ul><br><a href='index.html'>Registrarse Nuevamente</a>");
			
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
		
	}
}
