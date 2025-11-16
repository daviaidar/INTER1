
public class Pessoa {

    private int codigo;
    private String cpf;
    private String rg;
    private String dataNasc;
    private String nome;

    public Pessoa() {
        codigo = 0;
        cpf = "";
        rg = "";
        dataNasc = "";
        nome = "";
    }

    public Pessoa(int codigo, String cpf, String rg, String dataNasc, String nome) {
        this.codigo = codigo;
        this.cpf = cpf;
        this.rg = rg;
        this.dataNasc = dataNasc;
        this.nome = nome;
    }

    public int getId() {
        return codigo;
    }

    public void setId(int id) {
        this.codigo = id;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(String dataNasc) {
        this.dataNasc = dataNasc;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
