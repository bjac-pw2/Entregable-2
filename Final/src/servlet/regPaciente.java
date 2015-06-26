package servlet;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import bjac.Paciente;
import bjac.Usuario;

@SuppressWarnings("serial")
public class regPaciente extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html");
		try{
			
			String DNI=req.getParameter("dni");
			
			
			PersistenceManager pm1 = PMF.get().getPersistenceManager();
			Query q = pm1.newQuery(Usuario.class);
			@SuppressWarnings("unchecked")
			List<Usuario> usuario = (List<Usuario>) q.execute();
			
			for(Usuario a: usuario){
				if(a.getDNI().equalsIgnoreCase(DNI)){
					resp.sendRedirect("controlJSP?option=2");
					return;
				}
			}
			q.closeAll();
			pm1.close();
			
			Paciente pac=new Paciente(DNI,req.getParameter("nombre") , req.getParameter("apellidoPat")+" "+req.getParameter("apellidoMat"), req.getParameter("email"), req.getParameter("telefono"), 
					req.getParameter("direccion"), req.getParameter("genero"), Double.parseDouble(req.getParameter("peso")), Double.parseDouble(req.getParameter("talla")),req.getParameter("tSangre") );
			
			PersistenceManager pm = PMF.get().getPersistenceManager();
			pm.makePersistent(pac);
			
			String password=req.getParameter("nombre").substring(0, 1).toLowerCase()+req.getParameter("apellidoPat").toLowerCase();
			Usuario usu=new Usuario(DNI, password, "Paciente");
			pm.makePersistent(usu);
			
			resp.sendRedirect("listaPaciente");
			
		}catch(Exception e){
			resp.getWriter().println("Imposible Guardar");
			resp.getWriter().println(e.getMessage());
		}
	}
}