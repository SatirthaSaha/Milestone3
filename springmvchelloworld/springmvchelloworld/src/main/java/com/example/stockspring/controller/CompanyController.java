package com.example.stockspring.controller;

import java.sql.SQLException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import com.example.stockspring.model.Company;

public interface CompanyController {

  	  
	    
		public ModelAndView getCompanyList() throws Exception;
		public String getinsertCompany(ModelMap model) throws SQLException;
		public String insertCompany(@Valid Company company, 
				BindingResult result, Model model) throws SQLException;
		public String getupdateCompany(ModelMap model)throws SQLException;
		public String updateCompany(@Valid Company company, 
			BindingResult result, Model model) throws SQLException;

	
}
