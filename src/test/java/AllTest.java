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
import com.ssh.util.PageBean;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:di.xml"})
public class AllTest extends AbstractJUnit4SpringContextTests{

    PageBean pageBean=new PageBean();
    Product product=new Product();
    Customer customer=new Customer();
    Item items=new Item();
    Users users=new Users();
    @Resource
    private ItemDao itemDao=new ItemDaoImpl();
    @Resource
    private ICustomerDao customerDao=new CustomerDaoImpl();
    @Resource
    private IProductDao productDao=new ProductDaoImpl();
    @Resource
    private IUserDao userDao=new UserDaoImpl();
    @Test
    public void test_doLogin() {
        userDao.doLogin("from Users u where u.uname='admins'");
    }
    @Test
    public void test_Users(){
        userDao.selectAllUsers("from Users");
        userDao.addUsers(new Users(0,"licy","123456","13595026526","262457@qq.com","/image/8.jpg",1,new Date(),1,"备注"));
        userDao.selectAllUsers("from Users",pageBean);
        userDao.updateUsers(users);
        userDao.deleteUsers(users);
    }
    @Test
    public void test_Item(){
        itemDao.addItem(new Item(0,"学生管理系统","项目简介",new Date(),"2500",1,1,1,"备注"));
        itemDao.deleteItem(items);
        itemDao.selectAllItem("from Item i where i.cname='学生管理系统'");
        itemDao.selectAllItem("from Item i where i.cname='学生管理系统'",pageBean);
        itemDao.selectByIdItem(items);
        itemDao.updateItem(items);
    }
    @Test
    public void test_Product(){
        productDao.addProduct(new Product(0,"产品名称","HKN-5265-KJJK","产品简介",5265,new Date(),1,"备注"));
        productDao.deleteProduct(product);
        productDao.selectAllProduct("from Product");
        productDao.selectAllProduct("from Product",pageBean);
        productDao.selectByIdProduct(product);
        productDao.updateProduct(product);
    }
    @Test
    public void test_Customer(){
        customerDao.addCustomer(new Customer(0,"jack","2018-1-Z-1525","Licy","13595202568","广东珠海","说明",new Date(),1,"备注"));
        customerDao.deleteCustomer(customer);
        customerDao.selectAllCustomer("from Customer");
        customerDao.selectAllCustomer("from Customer",pageBean);
        customerDao.selectByIdCustomer(customer);
        customerDao.updateCustomer(customer);
    }
}