package spring.boot.basics.rest.service;

import spring.boot.basics.rest.entity.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> getEmployees();

    Employee getEmployee(int id);

    void saveEmployee(Employee employee);

    void deleteEmployee(int id);
}
