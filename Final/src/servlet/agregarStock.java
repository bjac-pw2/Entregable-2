package servlet;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import bjac.Medicamento;


@SuppressWarnings("serial")
public class agregarStock extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		//String id=req.getParameter("id");
		//String stock=req.getParameter("stock");
		
		PersistenceManager pm1 = PMF.get().getPersistenceManager();
		Query q = pm1.newQuery(Medicamento.class);
		@SuppressWarnings("unchecked")
		List<Medicamento> medicamentos = (List<Medicamento>) q.execute();
		
		for(Medicamento a: medicamentos){
			if(a.getId()==Float.parseFloat(req.getParameter("id"))){
				a.aumentarStock(Float.parseFloat(req.getParameter("stock")));
			}
		}
		q.closeAll();
		pm1.close();
		
		resp.sendRedirect("listaMedicamento");
		
	}
}