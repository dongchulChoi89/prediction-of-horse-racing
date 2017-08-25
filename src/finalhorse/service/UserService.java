package finalhorse.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalhorse.repository.UserDao;
import finalhorse.vo.User;

@Service
public class UserService {
@Autowired(required=false)
UserDao dao;

public ArrayList<User> listUser(){
	return dao.listUser();
}

}
