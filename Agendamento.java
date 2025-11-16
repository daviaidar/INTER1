
public class Agendamento {

    private int id;
    private int status;
    private int data;
    private double horario;
    private double valor;

    public Agendamento() {
        id = 0;
        status = 0;
        data = 0;
        horario = 0.0;
        valor = 0;
    }

    public Agendamento(int id, int status, int data, double horario, double valor) {
        this.id = id;
        this.status = status;
        this.data = data;
        this.horario = horario;
        this.valor = valor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getData() {
        return data;
    }

    public void setData(int data) {
        this.data = data;
    }

    public double getHorario() {
        return horario;
    }

    public void setHorario(double horario) {
        this.horario = horario;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }
}
