package bjac;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

public class Cita {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private Paciente paciente;
	@Persistent
	private String especialidad;
	@Persistent
	private Medico medico;
	
	public Cita(Key key, Paciente paciente, String especialidad, Medico medico, Horario h) {
		super();
		this.key = key;
		this.paciente = paciente;
		this.especialidad = especialidad;
		this.medico = medico;
	}
	
	public Key getKey() {
		return key;
	}

	public void setKey(Key key) {
		this.key = key;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	public String getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}

	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}

	@Override
	public String toString() {
		return "Cita [key=" + key + ", paciente=" + paciente
				+ ", especialidad=" + especialidad + ", medico=" + medico + "]";
	}
}