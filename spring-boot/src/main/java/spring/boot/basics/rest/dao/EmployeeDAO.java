package spring.boot.basics.rest.dao;

import spring.boot.basics.rest.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    List<Employee> getEmployees();

    Employee getEmployee(int id);

    void saveEmployee(Employee employee);

    void deleteEmployee(int id);
}
