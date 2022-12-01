package com.example.project.model.service;

import java.util.List;
import java.util.NoSuchElementException;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.entity.Student;
import com.example.project.model.repo.StudentRepository;

@Service
@Transactional
public class StudentServiceImplementation implements StudentService {

	@Autowired
	StudentRepository studentRepository;

	@Override
	public List<Student> getAllStudents() {
		return (List<Student>) studentRepository.findAll();
	}

	@Override
	public Student getStudentById(int id) {
		return studentRepository.findById(id)
				.orElseThrow(() -> new NoSuchElementException("NO STUDENT PRESENT WITH ID=" + id));
	}

	@Override
	public void addStudent(Student student) {

		studentRepository.save(student);

	}

	@Override
	public void deleteStudent(int id) {
		studentRepository.deleteById(id);
	}

}