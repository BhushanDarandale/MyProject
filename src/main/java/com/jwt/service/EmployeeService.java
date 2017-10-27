package com.jwt.service;

import java.util.List;

import com.jwt.model.Employee;
import com.jwt.model.PhotoAlbum;

public interface EmployeeService {
	
	public void addEmployee(Employee employee);

	public List<Employee> getAllEmployees();

	public void deleteEmployee(Integer employeeId);

	public Employee getEmployee(int employeeid);

	public Employee updateEmployee(Employee employee);

	public void addAlbum(PhotoAlbum album);

	public List<PhotoAlbum> getAllAlbums();
}
