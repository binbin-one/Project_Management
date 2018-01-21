package com.ssh.service.impl;

import com.ssh.dao.IUserDao;
import com.ssh.entity.Users;
import com.ssh.service.IUserService;
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
@Service("userService")
@Transactional(propagation = Propagation.REQUIRED)
public class UserServiceImpl implements IUserService {
    //声明数据层接口
    @Resource(name="userDao")
    private IUserDao userDao;

    //添加方法
    @Override
    public boolean addUsers(Users user) {
        return userDao.addUsers(user);
    }
    //删除方法
    @Override
    public boolean deleteUsers(Users user) {
        return userDao.deleteUsers(user);
    }
    //修改方法
    @Override
    public boolean updateUsers(Users user) {return userDao.updateUsers(user);}

    //查询所有方法
    public PageBean selectAllUsers(PageBean pageBean,String[] querys) {
        //不带条件查询
        String hql = "from Users u where u.utype=1 or u.utype=2";
        //带条件查询
        if (querys != null && querys.length > 0) {
            //用户姓名
            if (querys[0] != null && querys[0].length() > 0) {
                hql += " and u.uname like '%" + querys[0] + "%'";
            }
            //用户电话
            if (querys[1] != null && querys[1].length() > 0) {
                hql += " and u.uphone like '%" + querys[1] + "%'";
            }
            //用户邮箱
            if (querys[2] != null && querys[2].length() > 0) {
                hql += " and u.uemail like '%" + querys[2] + "%'";
            }
        }
            hql += "order by u.uintime desc";
            //设置数据总条数
            pageBean.setAllNum(userDao.selectAllUsers(hql).size());
            //设置中每页显示数据
            pageBean.setResult(userDao.selectAllUsers(hql, pageBean));
            return pageBean;
    }
    //查询业务人员方法
    public List selectBusiness(){
        String hql="from Users u where u.utype=2";
        return userDao.selectAllUsers(hql);
    }
    //查询研发人员信息
    public List selectResearch(){
        String hql="from Users u where u.utype=1";
        return userDao.selectAllUsers(hql);
    }
    //查询指定用户方法
    @Override
    public Users selectByIdUsers(Users user) {return userDao.selectByIdUsers(user);}

    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }
    //用户登录方法
    public Users doLogin(String name, String pwd){
        String hql="from Users u where u.uname='"+name+"'";
        //调用Dao层方法执行查询
        List <Users> userList= userDao.doLogin(hql);
        for (Users users : userList) {
              if(users.getUname().equals(name)&&users.getUpwd().equals(pwd)){
                 return users;
              }
        }
                return null;
    }
}
