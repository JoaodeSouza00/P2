package application.controllers; //importanto o pacote application na pasta controllers

import org.springframework.stereotype.Controller;// importando a classe Controller
import org.springframework.web.bind.annotation.RequestMapping;// importando a classe RequestMapping
import org.springframework.web.bind.annotation.RequestMethod;// importando a classe RequestMethod

@Controller
public class HomeController { //criando a classe publica HomeController
    @RequestMapping(method=RequestMethod.GET)//mapeamento para o metodo get
    public String index() { //criando um metodo publico index
        return "home/index.jsp";//o metodo retrna a pasta home/index.jsp 
    }
}