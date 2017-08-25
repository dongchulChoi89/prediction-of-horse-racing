package finalhorse.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import finalhorse.vo.Horse;

@Repository
public interface HorseDao {
	public ArrayList<Horse> listHorse();
}
