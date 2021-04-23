package spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import spring.mvc.dao.CustomerDAO;
import spring.mvc.entity.Customer;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    @Qualifier("customerDAOImpl")
    private CustomerDAO customerDAO;

    @Override
    @Transactional
    public List<Customer> getCustomers() {
        return customerDAO.getCustomers();
    }

    @Override
    @Transactional
    public void save(Customer customer) {
        customerDAO.save(customer);
    }

    @Override
    @Transactional
    public Customer getCustomer(int id) {
        return customerDAO.getCustomer(id);
    }

    @Override
    @Transactional
    public void delete(int id) {
        customerDAO.delete(id);
    }

    @Override
    @Transactional
    public List<Customer> searchCustomers(String value) {
        List<Customer> customerSearchList = customerDAO.searchCustomers(value);
        return customerSearchList;
    }
}
