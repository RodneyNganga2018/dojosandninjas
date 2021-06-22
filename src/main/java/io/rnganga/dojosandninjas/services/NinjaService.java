package io.rnganga.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import io.rnganga.dojosandninjas.models.Dojo;
import io.rnganga.dojosandninjas.models.Ninja;
import io.rnganga.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository ninjaRepository;
	
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	
	public List<Ninja> findAll() {
		return ninjaRepository.findAll();
	}
	
	public List<Ninja> findAllByDojo(Dojo dojo) {
		return ninjaRepository.findAllByDojo(dojo);
	}
	
	public Ninja findNinja(Long id) {
		Optional<Ninja> ninja = ninjaRepository.findById(id);
		if(ninja.isPresent()) {
			return ninja.get();
		} else {
			return null;
		}
	}
	
	public Ninja createNinja(Ninja n) {
		return ninjaRepository.save(n);
	}
}
