package com.zt.test;

import com.zt.bean.Department;
import com.zt.bean.Employee;
import com.zt.dao.DepartmentMapper;
import com.zt.dao.EmployeeMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by apple on 2017/7/10.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})

public class TestMyBatis {
    @Autowired
    DepartmentMapper departmentMapper;

    @Autowired
    EmployeeMapper employeeMapper;

    @Test
    public void testDepartment() {
//        Department department = new Department(null, "一号");
//        departmentMapper.insertSelective(department);

        Department de = departmentMapper.selectByPrimaryKey(2);

        System.out.println(de.getDepName());

//		departmentMapper.deleteByPrimaryKey(1);

    }
    @Test
    public void testEmployeeAll(){
       List<Employee> list= employeeMapper.selectByExample(null);

       for(Employee employee:list){
           System.out.println(employee);
       }
    }
}
