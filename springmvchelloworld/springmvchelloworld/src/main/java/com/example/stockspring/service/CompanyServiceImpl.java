package com.example.stockspring.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.stockspring.dao.CompanyDao;
import com.example.stockspring.dao.SectorDao;
import com.example.stockspring.model.Company;
import com.example.stockspring.model.Sector;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyDao companyDao;
	@Autowired
	private SectorDao sectorDao;
	
	@Override
	public boolean insertCompany(Company company) throws SQLException {
		// TODO Auto-generated method stub
		if(companyDao.save(company)!=null)
			return true;
		else
			return false;
	}
	/*
	@Override
	public Company updateCompany(Company company) {
		// TODO Auto-generated method stub
		return null;
	}
     */
	@Override
	public List<Company> getCompanyList() throws SQLException {
		return companyDao.findAll();
	}
	
	@Override
	public List<Sector> getSectorList() throws SQLException {
		// TODO Auto-generated method stub
		return sectorDao.findAll(); 
	}
	@Override
	public boolean updateCompany(Company company)throws SQLException {
		// TODO Auto-generated method stub
		if(companyDao.save(company)!=null)
			return true;
		else
			return false;
	}

}
