package com.example.project.model.repo;

import org.springframework.data.repository.CrudRepository;

import com.example.project.model.entity.Student;

public interface StudentRepository extends CrudRepository<Student, Integer> {
    // repo

}

