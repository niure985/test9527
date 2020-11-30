package top.hr37.service.impl;

import org.springframework.stereotype.Service;
import top.hr37.dao.StudentDao;
import top.hr37.domain.Student;
import top.hr37.service.StudentService;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Resource
    private StudentDao studentDao;

    @Override
    public int addStudent(Student stu) {
        int result = studentDao.insertStudent(stu);
        return result;
    }

    @Override
    public List<Student> queryStudent() {
        List<Student> students = studentDao.selectStudents();
        return students;
    }
}
