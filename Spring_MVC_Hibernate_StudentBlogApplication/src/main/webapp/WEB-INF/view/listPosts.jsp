<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Student Post Page</title>
  </head>
  <body>
    <div class="container-sm conatiner-md container-lg container-xl">
        <div class="d-flex flex-column bd-highlight mb-3">
            <div class="p-2 bd-highlight">
                <nav class="d-flex justify-content-between navbar navbar-expand-lg navbar-light bg-light">
                    <a href="" class="navbar-brand">Logo</a>
                    <div class="d-flex">
                    	<a href="myposts" class="nav-link">My Posts</a>  
                    	<a href="#" class="nav-link">Settings</a>
                    	<a href="#" class="nav-link">Logout</a>                  	
                    </div>
                  
                </nav>
            </div>
            <div class="p-2 bd-highlight">
                <div class="d-flex flex-column">
                   <div class="d-flex justify-content-between">
	                  	<form:form class="d-flex mb-2">
	                  		<div class="me-2">
	                  			<input class="form-control" type="search" placeholder="Search" aria-label="Search">
	                  		</div>
	     					<div class="">
	     						<button class="btn btn-outline-success" type="submit">Search</button>
	     					</div>	
	     						
	   					</form:form>
	   					<div>
	   						<a href="#" class="btn btn-sm btn-primary">Add Post</a>
	   					</div>
					</div>
                    <div >

                        <c:forEach var="tempPost" items="${posts}">
	                        <div class="card mb-3" style="">
							  <div class="row no-gutters">
							    <div class="col-md-2">
							      <img src="" alt="">
							    </div>
							    <div class="col-md-10">
							      <div class="card-body">
							        <h5 class="card-title">${tempPost.postTitle}</h5>
							        <p class="card-text">${tempPost.postContent}</p>
							        <p class="card-text">created at <small class="text-muted">${tempPost.create}</small></p>
							        <p class="card-text">updated at <small class="text-muted">${tempPost.update}</small></p>
							        <div class="d-flex justify-content-end">
							        	<a href="#" class="btn btn-sm btn-outline-secondary">Comment</a>
							        </div>
							        
							      </div>
							    </div>
							  </div>
							</div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
  </body>
</html>