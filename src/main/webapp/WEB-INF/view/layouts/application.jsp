<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>template-app-name</title>
		<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
		<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
<%-- IMPORTANT:
    This is Heroku specific styling. Remove to customize. --%>
		<link href="http://heroku.github.com/template-app-bootstrap/heroku.css" rel="stylesheet">
</head>
	<body>
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a href="/" class="brand">Spring MVC and Hibernate Template</a>
				</div>
			</div>
		</div>
		<decorator:body />
	</body>
</html>