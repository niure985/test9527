package top.hr37.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import top.hr37.domain.Student;
import top.hr37.service.StudentService;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService service;
    private ModelAndView mv = new ModelAndView();

    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student stu){

        String msg = "注册失败！";
        int result = service.addStudent(stu);
        if(result > 0){
            //注册成功
            msg = "学生[" + stu.getName() + "]注册成功！";
        }
        //添加数据
        mv.addObject("msg",msg);
        //指定结果页面
        mv.setViewName("show");

        return mv;
    }

    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){
        List<Student> students = service.queryStudent();
        return students;
    }
}
