package top.hr37.service;

import top.hr37.domain.Student;

import java.util.List;

public interface StudentService {

    int addStudent(Student stu);
    List<Student> queryStudent();
}
