package proyecto.com;
import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Save extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String nombreMedico = req.getParameter("nombreMedico");
		String fecha = req.getParameter("fecha");
		String hora = req.getParameter("hora");
		String asunto = req.getParameter("asunto");
		
		Cita p = new Cita(nombreMedico,fecha,hora,asunto);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{
			pm.makePersistent(p);
			resp.sendRedirect("/reservarCita.jsp");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='index.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
	}
}