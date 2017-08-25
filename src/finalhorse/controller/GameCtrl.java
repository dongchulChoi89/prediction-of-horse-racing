package finalhorse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GameCtrl {
	@RequestMapping("/game.do")
	public String init(){
		return "game";
	}
}
