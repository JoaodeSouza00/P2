package application.controllers;//importanto o pacote application na pasta controllers
import java.util.Optional;//importando a biblioteca Optional

import org.springframework.beans.factory.annotation.Autowired;//importando a biblioteca Autowired
import org.springframework.stereotype.Controller;//importando a biblioteca Controller
import org.springframework.web.bind.annotation.PathVariable;//importando a biblioteca PathVariable
import org.springframework.web.bind.annotation.RequestMapping;//importando a biblioteca RequestMapping
import org.springframework.web.bind.annotation.RequestMethod;//importando a biblioteca RequestMethod
import org.springframework.web.bind.annotation.RequestParam;//importando a biblioteca RequestParam

import application.models.Livro;//importando a biblioteca Livro
import application.repositories.LivroRepository;//importando a biblioteca LivroRepository
import org.springframework.ui.Model;//importando a biblioteca Model

@Controller
@RequestMapping("/livro")
public class LivroController {//criando a classe publica LivroController
    @Autowired//subescrevendo o metodo 
    private LivroRepository livrosRepo;
    @RequestMapping("/list")//fazendo o mapeamneto do list
    public String list(Model model){
        model.addAttribute("livros", livrosRepo.findAll());
        return "list.jsp";
        
    }
    public String listar(){
        return "livro/list.jsp";
    }

@RequestMapping("/insert")//fazendo o mapeamneto do insert
public String formInsert(){
    return "insert.jsp";

}
@RequestMapping(value="/insert",method=RequestMethod.POST)//fazendo o mapeamneto do insert
public String saveInsert(@RequestParam("titulo")String titulo){

    Livro livro=new Livro();
    livro.setTitulo(titulo);
    livrosRepo.save(livro);
    return "redirect:/livro/list";

}
@RequestMapping("/delete/{id}")//fazendo o mapeamneto do delete
public String formDelete(Model model,@PathVariable int id){
    Optional<Livro>livro=livrosRepo.findById(id);
    if (!livro.isPresent()) 
        return "redirect:/livro/list";
     model.addAttribute("livro",livro.get());
 
    return "/livro/delete.jsp";
    

}
}