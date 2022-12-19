package spring.mvc.hibernate.blogapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.mvc.hibernate.blogapp.entity.Post;
import spring.mvc.hibernate.blogapp.entity.Student;

@Repository
public class PostDAOImpl implements PostDAO {

	//need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Post> getPosts() {
		
		// get the current hibernate session
		Session session = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Post> theQuery = 
				session.createQuery("from Post", Post.class);
		
		// execute query and get the result list
		List<Post> thePosts = theQuery.getResultList();
		
		//return the list
		return thePosts;
	}

	

	
	
	
}
