/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author RickyBic
 */
@Entity
public class V_planning {

    @Id
    private Integer idPlateau;
    private Integer idProjet;
    private String nom;
    private Long totalduree;

    public Integer getIdPlateau() {
        return idPlateau;
    }

    public void setIdPlateau(Integer idPlateau) {
        this.idPlateau = idPlateau;
    }

    public Integer getIdProjet() {
        return idProjet;
    }

    public void setIdProjet(Integer idProjet) {
        this.idProjet = idProjet;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Long getTotalduree() {
        return totalduree;
    }

    public void setTotalduree(Long totalduree) {
        this.totalduree = totalduree;
    }

}
