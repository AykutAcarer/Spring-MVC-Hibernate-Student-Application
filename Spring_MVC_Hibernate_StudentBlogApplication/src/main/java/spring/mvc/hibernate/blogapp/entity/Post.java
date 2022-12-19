package spring.mvc.hibernate.blogapp.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="student_posts")
public class Post {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="post_id")
	private int id;
	
	@Column(name="post_title")
	private String postTitle;
	
	@Column(name="post_content")
	private String postContent;
	
	@Column(name="post_picture")
	private String postPicture;
	
	@Column(name="created_at")
	private Date create;
	
	@Column(name="updated_at")
	private Date update;

	
	
	public Post() {
		
	}

	public Post(String postTitle, String postContent, String postPicture, Date create, Date update) {
		
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postPicture = postPicture;
		this.create = create;
		this.update = update;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public String getPostPicture() {
		return postPicture;
	}

	public void setPostPicture(String postPicture) {
		this.postPicture = postPicture;
	}

	public Date getCreate() {
		return create;
	}

	public void setCreate(Date create) {
		this.create = create;
	}

	public Date getUpdate() {
		return update;
	}

	public void setUpdate(Date update) {
		this.update = update;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", postTitle=" + postTitle + ", postContent=" + postContent + ", postPicture="
				+ postPicture + ", create=" + create + ", update=" + update + "]";
	}
	
	
	
	
}
