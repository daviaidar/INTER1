
public class Funcionario extends Pessoa {

    private double salario;

    public Funcionario() {
        salario = 0.0;
    }

    public Funcionario(int id, String cpf, String rg, String dataNasc, String nome, double salario) {
        super(id, cpf, rg, dataNasc, nome);
        this.salario = salario;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }
}
