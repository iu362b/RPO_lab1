package ru.iu3.backend.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import ru.iu3.backend.models.Users;
import ru.iu3.backend.repositories.UsersRepository;

import java.time.LocalDateTime;
import java.util.Optional;


@Component
public class AuthenticationProvider extends AbstractUserDetailsAuthenticationProvider {

    @Value("${private.session-timeout}")
    private int sessionTimeOut;


    @Autowired
    UsersRepository usersRepository;


    @Override
    protected void additionalAuthenticationChecks(UserDetails userDetails,
                                                  UsernamePasswordAuthenticationToken authentication)
            throws AuthenticationException {
    }


    @Override
    protected UserDetails retrieveUser(String username, UsernamePasswordAuthenticationToken authentication)
            throws AuthenticationException {

        // Токен, который получаем из авторизации
        Object token = authentication.getCredentials();

        // Пытаемся обнаружить нашего пользователя в базе данных. Здесь принцип как с контроллерами
        Optional<Users> uu = usersRepository.findByToken(String.valueOf(token));
        if (!uu.isPresent()) {
            // Пользователь не найден - выбрасываем исключение: авторизация не пройдена
            throw new UsernameNotFoundException("User is not found");
        }

        // Нашли пользователя - извлекаем информацию в модель Users
        Users u = uu.get();

        // Дополнительная вставка: проверяем тайм-аут пользователя
        boolean timeout = true;

        LocalDateTime dt = LocalDateTime.now();

        // Если пользователь активен
        if (u.activity != null) {

            LocalDateTime nt = u.activity.plusSeconds(sessionTimeOut);


            if (dt.isBefore(nt)) {
                timeout = false;
            }
        }

        // Если вышло время, то удаляем из репозитория токен и сохраняем - всё, пользователь разлогинился
        if (timeout) {
            u.token = null;
            usersRepository.save(u);
        } else {
            u.activity = dt;
            usersRepository.save(u);
        }

        // Заполняем сведения о пользователе, используя встроенную структуру данных UserDetails
        UserDetails user = new User(u.login, u.password, true, true, true, true,
                AuthorityUtils.createAuthorityList("USER"));

        // Возвращаем в сервер пользователя
        return user;
    }
}
