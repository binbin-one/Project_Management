package com.ssh.dao.impl;

import com.ssh.dao.IUserDao;
import com.ssh.entity.Users;
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
@Repository("userDao")
public class UserDaoImpl extends BaseDao implements IUserDao {
    //添加方法
    @Override
    public boolean addUsers(Users user) {
        try {
            getSession().save(user);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
            return false;
    }
    //删除方法
    @Override
    public boolean deleteUsers(Users user) {
        try {
            getSession().delete(user);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //修改方法
    @Override
    public boolean updateUsers(Users user) {
        try {
            getSession().update(user);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //分页查询
    @Override
    public List selectAllUsers(String hql, PageBean pageBean) {
        Query query = getSession().createQuery(hql);
        //设置分页
        query.setFirstResult((pageBean.getCpage()-1)*pageBean.getShowNum());
        //设置每页显示多少
        query.setMaxResults(pageBean.getShowNum());
        List list = query.list();
        return list;
    }
    //查询所有学生
    @Override
    public List selectAllUsers(String hql) {

        return getSession().createQuery(hql).list();
    }

    //查询指定方法
    @Override
    public Users selectByIdUsers(Users user) {
        return  getSession().get(Users.class,user.getUno());
    }

    public List doLogin(String hql){return  getSession().createQuery(hql).list();}

}
