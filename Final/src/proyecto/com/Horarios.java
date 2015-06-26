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
public class Horarios extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String fecha = req.getParameter("fecha");
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		Query q = pm.newQuery(Cita.class);
		try{
			q.setFilter("fecha == fechaParam");
			q.declareParameters("String fechaParam");
			List<Cita> personas = (List<Cita>)q.execute(fecha);
			String inn="";
			for(Cita p: personas){
				inn=inn+"<div class='cit'>"+p+"</div>";
			}
			out.print(inn);
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
		
	}
}