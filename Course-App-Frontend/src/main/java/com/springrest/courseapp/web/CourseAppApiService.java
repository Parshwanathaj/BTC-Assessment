package com.springrest.courseapp.web;

import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.springrest.courseapp.model.Course;

@Service
public class CourseAppApiService {

	private String courseAppUrl = "http://localhost:9090/courses";

	@Autowired
	private RestTemplate rt;

	public Course addCourse(Course course) {
		Course addcourse = rt.postForObject(courseAppUrl, course, Course.class);
		return addcourse;
	}

	public void deleteCourseById(String courseId) {
		rt.delete(courseAppUrl + "/" + courseId);
	}

	public Course updateCourse(Course course) {

		HttpEntity<Course> entity = new HttpEntity<Course>(course);

		Course courses = rt.exchange(courseAppUrl, HttpMethod.PUT, entity, Course.class).getBody();
		return courses;
	}

	public Course getCourseById(String courseId) {
		return rt.getForObject(courseAppUrl + "/" + courseId, Course.class);
	}

	public List<Course> getAllCourseList() {
		Course[] courseList = rt.getForObject(courseAppUrl, Course[].class);
		return Arrays.asList(courseList);
	}

	public List<Course> getByKeyword(String keyword) {
		Course[] courseList1 = rt.getForObject(courseAppUrl + "/keyword/" + keyword, Course[].class);
		return Arrays.asList(courseList1);

	}
}