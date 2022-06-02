<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, pack.*" %>
<html lang="fr">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Associer un Post avec une Campagne</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <a class="navbar-brand" href="#">Pub7</a>
            </div>
			<form class="" method="get" action="Controler">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="Controler?op=deconnecter"><strong>Se déconnecter</strong></a>
                    </li>
                </ul>
            </div>
            </form>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Shop Name</p>
                
                	<div class="row">
                		<div class="list-group">
                		<form class="" method="get" action="Controler">
                    		<a href="Controler?op=listerCampagnes" class="list-group-item active">Explorez les campagnes</a>
							<a href="Controler?op=listerGroupes" class="list-group-item active">Explorez les groupes</a> 
							<a href="Controler?op=listerPosts" class="list-group-item active">Explorez les posts</a> 
							<a href="Controler?op=relevecampagne" class="list-group-item active">Explorez releve campagne</a>
					    	<a href="ajoutCampagne.html" class="list-group-item active">Ajouter une campagne</a> 
							<a href="ajoutGroup.html" class="list-group-item active">Ajouter un groupe</a> 
							<a href="ajoutPost.html" class="list-group-item active">Ajouter un post</a>
						    <a href="ajoutManager.html" class="list-group-item active">Ajouter un manager</a> 
							<a href="Controler?op=associerPostCampagne" class="list-group-item active">Associer un post à une campagne</a> 
							<a href="Controler?op=associerManagerGroupe" class="list-group-item active">Associer un manager à un groupe</a> 
							<a href="ajoutReleve.jsp" class="list-group-item active">Ajouter un releve d'un post</a> 
                    		
                    	</form>
                		</div>
                </div>
            </div>

            <div class="col-md-9">

                <div class="thumbnail">
                    <img class="img-responsive" src="images/pub7.jpeg" alt="">
					<div class="caption-full">
                    </div>
                </div>

                <div class="well">
                    <h1>Associez un Post à une Campagne</h1>
		</div>
		<div class="well">
		    <div class="form-group">
			
              <form class="" method="get" action="Controler">
		      <h1> Posts : </h1> 
		      <select class="form-control" name = "idpost" >
		      	<option value="">--Please choose a Post--</option>
		      <%
		      Collection<Post> pc = (Collection<Post>) request.getAttribute("listePosts");
		      for(Post p : pc){
		    	     String nomp = p.getTitre();
		    	     int idpo = p.getId();
		      %>
		      <option value="<%=idpo %>"><%=nomp %></option>
			  <%} %>
		      </select>
		      <h1> Campagnes : </h1> 
		      <select class="form-control" name = "idcampagne" >
		      	<option value="">--Please choose a Campagne--</option>
		      <%
		      Collection<Campagne> cc = (Collection<Campagne>) request.getAttribute("listeCampagnes");
		      for(Campagne c : cc){
		    	     String nomc = c.getNom();
		    	     int idc = c.getId();
		      %>
		      <option value="<%=idc %>"><%=nomc %></option>
			  <%} %>
		      </select>
		      
		      <div class="form-group ">
			  <input type="submit" name = "op_associer" value="confirmer" id="button" class="btn btn-primary btn-lg btn-block login-button"/>
			  <input type="hidden" name="op" value="associerPostCampagne">
			  </div>
			</form>
		    </div> 
		    
		    <hr>
		</div>

	    </div>

    </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; PUB7 2022</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

</body>

</html>