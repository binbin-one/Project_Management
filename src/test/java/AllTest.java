import com.ssh.dao.ICustomerDao;
import com.ssh.dao.IProductDao;
import com.ssh.dao.IUserDao;
import com.ssh.dao.ItemDao;
import com.ssh.dao.impl.CustomerDaoImpl;
import com.ssh.dao.impl.ItemDaoImpl;
import com.ssh.dao.impl.ProductDaoImpl;
import com.ssh.dao.impl.UserDaoImpl;
import com.ssh.entity.Customer;
import com.ssh.entity.Item;
import com.ssh.entity.Product;
import com.ssh.entity.Users;
import com.ssh.service.ICustomerService;
import com.ssh.service.IProductService;
import com.ssh.service.IUserService;
import com.ssh.service.ItemService;
import com.ssh.util.PageBean;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.beans.Transient;
import java.util.Date;

//@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:di.xml"})
public class AllTest extends AbstractJUnit4SpringContextTests{
    @Resource(name="userService")
    private IUserService userService;
    @Resource(name="productService")
    private IProductService productService;
    @Resource(name="itemService")
    private ItemService itemService;
    @Resource(name="customerService")
    private ICustomerService customerService;
    @Test
    @Transient
    public void test_Login(){
        userService.doLogin("admins","123456");
    }
    @Test
    @Transient
    public void test_Users(){
        userService.addUsers(new Users(0,"licy","123456","13595026526","262457@qq.com","/image/8.jpg",1,new Date(),1,"备注"));
        //userService.updateUsers(new Users());
        userService.deleteUsers(new Users());
    }
    @Test
    public void test_Item(){
        itemService.addItem(new Item(0,"学生管理系统","项目简介",new Date(),"2500",1,1,1,"备注"));
        itemService.deleteItem(new Item());
//      itemService.updateItem(new Item());
    }
    @Test
    public void test_Product(){
        productService.addProduct(new Product(0,"产品名称","HKN-5265-KJJK","产品简介",5265,new Date(),1,"备注"));
        productService.deleteProduct(new Product());
//        productService.updateProduct(new Product());
    }
    @Test
    public void test_Customer(){
        customerService.addCustomer(new Customer(0,"jack","2018-1-Z-1525","Licy","13595202568","广东珠海","说明",new Date(),1,"备注"));
        customerService.deleteCustomer(new Customer());
  //      customerService.updateCustomer(new Customer());
    }
}