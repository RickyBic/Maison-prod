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
public class Plateau {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idPlateau;
    private String nom;
    private String description;
    private String nomImage;
    private Integer idProjet;
    private Integer idCategoriePlateau;

    public Integer getIdPlateau() {
        return idPlateau;
    }

    public void setIdPlateau(Integer idPlateau) {
        this.idPlateau = idPlateau;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getNomImage() {
        return nomImage;
    }

    public void setNomImage(String nomImage) {
        this.nomImage = nomImage;
    }

    public Integer getIdProjet() {
        return idProjet;
    }

    public void setIdProjet(Integer idProjet) {
        this.idProjet = idProjet;
    }

    public Integer getIdCategoriePlateau() {
        return idCategoriePlateau;
    }

    public void setIdCategoriePlateau(Integer idCategoriePlateau) {
        this.idCategoriePlateau = idCategoriePlateau;
    }

}
