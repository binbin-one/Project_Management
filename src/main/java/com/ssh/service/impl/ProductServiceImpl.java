package com.ssh.service.impl;

import com.ssh.dao.IProductDao;
import com.ssh.entity.Product;
import com.ssh.service.IProductService;
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
@Service("productService")
@Transactional(propagation = Propagation.REQUIRED)
public class ProductServiceImpl implements IProductService {
    //声明数据层接口
    @Resource(name="productDao")
    private IProductDao productDao;

    //添加方法
    @Override
    public boolean addProduct(Product product) {
        return productDao.addProduct(product);
    }
    //删除方法
    @Override
    public boolean deleteProduct(Product product) {
        return productDao.deleteProduct(product);
    }
    //修改方法
    @Override
    public boolean updateProduct(Product product) {return productDao.updateProduct(product);}
    //查询所有方法
    public PageBean selectAllProduct(PageBean pageBean, String[] querys) {
        //不带条件查询
        String hql = "from Product p where 1=1";
        //带条件查询
        if (querys != null && querys.length > 0) {
            //产品姓名
            if (querys[0] != null && querys[0].length() > 0) {
                hql += " and p.cname like '%" + querys[0] + "%'";
            }
            //特征码
            if (querys[1] != null && querys[1].length() > 0) {
                hql += " and p.ccode like '%" + querys[1] + "%'";
            }
            //用户邮箱
            if (querys[2] != null && querys[2].length() > 0) {
                hql += " and p.dcreatedatetime like '%" + querys[2] + "%'";
            }
        }
        hql += "order by p.dcreatedatetime desc";
        //设置数据总条数
        pageBean.setAllNum(productDao.selectAllProduct(hql).size());
        //设置中每页显示数据
        pageBean.setResult(productDao.selectAllProduct(hql, pageBean));
        return pageBean;
    }
    //查询所有产品信息
    public List selectProduct(){
        String hql = "from Product";
        return productDao.selectAllProduct(hql);
    }
    //查询指定用户方法
    @Override
    public Product selectByIdProduct(Product product) {
        return productDao.selectByIdProduct(product);
    }

    public void setProductDao(IProductDao productDao) {
        this.productDao = productDao;
    }
}
