package com.ssh.service.impl;

import com.ssh.dao.IEnrollDao;
import com.ssh.entity.Enroll;
import com.ssh.service.IEnrollService;
import com.ssh.util.PageBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @Author:
 * @Description:
 * @Date:Created in 15:53 2017/10/24
 * @Modified By:
 */
@Service("enrollService")
@Transactional(propagation = Propagation.REQUIRED)
public class EnrollServiceImpl implements IEnrollService {
    //声明数据层接口
    @Resource(name="enrollDao")
    private IEnrollDao enrollDao;

    //添加方法
    @Override
    public boolean addEnroll(Enroll enroll) {
        return enrollDao.addEnroll(enroll);
    }
    //删除方法
    @Override
    public boolean deleteEnroll(Enroll enroll) {
        return enrollDao.deleteEnroll(enroll);
    }
    //修改方法
    @Override
    public boolean updateEnroll(Enroll enroll) {return enrollDao.updateEnroll(enroll);}
    //查询所有方法
    @Override
    //查询所有方法
    public PageBean selectAllEnroll(PageBean pageBean, String[] querys) {
        //不带条件查询
        String hql = "from Users u where 1=1";
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
        pageBean.setAllNum(enrollDao.selectAllEnroll(hql).size());
        //设置中每页显示数据
        pageBean.setResult(enrollDao.selectAllEnroll(hql, pageBean));
        return pageBean;
    }

    //查询指定用户方法
    @Override
    public Enroll selectByIdEnroll(Enroll enroll) {
        return enrollDao.selectByIdEnroll(enroll);
    }

    public void setEnrollDao(IEnrollDao enrollDao) {
        this.enrollDao = enrollDao;
    }
}
