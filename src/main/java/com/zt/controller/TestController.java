package com.zt.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zt.bean.Employee;
import com.zt.dao.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by apple on 2017/7/10.
 */
@Controller
@RequestMapping(value = "/")
public class TestController {

    @Autowired
    EmployeeMapper employeeMapper;
    @RequestMapping(value = "first")
    public ModelAndView index(){
        List<Employee> list;
        PageHelper.startPage(1,10);
        list=employeeMapper.selectByExample(null);

        PageInfo<Employee> pageInfo = new PageInfo<Employee>(list);
        long total = pageInfo.getTotal(); //获取总记录数
        System.out.println("共有商品信息：" + total);

        return new ModelAndView("detail","list",list);
    }

    @RequestMapping("/")
    public String Test(){
        List<Employee> list;
        list=employeeMapper.selectByExample(null);
        System.out.println("数据测试2");
       return "detail";

    }

    @RequestMapping(value = "ajax")
    public String ajax(){
        return "ajax";
    }
}
