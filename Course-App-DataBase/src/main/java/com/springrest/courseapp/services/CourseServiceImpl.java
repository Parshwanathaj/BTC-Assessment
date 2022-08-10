package com.springrest.courseapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springrest.courseapp.dao.CourseDao;
import com.springrest.courseapp.entities.Course;

@Service
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseDao courseDao;

	public CourseServiceImpl() {
	}

	@Override
	public List<Course> getCourses() {
		// return courseDao.findAll();
		return courseDao.findBydareDesc();
	}

	@Override
	public Course getCourse(long courseId) {
		return courseDao.findById(courseId).get();
	}

	@Override
	public Course addCourse(Course course) {
		courseDao.save(course);
		return course;
	}

	@Override
	public Course updateCourse(Course course) {
		courseDao.save(course);
		return course;
	}

	@Override
	public void deleteCourse(long parselong) {
		@SuppressWarnings("deprecation")
		Course entity = courseDao.getOne(parselong);
		courseDao.delete(entity);
	}

	@Override
	public List<Course> findByTitle(String keyword) {
		return courseDao.findCourseByTitle(keyword);
	}
}