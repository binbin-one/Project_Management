package com.ssh.dao.impl;

import com.ssh.dao.ICustomerDao;
import com.ssh.entity.Customer;
import com.ssh.util.PageBean;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 数据层实现类
 * @Author:
 * @Description:
 * @Date:Created in 10:58 2017/10/24
 * @Modified By:
 */
@Repository("customerDao")
public class CustomerDaoImpl extends BaseDao implements ICustomerDao {
    //添加方法
    @Override
    public boolean addCustomer(Customer customer) {
        try {
            getSession().save(customer);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
            return false;
    }
    //删除方法
    @Override
    public boolean deleteCustomer(Customer customer) {
        try {
            getSession().delete(customer);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //修改方法
    @Override
    public boolean updateCustomer(Customer customer) {
        try {
            getSession().update(customer);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //分页查询
    @Override
    public List selectAllCustomer(String hql, PageBean pageBean) {
        Query query = getSession().createQuery(hql);
        //设置分页
        query.setFirstResult((pageBean.getCpage()-1)*pageBean.getShowNum());
        //设置每页显示多少
        query.setMaxResults(pageBean.getShowNum());
        List list = query.list();
        return list;
    }
    //查询所有方法
    @Override
    public List selectAllCustomer(String hql) {return getSession().createQuery(hql).list();}
    //查询指定方法
    @Override
    public Customer selectByIdCustomer(Customer customer) {return  getSession().get(Customer.class,customer.getCid());}

}
