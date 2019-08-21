package com.example.stockspring.service;

import java.sql.SQLException;
import java.util.List;

import com.example.stockspring.model.Company;
import com.example.stockspring.model.Sector;

public interface CompanyService {

	
	 public boolean insertCompany(Company company) throws SQLException;
	    public boolean updateCompany(Company company) throws SQLException;
		
		public List<Sector> getSectorList() throws SQLException;
		
		public List<Company> getCompanyList() throws SQLException;

}
