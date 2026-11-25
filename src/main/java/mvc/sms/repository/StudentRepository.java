package mvc.sms.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.sms.model.Student;

@Repository
public class StudentRepository {

	
	@Autowired
    EntityManagerFactory fac;
	
	public void saveStudent(Student student) {
		EntityManager man = fac.createEntityManager();
		EntityTransaction tran = man.getTransaction();
		tran.begin();
		
		man.persist(student);
		tran.commit();
		man.close();
		
		
		
	}

	public List<Student> findAll() {
		EntityManager man= fac.createEntityManager();
		Query q = man.createQuery("From Student");
		List<Student> students=q.getResultList();
		
		man.close();
		return students;
	}

	public Student findById(int studentId) {
		EntityManager man= fac.createEntityManager();
		Student student = man.find(Student.class, studentId);
		
		
		return student;
		
	}

	public void mergeStudent(Student student) {
		EntityManager man= fac.createEntityManager();
		EntityTransaction tran = man.getTransaction();
		tran.begin();
		man.merge(student);
		tran.commit();
		
		
	}

	public void removeById(int studentId) {
		EntityManager man= fac.createEntityManager();
		EntityTransaction tran = man.getTransaction();
		Student student = man.find(Student.class, studentId);
		tran.begin();
		man.remove(student);
		tran.commit();
		
		
	}

	

}
