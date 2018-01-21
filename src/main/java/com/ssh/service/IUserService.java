package com.ssh.service;

import com.ssh.entity.Users;
import com.ssh.util.PageBean;

import java.util.List;

/**
 * @Author:
 * @Description:
 * @Date:Created in 10:56 2017/10/24
 * @Modified By:
 */
public interface IUserService {
    // 添加方法
    public boolean addUsers(Users user);

    // 删除方法
    public boolean deleteUsers(Users user);

    // 修改方法
    public boolean updateUsers(Users user);

    // 查询方法
    public PageBean selectAllUsers(PageBean pageBean, String[] querys);
    public Users selectByIdUsers(Users user);
    public Users doLogin(String name, String pwd);
    public List selectBusiness();
    public List selectResearch();
}
