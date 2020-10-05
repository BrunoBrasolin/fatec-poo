package java.br.edu.fatecpg.poo;

import java.util.ArrayList;

public class Disciplina {

    private String nome;
    private String ementa;
    private int ciclo;
    private double nota;

    public Disciplina(String nome, String ementa, int ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }

    public String getNome() {
        return this.nome;
    }

    public String getEmenta() {
        return this.ementa;
    }

    public int getCiclo() {
        return this.ciclo;
    }

    public double getNota() {
        return this.nota;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }

    public int getList() {
        return 1;
    }
}
