package com.ssh.dao;

import com.ssh.entity.Users;
import com.ssh.util.PageBean;

import java.util.List;

/**
 * @Author:
 * @Description:
 * @Date:Created in 10:56 2017/10/24
 * @Modified By:
 */
public interface IUserDao {
    // 添加方法
    public boolean addUsers(Users user);

    // 删除方法
    public boolean deleteUsers(Users user);

    // 修改方法
    public boolean updateUsers(Users user);

    // 查询方法
    public List selectAllUsers(String hql);

    //查询指定方法
    public Users selectByIdUsers(Users user);

    //登录方法
    public List doLogin(String hql);
    public List selectAllUsers(String hql, PageBean pageBean);
}
