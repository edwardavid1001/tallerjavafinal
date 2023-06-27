package co.edu.sena.project_2687365.model.repository;

import co.edu.sena.project_2687365.model.User;
import co.edu.sena.project_2687365.model.User;


import java.sql.SQLException;


public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        co.edu.sena.project_2687365.model.repository.Repository<User> repository = new UserRepositoryImpl();

        System.out.println("========saveObj Insert===========");
        User userInsert1 = new User();
        userInsert1.setUser_firstname("edwar");
        userInsert1.setUser_lastname("fernandez");
        userInsert1.setUser_email("edwardavid1011@mail.com");
        userInsert1.setUser_password("edwarxdd10111");
        repository.saveObj(userInsert1);

        User userInsert2 = new User();
        userInsert2.setUser_firstname("davincho");
        userInsert2.setUser_lastname("davidd");
        userInsert2.setUser_email("davincho@gmail.com");
        userInsert2.setUser_password("davincho125000s");
        repository.saveObj(userInsert2);


        System.out.println("========== listaObj =========");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== byIdObj ===========");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("============== saveObj ===========");
        User userUpdate = new User();
        userUpdate.setUser_firstname("edwardoxd");
        userUpdate.setUser_lastname("xddavis");
        userUpdate.setUser_email("xddavisss@mail.com");
        userUpdate.setUser_password("davidssskhfjfk1000");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== deleteObj ============");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);

    }
}

