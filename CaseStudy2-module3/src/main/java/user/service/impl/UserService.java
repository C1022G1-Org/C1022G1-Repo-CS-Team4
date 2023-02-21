package user.service.impl;

import user.model.User;
import user.repository.IUserRepository;
import user.repository.impl.UserRepository;
import user.service.IUserService;

public class UserService implements IUserService {
    IUserRepository iUserRepository = new UserRepository();
    @Override
    public void register(User user) {
        iUserRepository.register(user);
    }

    @Override
    public User login(String email, String password) {
       return iUserRepository.login(email,password);
    }

    @Override
    public User checkEmail(String email) {
        return iUserRepository.checkEmail(email);
    }
}
