package mvc.sms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.sms.model.Student;
import mvc.sms.repository.StudentRepository;

@Service
public class StudentService {

	
	@Autowired
	private StudentRepository repository;
	
	public void addStudent(Student student) {
		repository.saveStudent(student);
		
	}

	public List<Student> fetchAll() {
	List<Student> students 	= repository.findAll();
		return students;
	}

	public Student fetchById(int studentId) {
		Student student = repository.findById(studentId);
		return student;
	}

	public void modifyStudent(Student student) {
		repository.mergeStudent(student);
		
	}

	public void eraseById(int studentId) {
		repository.removeById(studentId);
		
		
		
	}

	

}
