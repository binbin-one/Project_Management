package com.ssh.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.Enroll;
import com.ssh.service.IEnrollService;
import com.ssh.util.PageBean;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * 处理注册项目相关请求的Action
 * @author Administrator
 *
 */
@Controller("enrollAction")
@Scope("prototype")
public class EnrollAction extends ActionSupport{

    private Enroll enroll;
    private String msg;
    private PageBean pageBean;//封装每页查询的数据
    private String[] querys;//查询条件
    @Resource(name="enrollService")
    private IEnrollService enrollService;

    //添加注册项目方法
    public String addEnroll(){
        if (enrollService.addEnroll(enroll)) {
            msg = "success";
        } else {
            msg = "error";
        }
        return "addEnroll";
    }

    //查询注册项目方法
    public String selectByIdEnroll() {
        enroll = (Enroll) enrollService.selectByIdEnroll(enroll);
        ActionContext.getContext().put("enrolllist",enroll);
        return "selectByIdEnroll";
    }

    //修改注册项目方法
    public String updateEnroll(){
        if(enrollService.updateEnroll(enroll)){
            msg="success";
        }else{
            msg = "error";
        }
        return "updateEnroll";
    }

    //分页查询
    public String selectAllEnroll(){
        //调用服务层方法查询
        pageBean =  enrollService.selectAllEnroll(pageBean,querys);
        return "selectAllEnroll";
    }

    //删除注册项目方法
    public String deleteEnroll() {
        if (enrollService.deleteEnroll(enroll)) {
            msg = "success";
        } else {
            msg = "error";
        }
        return "deleteEnroll";
    }

    public Enroll getEnroll() {
        return enroll;
    }

    public void setEnroll(Enroll enroll) {
        this.enroll = enroll;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
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

    public void setEnrollService(IEnrollService enrollService) {
        this.enrollService = enrollService;
    }
}