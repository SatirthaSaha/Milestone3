package com.example.stockspring.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.stockspring.model.Company;

public interface CompanyDao extends JpaRepository<Company, Integer>{
	/*
	  public boolean insertCompany(Company company) throws SQLException;
	    public boolean updateCompany(Company company) throws SQLException;
		public List<Company> getCompanyList() throws SQLException;
		public List<Sector> getSectorList() throws SQLException; */

}
