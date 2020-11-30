/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

import java.util.ArrayList;
import java.sql.*;

/**
 *
 * @author bruno
 */
public class Disciplina {

    private long rowId;
    private String nome;
    private String ementa;
    private int ciclo;
    private double nota;

    public Disciplina(long rowId, String nome, String ementa, int ciclo, double nota) {
        this.rowId = rowId;
        this.nome = nome;
        this.ementa = ementa;
        if (ciclo < 1) {
            ciclo = 1;
        } else if (ciclo > 6) {
            ciclo = 6;
        }
        this.ciclo = ciclo;
        this.nota = nota;
    }

    public static ArrayList<Disciplina> getList() {
        ArrayList<Disciplina> list = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet result = null;

        try {
            connection = DBListener.getConnection();
            statement = connection.createStatement();
            result = statement.executeQuery("SELET rowid, * FROM disciplinas");
            while (result.next()) {
                list.add(new Disciplina(
                        result.getLong("rowid"),
                        result.getString("nome"),
                        result.getString("ementa"),
                        result.getInt("ciclo"),
                        result.getDouble("nota")
                ));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

    public static void insert(String nome, String ementa, int ciclo, double nota) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = DBListener.getConnection();
            statement = connection.prepareStatement("INSERT INTO disciplinas VALUES(?,?,?,?)");
            statement.setString(1, nome);
            statement.setString(2, ementa);
            statement.setInt(3, ciclo);
            statement.setDouble(4, nota);
            statement.execute();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static void delete(long rowid) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = DBListener.getConnection();
            statement = connection.prepareStatement("DELETE FROM disciplinas WHERE rowid=?");
            statement.execute();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
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

    public void setRowId(long rowId) {
        this.rowId = rowId;
    }

    public long getRowId() {
        return rowId;
    }
    
    public static String getCreateTableStatement() {
        return "CREATE TABLE IF NOT EXISTS disciplinas("
                + "nome VARCHAR(255) UNIQUE NOT NULL,"
                + "ementa VARCHAR(255) NOT NULL,"
                + "ciclo INT NOT NULL,"
                + "nota DOUBLE NOT NULL"
                + ")";
    }
}
