package finalhorse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import finalhorse.service.UserService;
import finalhorse.vo.UserSch;

@Controller
@RequestMapping("/sign.do")
public class UserCtrl {
	@Autowired(required=false)
	UserService userService;

	@RequestMapping(params="method=reg")
	public String regUser(@RequestParam("id")String id, Model d){
		UserSch dummy= new UserSch();
		dummy.setId(id);
		if(userService.searchUser(dummy).size()==0){
			
		}
		return "";
	}
	
	

}
