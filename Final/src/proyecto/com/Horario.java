package proyecto.com;
import java.util.List;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Horario{
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	@Persistent
	private String nombreDoctor;
	
	@Persistent
	private String fecha;
	
	@Persistent
	private List <Cita> citas;

	public Horario(String nombreDoctor, String fecha, List <Cita> citas) {
		this.nombreDoctor = nombreDoctor;
		this.fecha = fecha;
		this.citas = citas;
	}

	public String getNombreDoctor() {
		return nombreDoctor;
	}

	public void setNombreDoctor(String nombreDoctor) {
		this.nombreDoctor = nombreDoctor;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public List<Cita> getCitas() {
		return citas;
	}

	public void setAsunto(List<Cita> citas) {
		this.citas = citas;
	}
	
	@Override
	public String toString() {
		String resp = nombreDoctor+ " : " + fecha + " : " + citas;  
		return resp;
	}
}
