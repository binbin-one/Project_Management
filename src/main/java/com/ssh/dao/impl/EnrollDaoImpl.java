package com.ssh.dao.impl;

import com.ssh.dao.IEnrollDao;
import com.ssh.entity.Enroll;
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
@Repository("enrollDao")
public class EnrollDaoImpl extends BaseDao implements IEnrollDao {
    //添加方法
    @Override
    public boolean addEnroll(Enroll enroll) {
        try {
            getSession().save(enroll);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
            return false;
    }
    //删除方法
    @Override
    public boolean deleteEnroll(Enroll enroll) {
        try {
            getSession().delete(enroll);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //修改方法
    @Override
    public boolean updateEnroll(Enroll enroll) {
        try {
            getSession().update(enroll);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    //分页查询
    @Override
    public List selectAllEnroll(String hql, PageBean pageBean) {
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
    public List selectAllEnroll(String hql) {return getSession().createQuery(hql).list();}
    //查询指定方法
    @Override
    public Enroll selectByIdEnroll(Enroll enroll) {return  getSession().get(Enroll.class,enroll.getCid());}

}
