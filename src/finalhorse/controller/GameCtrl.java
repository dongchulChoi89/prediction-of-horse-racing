package finalhorse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import finalhorse.service.HorseService;

@Controller
public class GameCtrl {
	@Autowired(required=false)
	HorseService horseService;
	
	@RequestMapping("/game.do")
	public String init(Model d){
		d.addAttribute("fiveHorseList",horseService.extractFiveHorse());
		return "game";
	}
	
	
	
}
