package com.springrest.courseapp.services;

import java.util.List;

import com.springrest.courseapp.entities.Course;

public interface CourseService {

	public List<Course> getCourses();

	public Course getCourse(long courseId);

	public Course addCourse(Course course);

	public Course updateCourse(Course course);

	public void deleteCourse(long parselong);

	public List<Course> findByTitle(String keyword);

}