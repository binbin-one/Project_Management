package com.ssh.service.impl;

import com.ssh.dao.ICustomerDao;
import com.ssh.entity.Customer;
import com.ssh.service.ICustomerService;
import com.ssh.util.PageBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:
 * @Description:
 * @Date:Created in 15:53 2017/10/24
 * @Modified By:
 */
@Service("customerService")
@Transactional(propagation = Propagation.REQUIRED)
public class CustomerServiceImpl implements ICustomerService {
    //声明数据层接口
    @Resource(name="customerDao")
    private ICustomerDao customerDao;

    //添加方法
    @Override
    public boolean addCustomer(Customer customer) {
        return customerDao.addCustomer(customer);
    }
    //删除方法
    @Override
    public boolean deleteCustomer(Customer customer) {
        return customerDao.deleteCustomer(customer);
    }
    //修改方法
    @Override
    public boolean updateCustomer(Customer customer) {return customerDao.updateCustomer(customer);}
    //查询所有方法
    @Override
    //查询所有方法
    public PageBean selectAllCustomer(PageBean pageBean, String[] querys) {
        //不带条件查询
        String hql = "from Customer c where 1=1";
        //带条件查询
        if (querys != null && querys.length > 0) {
            //客户姓名
            if (querys[0] != null && querys[0].length() > 0) {
                hql += " and c.cname like '%" + querys[0] + "%'";
            }
            //客户税号
            if (querys[1] != null && querys[1].length() > 0) {
                hql += " and c.ctaxcode like '%" + querys[1] + "%'";
            }
            //联系人
            if (querys[2] != null && querys[2].length() > 0) {
                hql += " and c.clinkman like '%" + querys[2] + "%'";
            }
        }
        hql += "order by c.dcreatedatetime desc";
        //设置数据总条数
        pageBean.setAllNum(customerDao.selectAllCustomer(hql).size());
        //设置中每页显示数据
        pageBean.setResult(customerDao.selectAllCustomer(hql, pageBean));
        return pageBean;
    }

    //查询所有客户信息
    public List selectCustomer(){
        String hql="from Customer";
        return customerDao.selectAllCustomer(hql);
    }
    //查询指定用户方法
    @Override
    public Customer selectByIdCustomer(Customer customer) {
        return customerDao.selectByIdCustomer(customer);
    }

    public void setCustomerDao(ICustomerDao customerDao) {
        this.customerDao = customerDao;
    }
}
