package spring.boot.basics.rest.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import spring.boot.basics.rest.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
    // that's it no need to write anything
}
