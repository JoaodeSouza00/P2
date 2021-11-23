package application;//importando o pacote application

import org.springframework.boot.SpringApplication;// importando a classe SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication;//importando a classe SpringBootApplication

@SpringBootApplication
public class Application {//criando a classe publica Application
    public static void main(String[] args) {//criando o metodo principal 
        SpringApplication.run(Application.class, args);//criando o metodo construtor SpringApplication
    }
}