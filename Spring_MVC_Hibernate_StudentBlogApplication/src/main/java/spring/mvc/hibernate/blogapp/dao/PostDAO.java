package spring.mvc.hibernate.blogapp.dao;

import java.util.List;

import spring.mvc.hibernate.blogapp.entity.Post;

public interface PostDAO {

	public List<Post> getPosts();
	

}
