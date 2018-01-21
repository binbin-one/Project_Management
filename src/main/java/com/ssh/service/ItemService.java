package com.ssh.service;

import com.ssh.entity.Item;
import com.ssh.util.PageBean;

import java.util.List;

/**
 *
 * @Author:
 * @Description:
 * @Date:Created in 10:56 2017/10/24
 * @Modified By:
 */
public interface ItemService {
    // 添加方法
    public boolean addItem(Item item);

    // 删除方法
    public boolean deleteItem(Item item);

    // 修改方法
    public boolean updateItem(Item item);

    // 查询方法
    public PageBean selectAllItem(PageBean pageBean, String[] querys);
    public List selectAllItem();
    //查询指定方法
    public Item selectByIdItem(Item item);

}
