package user.service;

import user.model.User;

public interface IUserService {
    void register(User user);
    User login(String email, String password);
}
