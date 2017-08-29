package finalhorse.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import finalhorse.vo.Horse;
import finalhorse.vo.HorseRecord;

@Repository
public interface HorseDao {
	public ArrayList<Horse> listHorse();
	public ArrayList<HorseRecord> extractFiveHorse();
}
