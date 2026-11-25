package mvc.sms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mvc.sms.model.Student;
import mvc.sms.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService service;
	
	
	@RequestMapping(value ="/save-student",method = RequestMethod.POST)
	public ModelAndView createStudent(Student student) {
		
		
		service.addStudent(student);
		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("index.jsp");
		return new ModelAndView("index.jsp");
			
		
	}
	
	@RequestMapping(value = "/display-all" , method = RequestMethod.GET)
	public ModelAndView displayAll() {
		List<Student> students=service.fetchAll();
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("display.jsp");
//		mav.addObject("studentList",students);
		return new ModelAndView("display.jsp").addObject("studentList",students);
	}
	
	@RequestMapping(value="/find-by-Id" ,method = RequestMethod.GET)
	public ModelAndView DisplayById(int studentId) {
	Student student	= service.fetchById(studentId);
	
//	ModelAndView mav = new ModelAndView();
//	mav.setViewName("Update.jsp");
//	mav.addObject("studentObject", student);
	return new ModelAndView("Update.jsp").addObject("studentObject",student) ;
		
	}
	
	@RequestMapping(value = "/update-student",method = RequestMethod.GET)
	public ModelAndView updateStudent(Student student) {
		
		service.modifyStudent(student);
		
		return displayAll();
		
	}
	
	@RequestMapping(value = "/delete-by-Id",method=RequestMethod.GET)
	public ModelAndView DeleteById(int studentId) {
		service.eraseById(studentId);
		
		
		
		return displayAll();
	}

}
