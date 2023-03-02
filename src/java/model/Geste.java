/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author RickyBic
 */
@Entity
public class Geste {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idGeste;
    private String nom;

    public Integer getIdGeste() {
        return idGeste;
    }

    public void setIdGeste(Integer idGeste) {
        this.idGeste = idGeste;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

}
