package finalhorse.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalhorse.repository.HorseDao;
import finalhorse.vo.Horse;

@Service
public class HorseService {
	@Autowired(required=false)
	HorseDao dao;
	public ArrayList<Horse> listHorse(){
		return dao.listHorse();
	}

}
