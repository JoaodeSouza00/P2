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

@Controller//decorador do metoo Controller
@RequestMapping("/livro")//maeamento da pasta livro
public class LivroController {//criando a classe publica LivroController
    @Autowired//subescrevendo o metodo 
    private LivroRepository livrosRepo;
    @RequestMapping("/list")//fazendo o mapeamneto do list
    public String list(Model model){//metodo publico com açao na lista 
        model.addAttribute("livros", livrosRepo.findAll());//metodo para adicionar um atributo novo ao livro 
        return "list.jsp";//retornando a pagina list 
        
    }
    public String listar(){//metodo publico listar 
        return "livro/list.jsp";//que retona a pagina list
    }

@RequestMapping("/insert")//fazendo o mapeamneto do insert
public String formInsert(){//metodo publico formInsert
    return "insert.jsp";//que retona a pagina insert

}
@RequestMapping(value="/insert",method=RequestMethod.POST)//fazendo o mapeamneto do insert
public String saveInsert(@RequestParam("titulo")String titulo){//metodo publico com açao no saveInsert 

    Livro livro=new Livro();//criando o objeto livro
    livro.setTitulo(titulo);//difinindo um valor para livro
    livrosRepo.save(livro);//salvando esse valor no repositorio
    return "redirect:/livro/list";//redirecionando o usuario para a pagina list

}
@RequestMapping("/delete/{id}")//fazendo o mapeamneto do delete
public String formDelete(Model model,@PathVariable int id){//metodo publico com açao no formDelete
    Optional<Livro>livro=livrosRepo.findById(id);//encontrando todos os elementos pelo id
    if (!livro.isPresent()) //checando a existencia do id 
        return "redirect:/livro/list";//se exister o id ele retorna para a pagina inicial 
     model.addAttribute("livro",livro.get());//se nao adiciona o novo atributo para livro 
 
    return "/livro/delete.jsp";//que retorna para a pagina delete 
    

}
}