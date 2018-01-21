package com.ssh.service;

import com.ssh.entity.Product;
import com.ssh.util.PageBean;

import java.util.List;

/**
 *
 * @Author:
 * @Description:
 * @Date:Created in 10:56 2017/10/24
 * @Modified By:
 */
public interface IProductService {
    // 添加方法
    public boolean addProduct(Product product);

    // 删除方法
    public boolean deleteProduct(Product product);

    // 修改方法
    public boolean updateProduct(Product product);

    // 查询方法
    public PageBean selectAllProduct(PageBean pageBean, String[] querys);
    public List selectProduct();
    //查询指定方法
    public Product selectByIdProduct(Product product);
}
