package proyecto.com;
import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bjac.Paciente;
@SuppressWarnings("serial")
public class Eleminar extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String nombre = req.getParameter("dni");
		String contraseña = req.getParameter("password");

		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Paciente.class);
		q.setFilter("DNI == DNIParam");
		q.declareParameters("String DNIParam");
		try{
			if(contraseña.equals("xdxdxd")){
				List<Paciente> personas = (List<Paciente>) q.execute(nombre);
				for(Paciente p: personas){
					pm.deletePersistent(p);
				}
				resp.sendRedirect("/eliminar.html");
			}else{
				resp.getWriter().print("no seas rata");
			}
			
		}catch(Exception e){
			resp.getWriter().print("error de copilacion");
		}finally{
			q.closeAll();
		}
	}
}
