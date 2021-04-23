package spring.rest.crud.service;

import spring.rest.crud.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    Customer getCustomer(int id);

    void saveCustomer(Customer customer);

    void deleteCustomer(int id);
}
