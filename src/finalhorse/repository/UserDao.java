package finalhorse.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import finalhorse.vo.User;

@Repository
public interface UserDao {
public ArrayList<User> listUser();
}
