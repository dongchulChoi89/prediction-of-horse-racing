package finalhorse.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import finalhorse.service.HorseService;
import finalhorse.service.UserService;
import finalhorse.vo.Horse;
import finalhorse.vo.User;

@Controller
public class DataCtrl {
	@Autowired(required=false)
	private HorseService horseService;
	@Autowired(required=false)
	private UserService userService;
	
	@RequestMapping("/db.do")
	public String init(Model d){
		ArrayList<Horse> horseList= horseService.listHorse();
		ArrayList<User> userList= userService.listUser();
		d.addAttribute("horseList", horseList);
		d.addAttribute("userList",userList);
		return "database";
	}
	
	
}
