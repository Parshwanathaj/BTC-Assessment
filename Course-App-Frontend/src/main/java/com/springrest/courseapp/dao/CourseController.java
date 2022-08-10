package com.springrest.courseapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springrest.courseapp.model.Course;
import com.springrest.courseapp.web.CourseAppApiService;

@Controller
public class CourseController {

	@Autowired
	private CourseAppApiService service;;

//	@GetMapping("/")
//	public String getAll(Model m) {
//		List<Course> course = service.getAllCourseList();
//		m.addAttribute("course", course);
//		return "course.jsp";
//	}

	@GetMapping("/")
	public String getAll(String keyword, Model m) {
		List<Course> findCourse = service.getByKeyword(keyword);
		if (keyword != null) {
			m.addAttribute("course", findCourse);
		} else {
			m.addAttribute("course", service.getAllCourseList());
		}
		return "course.jsp";
	}

	@GetMapping("/add-course")
	public String addcourse() {
		return "add-course.jsp";
	}

	@PostMapping("/insert-course")
	public String addCourse(@ModelAttribute Course course, RedirectAttributes attr) {
		service.addCourse(course);
		attr.addFlashAttribute("success", "Course Added Successfully");
		return "redirect:/";
	}

	@GetMapping("/delete-course/{courseId}")
	public String deleteCourse(@PathVariable String courseId, RedirectAttributes attr) {
		service.deleteCourseById(courseId);
		attr.addFlashAttribute("delete", "Course Deleted Successfully");
		return "redirect:/";
	}

	@GetMapping("/edit-course/{courseId}")
	public String editCourse(@PathVariable String courseId, Model m) {
		Course course = service.getCourseById(courseId);
		m.addAttribute("course", course);
		return "/edit.jsp";
	}

	@PostMapping("/edit-course/update-course")
	public String updateCourse(@ModelAttribute Course course, RedirectAttributes attr) {
		service.updateCourse(course);
		attr.addFlashAttribute("edit", "Course Updated Successfully");
		return "redirect:/";
	}

	@GetMapping("/get-all")
	public String getAllList(Model m) {
		List<Course> course = service.getAllCourseList();
		m.addAttribute("course", course);
		return "redirec:/";
	}
}