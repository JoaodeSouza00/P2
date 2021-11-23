package application.models; //adicionando o pacote models


import javax.persistence.Entity;// importando a classe Entity
import javax.persistence.GeneratedValue;// importando a classe GeneratedValue
import javax.persistence.GenerationType;// importando a classe GenerationType
import javax.persistence.Id;// importando a classe Id
import javax.persistence.Table;// importando a classe Table

@Entity//chamando uma entidade 
@Table(name="livros")//chamando a tabela livros 
public class Livro {//criando a classe publica livros 

    @Id//chamado id
    @GeneratedValue(strategy = GenerationType.IDENTITY)//chamando o GeneratedValue
    private int id;//criando a varivel id do tipo int 
    private String titulo;//criando a varivel titulo do tipo String 

//gerando os metods get e set
    public int getId() {// metodo getId 
        return id;// que retorna Id
    }
    public void setId(int id) {// metodo setId 
        this.id = id;//define um novo id
    }
    public String getTitulo() {// metodo getTitulo 
        return titulo;//que retorna titulo
    }
    public void setTitulo(String titulo) {// metodo setTitulo 
        this.titulo = titulo;//define um novo titulo
    }


    
}
