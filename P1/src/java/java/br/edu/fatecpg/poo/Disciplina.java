/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java.br.edu.fatecpg.poo;

import java.util.ArrayList;

/**
 *
 * @author bruno
 */
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

    public Disciplina getList(int i) {
        Disciplina d1 = new Disciplina("Banco de Dados", "Ementa BD", 4);
        Disciplina d2 = new Disciplina("Engenharia de Software III", "Ementa ES3", 4);
        Disciplina d3 = new Disciplina("Programação Orientada a Objetos", "Ementa POO", 4);
        Disciplina d4 = new Disciplina("Linguagem de Programação IV", "Ementa LP4", 4);
        Disciplina d5 = new Disciplina("Sistemas Operacionais II", "Ementa SO2", 4);
        Disciplina d6 = new Disciplina("Metodologia da Pesquisa Científico-Tecnológica", "Ementa MetPesq", 4);
        
        ArrayList<Disciplina> disciplinas = new ArrayList<Disciplina>();
        disciplinas.add(d1);
        disciplinas.add(d2);
        disciplinas.add(d3);
        disciplinas.add(d4);
        disciplinas.add(d5);
        disciplinas.add(d6);
        return disciplinas.get(i);
    }

}
