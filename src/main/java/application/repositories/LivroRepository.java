package application.repositories;//importanto o pacote repositories na pasta application
import org.springframework.data.repository.CrudRepository;// importando a classe CrudRepository

import application.models.Livro;// importando a classe Livro

public interface LivroRepository extends CrudRepository<Livro, Integer> {//criando a interface LivroRepository que esta herdando os atrubutos deCrudRepository

    

}