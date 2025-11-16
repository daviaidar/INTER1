
public class Logradouro {

    private int codigo;
    private int nr;
    private String nomeRua;
    private String cep;
    private String complemento;

    public Logradouro() {
        codigo = 0;
        nr = 0;
        nomeRua = "";
        cep = "";
        complemento = "";
    }

    public Logradouro(int codigo, int nr, String nomeRua, String cep, String complemento) {
        this.codigo = codigo;
        this.nr = nr;
        this.nomeRua = nomeRua;
        this.cep = cep;
        this.complemento = complemento;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getNr() {
        return nr;
    }

    public void setNr(int nr) {
        this.nr = nr;
    }

    public String getNomeRua() {
        return nomeRua;
    }

    public void setNomeRua(String nomeRua) {
        this.nomeRua = nomeRua;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }
}
