package ru.iu3.backend.controllers;

import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import ru.iu3.backend.models.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import ru.iu3.backend.repositories.UsersRepository;
import ru.iu3.backend.tools.Utils;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;




@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/auth")
public class LoginController {
    // Используем несколько репозиториев
    @Autowired
    private UsersRepository usersRepository;


    @PostMapping("/login")
    public ResponseEntity<Object> login(@RequestBody Map<String, String> credentials) {
        // В качестве JSON записываем логин, пароль. Логин - admin, пароль - qwerty
        String login = credentials.get("login");
        String pwd = credentials.get("password");

        if (!pwd.isEmpty() && !login.isEmpty()) {
            // Если логин и пароль не пусты, то ищем в БД пользователя с данным логином (логин уникальный)
            Optional<Users> uu = usersRepository.findByLogin(login);
            if (uu.isPresent()) {
                // Если нашли пользователя, то извлекаем информацию о нём
                Users u2 = uu.get();

                // Извлекаем соль и пароль
                String hash1 = u2.password;
                String salt = u2.salt;
                // Высчитываем пароль (захешированный в одну сторону)
                String hash2 = Utils.ComputeHash(pwd, salt);

                // Если захешированный пароль из базы совпадает с просчитанным паролем, то формируем токен
                if (hash1.toLowerCase().equals(hash2.toLowerCase())) {
                    String token = UUID.randomUUID().toString();
                    u2.token = token;

                    // Добавляем активность пользователя - текущее время
                    u2.activity = LocalDateTime.now();


                    Users u3 = usersRepository.saveAndFlush(u2);
                    return new ResponseEntity<Object>(u3, HttpStatus.OK);
                }
            }
        }

        // Если пользователь не нашёлся, то выбрасываем ошибку - пользователь не найден
        return new ResponseEntity<Object>(HttpStatus.UNAUTHORIZED);
    }


    @GetMapping("/logout")
    public ResponseEntity logout(@RequestHeader(value = "Authorization", required = false) String token) {

        if (token != null && !token.isEmpty()) {

            token = StringUtils.removeStart(token, "Bearer").trim();


            Optional<Users> uu = usersRepository.findByToken(token);
            if (uu.isPresent()) {

                Users u = uu.get();

                u.token = null;
                usersRepository.save(u);


                return new ResponseEntity(HttpStatus.OK);
            }
        }

        // По токену пользователь не был найден -> ошибка 401
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    }
}
