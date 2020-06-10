package br.com.imepac.site.entities.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.imepac.site.entities.ContratanteOprt;

@Repository
public interface IContratanteOprtRepository extends JpaRepository<ContratanteOprt, Long>{

	

}