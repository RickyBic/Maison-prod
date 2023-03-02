package controller;

import dao.HibernateDao;
import java.util.List;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductionController {

    @Autowired
    private HibernateDao dao;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        List<Projet> lp = dao.findAll(Projet.class);
        model.addAttribute("lp", lp);
        return "index";
    }

    @RequestMapping(value = "/liste_plateau", method = RequestMethod.GET)
    public String liste_plateau(Model model, @RequestParam(required = true) Integer idProjet) {
        Projet projet = dao.findById(Projet.class, idProjet);
        model.addAttribute("p", projet);
        List<CategoriePlateau> lcp = dao.findAll(CategoriePlateau.class);
        model.addAttribute("lcp", lcp);
        Plateau plateau = new Plateau();
        plateau.setIdProjet(idProjet);
        List<Plateau> lp = dao.findWhere(plateau);
        model.addAttribute("lp", lp);
        return "liste_plateau";
    }

    @RequestMapping(value = "/liste_scene", method = RequestMethod.GET)
    public String liste_scene(Model model, @RequestParam(required = true) Integer idPlateau) {
        Plateau plateau = dao.findById(Plateau.class, idPlateau);
        model.addAttribute("pl", plateau);
        Projet projet = dao.findById(Projet.class, plateau.getIdProjet());
        model.addAttribute("p", projet);
        Scene s = new Scene();
        s.setIdPlateau(idPlateau);
        List<Scene> lsc = dao.findWhere(s, "idScene", true);
        model.addAttribute("lsc", lsc);
        return "liste_scene";
    }

    @RequestMapping(value = "/liste_action", method = RequestMethod.GET)
    public String liste_action(Model model, @RequestParam(required = true) Integer idScene) {
        Scene scene = dao.findById(Scene.class, idScene);
        model.addAttribute("sc", scene);
        Plateau plateau = dao.findById(Plateau.class, scene.getIdPlateau());
        model.addAttribute("pl", plateau);
        Projet projet = dao.findById(Projet.class, plateau.getIdProjet());
        model.addAttribute("p", projet);
        Action a = new Action();
        a.setIdScene(idScene);
        List<Action> la = dao.findWhere(a, "idAction", true);
        model.addAttribute("la", la);
        return "liste_action";
    }

    @RequestMapping(value = "/insert_scene", method = RequestMethod.GET)
    public String insert_scene(Model model, @RequestParam String nom, @RequestParam Integer duree, @RequestParam Integer idPlateau) {
        Scene s = new Scene();
        s.setNom(nom);
        s.setDuree(duree);
        s.setIdPlateau(idPlateau);
        dao.create(s);
        return liste_scene(model, idPlateau);
    }

    @RequestMapping(value = "/insert_action", method = RequestMethod.GET)
    public String insert_action(Model model, @RequestParam String nom, @RequestParam String scenario, @RequestParam Integer idScene) {
        Action a = new Action();
        a.setNom(nom);
        a.setScenario(scenario);
        a.setIdScene(idScene);
        dao.create(a);
        return liste_action(model, idScene);
    }

    @RequestMapping(value = "/ajout_action", method = RequestMethod.GET)
    public String ajout_action(Model model, @RequestParam(required = true) Integer idAction) {
        Action action = dao.findById(Action.class, idAction);
        model.addAttribute("a", action);
        Scene scene = dao.findById(Scene.class, action.getIdScene());
        model.addAttribute("sc", scene);
        Plateau plateau = dao.findById(Plateau.class, scene.getIdPlateau());
        model.addAttribute("pl", plateau);
        Projet projet = dao.findById(Projet.class, plateau.getIdProjet());
        model.addAttribute("p", projet);
        V_details_action da = new V_details_action();
        da.setIdAction(idAction);
        List<V_details_action> lda = dao.findWhere(da, "idDetails_action", true);
        model.addAttribute("lda", lda);
        List<Acteur> lac = dao.findAll(Acteur.class);
        model.addAttribute("lac", lac);
        List<Emotion> le = dao.findAll(Emotion.class);
        model.addAttribute("le", le);
        List<Geste> lg = dao.findAll(Geste.class);
        model.addAttribute("lg", lg);
        return "ajout_action";
    }

    @RequestMapping(value = "/update_action", method = RequestMethod.GET)
    public String update_action(Model model, @RequestParam Integer idAction, @RequestParam String scenario) {
        Action a = dao.findById(Action.class, idAction);
        a.setScenario(scenario);
        dao.update(a);
        return ajout_action(model, idAction);
    }

    @RequestMapping(value = "/update_details_action", method = RequestMethod.GET)
    public String update_details_action(Model model, @RequestParam Integer idAction, @RequestParam Integer idDetails_action, @RequestParam String phrase) {
        Details_action d = dao.findById(Details_action.class, idDetails_action);
        d.setPhrase(phrase);
        dao.update(d);
        return ajout_action(model, idAction);
    }

    @RequestMapping(value = "/insert_details_action", method = RequestMethod.GET)
    public String insert_details_action(Model model, @RequestParam Integer idAction, @RequestParam Integer idActeur, @RequestParam String phrase,
            @RequestParam Integer idEmotion, @RequestParam Integer idGeste) {
        Details_action d = new Details_action();
        d.setIdAction(idAction);
        d.setIdActeur(idActeur);
        d.setPhrase(phrase);
        d.setIdEmotion(idEmotion);
        d.setIdGeste(idGeste);
        dao.create(d);
        return ajout_action(model, idAction);
    }

    @RequestMapping(value = "/planning", method = RequestMethod.GET)
    public String planning(Model model, @RequestParam(required = true) Integer idProjet) {
        Projet projet = dao.findById(Projet.class, idProjet);
        model.addAttribute("p", projet);
        V_planning p = new V_planning();
        p.setIdProjet(idProjet);
        List<V_planning> lp = dao.findWhere(p);
        model.addAttribute("lp", lp);
        List<Scene> lsc = dao.findAll(Scene.class, "duree", true);
        model.addAttribute("lsc", lsc);
        return "planning";
    }

}
