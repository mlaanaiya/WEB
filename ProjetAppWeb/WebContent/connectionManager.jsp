<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head> 
		<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
		<link href="css/bootstrapLogin.css" rel="stylesheet">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		<title>Connexion|Pub7</title>
	</head>
<body>
<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<h5>Vous étes un Manager, Entrez vos données pour vous connecter.</h5>
					<form action= "Controler" method="get">
					<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Identifiant</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="login" id="login"  placeholder="Entrez votre identifiant"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Mot de passe</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="mdp" id="mdp"  placeholder="Entrez votre mot de passe"/>
								</div>
							</div>
						</div>
						<input type="submit" name="ajouter" value="connect as a manager">
						<input type="hidden" name="op" value="ConnectionManager">
						<br>
						<br>
						<% String message = (String)request.getAttribute("message"); %>
						<% if(message != null) { %>
							<%=message%>
						<% } %>
						<a href="connectionUser.jsp"><strong>Vous étes déjà membre, Connectez-vous comme un Utilisateur</strong></a><br>
						<a href="index.html"><strong>Retour au Menu</strong></a>
						</form>
				</div>
		</div>
</div>
</body>
</html>