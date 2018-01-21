package com.ssh.service;

import com.ssh.entity.Customer;
import com.ssh.util.PageBean;

import java.util.List;

/**
 *
 * @Author:
 * @Description:
 * @Date:Created in 10:56 2017/10/24
 * @Modified By:
 */
public interface ICustomerService {
    // 添加方法
    public boolean addCustomer(Customer customer);

    // 删除方法
    public boolean deleteCustomer(Customer customer);

    // 修改方法
    public boolean updateCustomer(Customer customer);

    // 查询方法
    public PageBean selectAllCustomer(PageBean pageBean, String[] querys);
    public List selectCustomer();

    //查询指定方法
    public Customer selectByIdCustomer(Customer customer);

}
