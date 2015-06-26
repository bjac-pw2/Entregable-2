package servlet;
import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bjac.Usuario;

@SuppressWarnings("serial")
public class validaSesion extends HttpServlet{	

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String usuario= req.getParameter("usuario");
		String password = req.getParameter("password");
		PersistenceManager pm1 = PMF.get().getPersistenceManager();
		Query q = pm1.newQuery(Usuario.class);
		@SuppressWarnings("unchecked")
		List<Usuario> usuarios = (List<Usuario>) q.execute();

		try{
			for(Usuario a: usuarios){
				if(a.getDNI().equals(usuario) && a.getPassword().equals(password)){
					if(a.getTipo().equals("Paciente")){
						HttpSession sesion= req.getSession(true);
						sesion.setAttribute("usuario",a.getDNI());
						sesion.setAttribute("nombre", a.getNombreUsuario());
						sesion.setAttribute("tipo", "Paciente");
						resp.sendRedirect("controlJSP?option=1");
						return;
					}
					if(a.getTipo().equals("Medico")){
						HttpSession sesion= req.getSession(true);
						sesion.setAttribute("usuario",a.getDNI());
						sesion.setAttribute("nombre", a.getNombreUsuario());
						sesion.setAttribute("tipo", "Medico");
						resp.sendRedirect("controlJSP?option=6");
						return;
					}
					if(a.getTipo().equals("Administrador")){
						HttpSession sesion= req.getSession(true);
						sesion.setAttribute("usuario",a.getDNI());
						sesion.setAttribute("nombre", a.getNombreUsuario());
						sesion.setAttribute("tipo", "Administrador");
						resp.sendRedirect("controlJSP?option=7");
						return;
					}
				}
			}
			resp.sendRedirect("http://5-dot-bjac-pw2.appspot.com/");
			return;
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		q.closeAll();
	}	
}