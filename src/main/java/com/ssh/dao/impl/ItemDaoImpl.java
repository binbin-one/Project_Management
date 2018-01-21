package com.ssh.dao.impl;

import com.ssh.dao.ItemDao;
import com.ssh.entity.Item;
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
@Repository("itemDao")
public class ItemDaoImpl extends BaseDao implements ItemDao {
    //添加方法
    @Override
    public boolean addItem(Item item) {
        try {
            getSession().save(item);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
            return false;
    }
    //删除方法
    @Override
    public boolean deleteItem(Item item) {
        try {
            getSession().delete(item);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //修改方法
    @Override
    public boolean updateItem(Item item) {
        try {
            getSession().update(item);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //分页查询
    @Override
    public List selectAllItem(String hql, PageBean pageBean) {
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
    public List selectAllItem(String hql) {return getSession().createQuery(hql).list();}
    //查询指定方法
    @Override
    public Item selectByIdItem(Item item) {return  getSession().get(Item.class,item.getCid());}

}
