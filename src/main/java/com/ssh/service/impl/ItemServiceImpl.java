package com.ssh.service.impl;

import com.ssh.dao.ItemDao;
import com.ssh.entity.Item;
import com.ssh.service.ItemService;
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
@Service("itemService")
@Transactional(propagation = Propagation.REQUIRED)
public class ItemServiceImpl implements ItemService {
    //声明数据层接口
    @Resource(name="itemDao")
    private ItemDao itemDao;

    //添加方法
    @Override
    public boolean addItem(Item item) {
        return itemDao.addItem(item);
    }
    //删除方法
    @Override
    public boolean deleteItem(Item item) {
        return itemDao.deleteItem(item);
    }
    //修改方法
    @Override
    public boolean updateItem(Item item) {return itemDao.updateItem(item);}
    @Override
    //查询所有方法
    public PageBean selectAllItem(PageBean pageBean, String[] querys) {
        //不带条件查询
        String hql = "select i.cid,i.cname,i.cexplain,i.dcreatedatetime,i.dsalary,i.cusetype,i.cpaytype,i.cremark," +
                     "i.cstatus,c.cname,p.cname,u.uname from Item i inner join Customer c on i.customer =c.cid " +
                     "inner join Product p on i.product=p.cid inner join Users u on i.users=u.uno where 1=1";
        //带条件查询
        if (querys != null && querys.length > 0) {
            //用户姓名
            if (querys[0] != null && querys[0].length() > 0) {
                hql += " and i.cname like '%" + querys[0] + "%'";
            }
            //用户电话
            if (querys[1] != null && querys[1].length() > 0) {
                hql += " and i.dcreatedatetime like '%" + querys[1] + "%'";
            }
            //用户邮箱
            if (querys[2] != null && querys[2].length() > 0) {
                hql += " and i.dsalary like '%" + querys[2] + "%'";
            }
        }
        hql += "order by i.dcreatedatetime desc";
        //设置数据总条数
        pageBean.setAllNum(itemDao.selectAllItem(hql).size());
        //设置中每页显示数据
        pageBean.setResult(itemDao.selectAllItem(hql, pageBean));
        return pageBean;
    }

    public List selectAllItem() {
        String hql = "select i.cname,i.cexplain,i.dcreatedatetime,i.dsalary,i.cusetype,i.cpaytype,i.cremark," +
                "i.cstatus,c.cname,p.cname,u.uname from Item i inner join Customer c on i.customer =c.cid " +
                "inner join Product p on i.product=p.cid inner join Users u on i.users=u.uno where 1=1";
        return itemDao.selectAllItem(hql);
    }
    //查询指定用户方法
    @Override
    public Item selectByIdItem(Item item) {
        return itemDao.selectByIdItem(item);
    }

    public void setItemDao(ItemDao itemDao) {
        this.itemDao = itemDao;
    }
}
