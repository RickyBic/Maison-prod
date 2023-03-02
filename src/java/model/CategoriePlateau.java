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
public class CategoriePlateau {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idCategoriePlateau;
    private String nom;

    public Integer getIdCategoriePlateau() {
        return idCategoriePlateau;
    }

    public void setIdCategoriePlateau(Integer idCategoriePlateau) {
        this.idCategoriePlateau = idCategoriePlateau;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public static String getNomById(int id) {
        if (id == 1) {
            return "Ville";
        } else if (id == 2) {
            return "Nature";
        }
        return null;
    }

}
