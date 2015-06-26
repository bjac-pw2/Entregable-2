package proyecto.com;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Cita {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	@Persistent
	private String nombreDoctor;
	@Persistent
	
	private String fecha;
	@Persistent
	
	private String hora;
	
	@Persistent
	private String asunto;

	public Cita(String nombreDoctor,String fecha, String hora, String asunto) {
		super();
		this.nombreDoctor=nombreDoctor;
		this.fecha=fecha;
		this.hora = hora;
		this.asunto = asunto;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getAsunto() {
		return asunto;
	}
	public void setAsunto(String asunto) {
		this.asunto = asunto;
	}
	public String getNumeroCita() {
		return nombreDoctor;
	}
	public String getfecha() {
		return fecha;
	}
	
	@Override
	public String toString() {
		String resp = nombreDoctor + " : "+fecha+" : " + hora + " : " + asunto;  
		return resp;
	}
}
