package com.ssh.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.Users;
import com.ssh.service.IUserService;
import com.ssh.util.PageBean;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 处理用户相关请求的Action
 * @author Administrator
 *
 */
@Controller("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport{

	private Users user;
	private String msg;
	private PageBean pageBean;//封装每页查询的数据
	private String[] querys;//查询条件
	private File uploadImage; //得到上传的文件
	private String uploadImageContentType; //得到文件的类型
	private String uploadImageFileName; //得到文件的名称
	@Resource(name="userService")
	private IUserService userService;
	private SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	//处理登录操作方法
	public String doLogin(){
		System.out.println("[日志]UserAction执行addLogin方法,"+sdf.format(new Date()));
		//调用服务层方法执行登录操作
		Users u=userService.doLogin(user.getUname(),user.getUpwd());
		if(u!=null){
			ActionContext.getContext().getSession().put("loginUser", u);
			return "main";
		}else{
			addActionError("用户名或密码错误！");
		}
		return "input";
	}

	//添加用户方法
	public String addUser(){
        uploadImge();
		System.out.println("[日志]UserAction执行addUser方法,"+sdf.format(new Date()));
		if (userService.addUsers(user)) {
			msg = "success";
		} else {
			msg = "error";
		}
		return "addUser";
	}

	//查询指定用户
	public String selectByIdUsers() {
		System.out.println("[日志]UserAction执行selectByIdUsers方法,"+sdf.format(new Date()));
		user = (Users) userService.selectByIdUsers(user);
		return "selectByIdUsers";
	}

	//分页查询
	public String selectAllUser(){
		//调用服务层方法查询
		System.out.println("[日志]UserAction执行selectAllUser方法,"+sdf.format(new Date()));
		pageBean =  userService.selectAllUsers(pageBean,querys);
		return "selectAllUser";
	}

	//修改用户
	public String updateUsers(){
        uploadImge();
		System.out.println("[日志]UserAction执行updateUser方法,"+sdf.format(new Date()));
		if(userService.updateUsers(user)){
			msg="success";
		}else{
			msg = "error";
		}
		return "updateUser";
	}

	//删除用户
	public String deleteUsers() {
		System.out.println("[日志]UserAction执行deleteStu方法,"+sdf.format(new Date()));
		if (userService.deleteUsers(user)) {
			msg = "success";
		} else {
			msg = "error";
		}
		return "deleteUsers";
	}
    private void uploadImge(){
        if(uploadImage!=null&&uploadImageFileName!=null){
            ServletContext ctx=ServletActionContext.getServletContext();
            String path=ctx.getRealPath("/image");
            String filePath=path+"/"+uploadImageFileName;//获取文件要上传的路径
            try {
                FileUtils.copyFile(uploadImage, new File(filePath));//执行上传
                //记录文件路径
                user.setUploadImage("image/"+uploadImageFileName);//记录图片路径
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }
	//文件上传
	/*public void UploadImage(){
		System.out.println("fileName:"+this.getUploadImageFileName());
		System.out.println("contentType:"+this.getUploadImageContentType());
		System.out.println("File:"+this.getUploadImage());

		//获取要保存文件夹的物理路径(绝对路径)
		String realPath= ServletActionContext.getServletContext().getRealPath("/image");
		File file = new File(realPath);

		//测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
		if(!file.exists())file.mkdirs();
		try {
			//保存文件
			FileUtils.copyFile(uploadImage, new File(file,uploadImageFileName));
			//记录文件路径
			user.setUploadImage("image/"+uploadImageFileName);//记录图片路径
		} catch (IOException e) {
			e.printStackTrace();
		}
	}*/

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public File getUploadImage() {
		return uploadImage;
	}

	public void setUploadImage(File uploadImage) {
		this.uploadImage = uploadImage;
	}

	public String getUploadImageContentType() {
		return uploadImageContentType;
	}

	public void setUploadImageContentType(String uploadImageContentType) {
		this.uploadImageContentType = uploadImageContentType;
	}

	public String getUploadImageFileName() {
		return uploadImageFileName;
	}

	public void setUploadImageFileName(String uploadImageFileName) {
		this.uploadImageFileName = uploadImageFileName;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public String[] getQuerys() {
		return querys;
	}

	public void setQuerys(String[] querys) {
		this.querys = querys;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
}





