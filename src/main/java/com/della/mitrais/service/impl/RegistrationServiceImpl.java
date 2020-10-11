package com.della.mitrais.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.della.mitrais.dao.RegistrationDao;
import com.della.mitrais.model.RegistrationModel;
import com.della.mitrais.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService {
	
	@Autowired
	private RegistrationDao regDao;
	
	public void setRegistrationDao(RegistrationDao registrationDao){
		this.regDao = registrationDao;
	}
	
	@Override
	@Transactional
	public void register(RegistrationModel reg) {
		// TODO Auto-generated method stub
		this.regDao.register(reg);
	}
}
