package com.ssh.dao;

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
public interface IProductDao {
    // 添加方法
    public boolean addProduct(Product product);

    // 删除方法
    public boolean deleteProduct(Product product);

    // 修改方法
    public boolean updateProduct(Product product);

    // 查询方法
    public List selectAllProduct(String hql, PageBean pageBean);
    public List selectAllProduct(String hql);

    //查询指定方法
    public Product selectByIdProduct(Product product);

}
