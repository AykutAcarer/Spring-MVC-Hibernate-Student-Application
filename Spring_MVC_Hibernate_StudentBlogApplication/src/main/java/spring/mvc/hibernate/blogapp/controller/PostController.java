package spring.mvc.hibernate.blogapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.hibernate.blogapp.dao.PostDAO;
import spring.mvc.hibernate.blogapp.entity.Post;

@Controller
public class PostController {

	//need to inject the post dao
	@Autowired
	private PostDAO postDAO;
	
	@RequestMapping("/posts")
	public String posts(Model theModel)
	{
		//get posts from the dao
		List<Post> thePosts = postDAO.getPosts();
		
		//add posts to the model
		theModel.addAttribute("posts", thePosts);
		
		return "listPosts";
	}
}
