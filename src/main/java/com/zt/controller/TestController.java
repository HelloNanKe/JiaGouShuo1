package com.zt.controller;

import com.zt.bean.Employee;
import com.zt.dao.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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
        list=employeeMapper.selectByExample(null);
        System.out.println("数据测试1");
        for(Employee employee:list){
            System.out.println(employee);
        }
        return new ModelAndView("detail","list",list);
    }
    @RequestMapping("/")
    public String Test(){
        List<Employee> list;
        list=employeeMapper.selectByExample(null);
        System.out.println("数据测试2");
       return "detail";

    }
}