/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

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
        if (ciclo < 1) {
            ciclo = 1;
        } else if (ciclo > 6) {
            ciclo = 6;
        }
        this.ciclo = ciclo;
    }

    public Disciplina getList(int i) {
        ArrayList<Disciplina> d = new ArrayList<Disciplina>();
        d.add(new Disciplina("Banco de Dados", "Ementa BD", 4));
        d.add(new Disciplina("Engenharia de Software III", "Ementa ES", 4));
        d.add(new Disciplina("Programação Orientada a Objetos", "Ementa POO", 4));
        d.add(new Disciplina("Linguagem de Programação IV", "Ementa LP", 4));
        d.add(new Disciplina("Sistemas Operacionais II", "Ementa SO", 4));
        d.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica", "Ementa MET", 4));
        return d.get(i);
    }

    public String getNome() {
        return nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public double getNota() {
        return nota;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;

    }

    public void setCiclo(int ciclo) {
        if (ciclo < 1) {
            ciclo = 1;
        } else if (ciclo > 6) {
            ciclo = 6;
        }
        this.ciclo = ciclo;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
}
