package com.ssh.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.Customer;
import com.ssh.entity.Item;
import com.ssh.entity.Product;
import com.ssh.entity.Users;
import com.ssh.service.ICustomerService;
import com.ssh.service.IProductService;
import com.ssh.service.IUserService;
import com.ssh.service.ItemService;
import com.ssh.util.ExportUtil;
import com.ssh.util.PageBean;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 处理项目相关请求的Action
 * @author Administrator
 *
 */
@Controller("itemAction")
@Scope("prototype")
public class ItemAction extends ActionSupport{

    private Item item;
    private String msg;
    private PageBean pageBean;//封装每页查询的数据
    private String[] querys;//查询条件
    private List<Users> slist;
    private List<Users> rlist;
    private List<Product>plist;
    private List<Customer>clist;
    @Resource(name="itemService")
    private ItemService itemService;
    @Resource(name="userService")
    private IUserService userService;//用户信息接口
    @Resource(name="productService")
    private IProductService productService;//产品信息接口
    @Resource(name="customerService")
    private ICustomerService customerService;//客户信息接口

    //查询所有的业务人员信息
    public String selectBusiness(){
        slist= userService.selectBusiness();
        return "business";
    }

    //查询所有的研发人员信息
    public String selectResearch(){
        rlist= userService.selectResearch();
        return "research";
    }

    //查询所有产品信息
    public String selectProduct(){
        plist=productService.selectProduct();
        return "product";
    }

    //查询所有客户信息
    public String selectCustomer(){
        clist=customerService.selectCustomer();
        return "customer";
    }

    //添加项目方法
    public String addItem(){
        if (itemService.addItem(item)) {
            msg = "success";
        } else {
            msg = "error";
        }
        return "addItem";
    }

    //查询项目方法
    public String selectByIdItem() {
        item = (Item) itemService.selectByIdItem(item);
        ActionContext.getContext().put("itemlist",item);
        return "selectByIdItem";
    }

    //修改项目方法
    public String updateItem(){
        if(itemService.updateItem(item)){
            msg="success";
        }else{
            msg = "error";
        }
        return "updateItem";
    }

    //删除项目方法
    public String deleteItem() {
        if (itemService.deleteItem(item)) {
            msg = "success";
        } else {
            msg = "error";
        }
        return "deleteItem";
    }

    //分页查询
    public String selectAllItem(){
        //调用服务层方法查询
        pageBean =  itemService.selectAllItem(pageBean,querys);
        return "selectAllItem";
    }

    public String downLoadExcel(){
        List slist = new ArrayList();
        slist = itemService.selectAllItem();
        ExportUtil exportUtil = new ExportUtil();
        try {
            exportUtil.export(slist);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "downLoadExcel";
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
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

    public List<Users> getSlist() {
        return slist;
    }

    public void setSlist(List<Users> slist) {
        this.slist = slist;
    }

    public List<Users> getRlist() {
        return rlist;
    }

    public void setRlist(List<Users> rlist) {
        this.rlist = rlist;
    }

    public List<Product> getPlist() {
        return plist;
    }

    public void setPlist(List<Product> plist) {
        this.plist = plist;
    }

    public List<Customer> getClist() {
        return clist;
    }

    public void setClist(List<Customer> clist) {
        this.clist = clist;
    }

    public void setItemService(ItemService itemService) { this.itemService = itemService; }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }

    public void setProductService(IProductService productService) {
        this.productService = productService;
    }

    public void setCustomerService(ICustomerService customerService) {
        this.customerService = customerService;
    }
}