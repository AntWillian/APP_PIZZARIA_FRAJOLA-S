package br.com.frajolas;

/**
 * Created by 16254836 on 01/12/2017.
 */

public class Ambiente {

    private int idAmbiente;
    private double longitude;
    private double latitude;
    private String cidade;
    private String estado;
    private String telefone;
    private String bairro;
    private String numero;
    private String nomePizzaria;



    public static Ambiente create (int idAmbiente, double longitude, double latitude, String cidade, String estado, String telefone, String bairro, String numero,String nomePizzaria){

        Ambiente a = new Ambiente();
        a.setIdAmbiente(idAmbiente);
        a.setLongitude(longitude);
        a.setLatitude(latitude);
        a.setCidade(cidade);
        a.setEstado(estado);
        a.setTelefone(telefone);
        a.setBairro(bairro);
        a.setNumero(numero);
        a.setNomePizzaria(nomePizzaria);
        return a;
    }

    public String getNomePizzaia() {
        return nomePizzaria;
    }

    public void setNomePizzaria(String nomePizzaria) {
        this.nomePizzaria = nomePizzaria;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public void setLatitude(float latitude) {
        this.latitude = latitude;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public int getIdAmbiente() {
        return idAmbiente;
    }

    public void setIdAmbiente(int idAmbiente) {
        this.idAmbiente = idAmbiente;
    }
}
