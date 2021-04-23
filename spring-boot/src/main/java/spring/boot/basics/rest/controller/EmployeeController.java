package spring.boot.basics.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;
import spring.boot.basics.rest.Exception.EmployeeNotFoundException;
import spring.boot.basics.rest.entity.Employee;
import spring.boot.basics.rest.service.EmployeeService;

import java.util.List;

@RestController
public class EmployeeController {

    @Autowired
    @Qualifier("employeeRepositoryServiceImpl")
    private EmployeeService employeeService;

    @GetMapping("/employees")
    public List<Employee> getEmployees() {
        return employeeService.getEmployees();
    }

    @GetMapping("/employees/{id}")
    public Employee getEmployee(@PathVariable int id) {
        Employee employee = employeeService.getEmployee(id);
        if (employee == null) throw new EmployeeNotFoundException("Employee with id: " + id + " not found in database");
        return employee;
    }

    @PostMapping("/employees")
    public Employee createEmployee(@RequestBody Employee employee) {
        employee.setId(0);
        employeeService.saveEmployee(employee);
        return employee;
    }

    @PutMapping("/employees")
    public Employee updateEmployee(@RequestBody Employee employee) {
        employeeService.saveEmployee(employee);
        return employee;
    }

    @DeleteMapping("/employees/{id}")
    public int deleteEmployee(@PathVariable int id) {

        if (employeeService.getEmployee(id) == null) {
            throw new EmployeeNotFoundException("Employee with id: " + id + " not found in database");
        }

        employeeService.deleteEmployee(id);
        return id;
    }
}
