package com.ssh.web;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.Customer;
import com.ssh.service.ICustomerService;
import com.ssh.util.PageBean;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * 处理客户信息相关请求的Action
 * @author Administrator
 *
 */
@Controller("customerAction")
@Scope("prototype")
public class CustomerAction extends ActionSupport{

    private Customer customer;
    private String msg;
    private PageBean pageBean;//封装每页查询的数据
    private String[] querys;//查询条件
    @Resource(name="customerService")
    private ICustomerService customerService;

    //添加客户方法
    public String addCustomer(){
        if (customerService.addCustomer(customer)) {
            msg = "success";
        } else {
            msg = "error";
        }
        return "addCustomer";
    }

    //查询客户方法
    public String selectByIdCustomer() {
        customer = (Customer) customerService.selectByIdCustomer(customer);
        return "selectByIdCustomer";
    }

    //修改客户方法
    public String updateCustomer(){
        if(customerService.updateCustomer(customer)){
            msg="success";
        }else{
            msg = "error";
        }
        return "updateCustomer";
    }

    //删除客户方法
    public String deleteCustomer() {
        if (customerService.deleteCustomer(customer)) {
            msg = "success";
        } else {
            msg = "error";
        }
        return "deleteCustomer";
    }

    //分页查询
    public String selectAllCustomer(){
        //调用服务层方法查询
        pageBean =  customerService.selectAllCustomer(pageBean,querys);
        return "selectAllCustomer";
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public PageBean getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean pageBean) {
        this.pageBean = pageBean;
    }

    public String[] getQuerys() {
        return querys;
    }

    public void setQuerys(String[] querys) {
        this.querys = querys;
    }

    public void setCustomerService(ICustomerService customerService) {
        this.customerService = customerService;
    }
}