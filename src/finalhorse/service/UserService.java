package finalhorse.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalhorse.repository.UserDao;
import finalhorse.vo.User;
import finalhorse.vo.UserSch;

@Service
public class UserService {
@Autowired(required=false)
UserDao dao;

public ArrayList<User> listUser(){
	return dao.listUser();
}
public ArrayList<User> searchUser(UserSch vo){
	return dao.searchUser(vo);
}
public User signIn(UserSch vo){
	return dao.signIn(vo);
}

}
