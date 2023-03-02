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
public class V_details_action {

    @Id
    private Integer idDetails_action;
    private Integer idAction;
    private String acteur;
    private String nomImage;
    private String phrase;
    private String emotion;
    private String geste;

    public Integer getIdDetails_action() {
        return idDetails_action;
    }

    public void setIdDetails_action(Integer idDetails_action) {
        this.idDetails_action = idDetails_action;
    }

    public Integer getIdAction() {
        return idAction;
    }

    public void setIdAction(Integer idAction) {
        this.idAction = idAction;
    }

    public String getActeur() {
        return acteur;
    }

    public void setActeur(String acteur) {
        this.acteur = acteur;
    }

    public String getNomImage() {
        return nomImage;
    }

    public void setNomImage(String nomImage) {
        this.nomImage = nomImage;
    }

    public String getPhrase() {
        return phrase;
    }

    public void setPhrase(String phrase) {
        this.phrase = phrase;
    }

    public String getEmotion() {
        return emotion;
    }

    public void setEmotion(String emotion) {
        this.emotion = emotion;
    }

    public String getGeste() {
        return geste;
    }

    public void setGeste(String geste) {
        this.geste = geste;
    }

}
