package com.example.stockspring.service;

import java.sql.SQLException;

import com.example.stockspring.model.Ipo_planned;

public interface IPOService {

	public  boolean registerIPO(Ipo_planned ipo_planned) throws SQLException;
}
