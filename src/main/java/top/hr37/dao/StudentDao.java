package top.hr37.dao;

import top.hr37.domain.Student;

import java.util.List;

public interface StudentDao {

    List<Student> selectStudents();
    int insertStudent(Student stu);
}
