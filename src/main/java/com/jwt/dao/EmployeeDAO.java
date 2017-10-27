package com.jwt.dao;

import java.util.List;
import com.jwt.model.Employee;
import com.jwt.model.PhotoAlbum;

public interface EmployeeDAO {

	public void addEmployee(Employee employee);

	public List<Employee> getAllEmployees();

	public void deleteEmployee(Integer employeeId);

	public Employee updateEmployee(Employee employee);

	public Employee getEmployee(int employeeid);

	public void addAlbum(PhotoAlbum album);

	public List<PhotoAlbum> getAllAlbums();
}
