
public class Parcela {

    private int id;
    private int qtd;
    private double valor_parcela;

    public Parcela() {
        id = 0;
        qtd = 0;
        valor_parcela = 0.0;
    }

    public Parcela(int id, int qtd, double valor_parcela) {
        this.qtd = qtd;
        this.valor_parcela = valor_parcela;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public double getValor_parcela() {
        return valor_parcela;
    }

    public void setValor_parcela(double valor_parcela) {
        this.valor_parcela = valor_parcela;
    }
}
