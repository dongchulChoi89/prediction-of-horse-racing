package finalhorse.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalhorse.repository.HorseDao;
import finalhorse.vo.Horse;
import finalhorse.vo.HorseRecord;

@Service
public class HorseService {
	@Autowired(required=false)
	HorseDao dao;
	public ArrayList<Horse> listHorse(){
		return dao.listHorse();
	}
	public ArrayList<HorseRecord> extractFiveHorse(){
		return dao.extractFiveHorse();
	}

}
