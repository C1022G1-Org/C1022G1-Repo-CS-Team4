package user.repository;

import user.model.User;

public interface IUserRepository {
    void register(User user);
    User login(String email, String password);
    User checkEmail(String email);
}
