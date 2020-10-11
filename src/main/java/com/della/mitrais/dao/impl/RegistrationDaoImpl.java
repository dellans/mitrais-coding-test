package com.della.mitrais.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.della.mitrais.dao.RegistrationDao;
import com.della.mitrais.model.RegistrationModel;

@Repository
public class RegistrationDaoImpl implements RegistrationDao {
	
	private static final Logger logger = LoggerFactory.getLogger(RegistrationDaoImpl.class);
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	@Override
	public void register(RegistrationModel reg) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(reg);
		
		logger.info("User added, details : " + reg);
	}

}
