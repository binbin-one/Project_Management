package com.ssh.dao;

import com.ssh.entity.Enroll;
import com.ssh.util.PageBean;

import java.util.List;

/**
 *
 * @Author:
 * @Description:
 * @Date:Created in 10:56 2017/10/24
 * @Modified By:
 */
public interface IEnrollDao {
    // 添加方法
    public boolean addEnroll(Enroll enroll);

    // 删除方法
    public boolean deleteEnroll(Enroll enroll);

    // 修改方法
    public boolean updateEnroll(Enroll enroll);

    // 查询方法
    public List selectAllEnroll(String hql, PageBean pageBean);
    public List selectAllEnroll(String hql);

    //查询指定方法
    public Enroll selectByIdEnroll(Enroll enroll);

}
