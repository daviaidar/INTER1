
public class Cliente extends Pessoa {

    private int estrela;

    public Cliente() {
        estrela = 0;
    }

    public Cliente(int id, String cpf, String rg, String dataNasc, String nome, int estrela) {
        super(id, cpf, rg, dataNasc, nome);
        this.estrela = estrela;
    }

    public int getEstrela() {
        return estrela;
    }

    public void setEstrela(int estrela) {
        this.estrela = estrela;
    }
}
