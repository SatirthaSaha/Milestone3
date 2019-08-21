package com.example.stockspring.controller;

import java.sql.SQLException;
import java.util.Random;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.stockspring.model.Company;
import com.example.stockspring.model.Login;
import com.example.stockspring.model.User;
import com.example.stockspring.service.CompanyService;

@Controller
public class CompanyControllerImpl implements CompanyController{


	@Autowired
	private CompanyService companyService;


	//--------------------Opens HOME Page-------------------------------

		@RequestMapping(value = "/Home", method = RequestMethod.GET)
		public String Home(ModelMap model) throws SQLException {
			User user=new User();
			Login login=new Login();
			//e.setEmail("sdfsf");
			//	e.setSalary(4564.56f);
			model.addAttribute("u", user);
			model.addAttribute("l",login);
			return "Home";

		}
	
	
	
	//------------------Opens Import Data -------------------------------- 
	
	
	@RequestMapping(value = "/importData", method = RequestMethod.GET)
	public String importData(ModelMap model) throws SQLException {
		System.out.println("add employee");
		Company company=new Company();
		//e.setEmail("sdfsf");
		//	e.setSalary(4564.56f);
		model.addAttribute("e1", company);
		return "importData";

	}



	//--------------------Opens Insert Company Page---------------------

	@RequestMapping(value = "/insertCompany", method = RequestMethod.GET)
	public String getinsertCompany(ModelMap model) throws SQLException {
		System.out.println("add employee");
		Company company=new Company();
		//e.setEmail("sdfsf");
		//	e.setSalary(4564.56f);
		model.addAttribute("e1", company);
		model.addAttribute("sectorList",companyService.getSectorList());
		return "insertCompany";

	}


	//---------------------Insert Company---------------------------------

	@RequestMapping(value = "/insertCompany", method = RequestMethod.POST)
	public String insertCompany(@Valid Company company, 
			BindingResult result, Model model) throws SQLException {
		System.out.println("inside post method");
		Random r = new Random();
		int num = r.nextInt(900000) + 100000;
		company.setCompany_code(num);
		System.out.println(company);
		if(result.hasErrors()){
			System.out.println("errors");
			System.out.println(result.getAllErrors());
			model.addAttribute("e1", company);
			return "error";
		}
		if(companyService.insertCompany(company))
			//model.addAttribute("name", employee.getName());
			return "redirect:/companyList";
		else
			return "error";
	}

	//---------------------Opens Update Company----------------------------------
	
	@RequestMapping(value = "/updateCompany", method= RequestMethod.GET)
	public String getupdateCompany(ModelMap model)throws SQLException {
		// TODO Auto-generated method stub
		Company company=new Company();
		model.addAttribute("e1", company);
		model.addAttribute("listCompany",companyService.getCompanyList());
		model.addAttribute("sectorList",companyService.getSectorList());
		
		return "updateCompany";
	}
	
	//------------------------Updates Company-----------------------------------
	
	@RequestMapping(value = "/updateCompany", method = RequestMethod.POST)
	public String updateCompany(@Valid Company company, 
			BindingResult result, Model model) throws SQLException {
		System.out.println("inside post method");
		if(result.hasErrors()){
			System.out.println("errors");
			System.out.println(result.getAllErrors());
			model.addAttribute("e1", company);
			return "error";
		}
		if(companyService.updateCompany(company))
			//model.addAttribute("name", employee.getName());
			return "redirect:/companyList";
		else
			return "error";
	}

	//----------------Opens COMPANY LIST Page--------------------------

	@RequestMapping(path="/companyList")
	public ModelAndView getCompanyList() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("companyList");
		mv.addObject("companyList",companyService.getCompanyList());
		return mv;
	}

	

	//---------------------Opens Update IPODetails page---------------------------
	/*
	@RequestMapping(value = "/updateIPODetails", method = RequestMethod.GET)
	public String updateIPODetails(ModelMap model) throws SQLException {
		System.out.println("add employee");
		Company company=new Company();
		//e.setEmail("sdfsf");
		//	e.setSalary(4564.56f);
		model.addAttribute("e1", company);
		return "updateIPODetails";

	}*/
	
	//---------------------OPens user landing page--------------------------------
	
	@RequestMapping(value = "/userLanding", method = RequestMethod.GET)
	public String userLanding(ModelMap model) throws SQLException {
		System.out.println("add employee");
		Company company=new Company();
		//e.setEmail("sdfsf");
		//	e.setSalary(4564.56f);
		model.addAttribute("e1", company);
		return "userLanding";

	}

	// try
	public static void main(String [] args) {
		CompanyController controller=new CompanyControllerImpl();
		try {
			System.out.println(controller.getCompanyList());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}



}
