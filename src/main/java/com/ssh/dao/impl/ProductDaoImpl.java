package com.ssh.dao.impl;

import com.ssh.dao.IProductDao;
import com.ssh.entity.Product;
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
@Repository("productDao")
public class ProductDaoImpl extends BaseDao implements IProductDao {
    //添加方法
    @Override
    public boolean addProduct(Product product) {
        try {
            getSession().save(product);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
            return false;
    }
    //删除方法
    @Override
    public boolean deleteProduct(Product product) {
        try {
            getSession().delete(product);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //修改方法
    @Override
    public boolean updateProduct(Product product) {
        try {
            getSession().update(product);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //分页查询
    @Override
    public List selectAllProduct(String hql, PageBean pageBean) {
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
    public List selectAllProduct(String hql) {return getSession().createQuery(hql).list();}
    //查询指定方法
    @Override
    public Product selectByIdProduct(Product product) {return  getSession().get(Product.class,product.getCid());}

}
