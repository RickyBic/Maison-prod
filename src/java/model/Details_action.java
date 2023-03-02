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
public class Details_action {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idDetails_action;
    private Integer idAction;
    private Integer idActeur;
    private String phrase;
    private Integer idEmotion;
    private Integer idGeste;

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

    public Integer getIdActeur() {
        return idActeur;
    }

    public void setIdActeur(Integer idActeur) {
        this.idActeur = idActeur;
    }

    public String getPhrase() {
        return phrase;
    }

    public void setPhrase(String phrase) {
        this.phrase = phrase;
    }

    public Integer getIdEmotion() {
        return idEmotion;
    }

    public void setIdEmotion(Integer idEmotion) {
        this.idEmotion = idEmotion;
    }

    public Integer getIdGeste() {
        return idGeste;
    }

    public void setIdGeste(Integer idGeste) {
        this.idGeste = idGeste;
    }

}
