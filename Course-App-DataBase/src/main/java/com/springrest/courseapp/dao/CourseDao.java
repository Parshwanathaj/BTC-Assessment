package com.springrest.courseapp.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.springrest.courseapp.entities.Course;

public interface CourseDao extends JpaRepository<Course, Long> {

	@Query(value = "select * from course where title like %:keyword%", nativeQuery = true)
	public List<Course> findCourseByTitle(@Param("keyword") String keyword);

	@Query(value="select * from course order by date desc", nativeQuery = true )
	public List<Course> findBydareDesc();
}