package com.example.project.model.service;

import java.util.List;

import com.example.project.model.entity.Student;

public interface StudentService {

	public List<Student> getAllStudents();

	public Student getStudentById(int id);

	public void addStudent(Student student);

	public void deleteStudent(int id);

}