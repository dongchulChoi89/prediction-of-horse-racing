package finalhorse.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import finalhorse.vo.User;
import finalhorse.vo.UserSch;

@Repository
public interface UserDao {
public ArrayList<User> listUser();
public ArrayList<User> searchUser(UserSch vo);
public User signIn(UserSch vo);
}
