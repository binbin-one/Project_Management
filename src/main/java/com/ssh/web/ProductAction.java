package com.ssh.web;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.Product;
import com.ssh.service.IProductService;
import com.ssh.util.PageBean;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * 处理产品相关请求的Action
 * @author Administrator
 *
 */
@Controller("productAction")
@Scope("prototype")
public class ProductAction extends ActionSupport{

    private Product product;
    private String msg;
    private PageBean pageBean;  //封装每页查询的数据
    private String[] querys;    //查询条件
    @Resource(name="productService")
    private IProductService productService;

    //添加产品方法
    public String addProduct(){
        if (productService.addProduct(product)) {
            msg = "success";
        } else {
            msg = "error";
        }
        return "addProduct";
    }

    //查询产品方法
    public String selectByIdProduct() {
        product = (Product) productService.selectByIdProduct(product);
        return "selectByIdProduct";
    }

    //修改产品方法
    public String updateProduct(){
        if(productService.updateProduct(product)){
            msg="success";
        }else{
            msg = "error";
        }
        return "updateProduct";
    }
    //分页查询
    public String selectAllProduct(){
        //调用服务层方法查询
        pageBean =  productService.selectAllProduct(pageBean,querys);
        return "selectAllProduct";
    }
    //删除产品方法
    public String deleteProduct() {
        if (productService.deleteProduct(product)) {
            msg = "success";
        } else {
            msg = "error";
        }
        return "deleteProduct";
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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

    public void setProductService(IProductService productService) {
        this.productService = productService;
    }
}