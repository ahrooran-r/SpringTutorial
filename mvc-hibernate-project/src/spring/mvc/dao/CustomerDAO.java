package spring.mvc.dao;

import spring.mvc.entity.Customer;

import java.util.List;

public interface CustomerDAO {

    List<Customer> getCustomers();

    void save(Customer customer);

    Customer getCustomer(int id);

    void delete(int id);

    List<Customer> searchCustomers(String value);
}
