<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<title>Pizza</title>
	<link rel="stylesheet" type="text/css" href="/static/main.css">
</head>
<body>
	<div class="wrapper-signup">
		<section>
			<article>
				% if userexists == True:
					<p style="text-align: center; font-size: 22px;">Villa koma upp, email er nú þegar tekið</p>
				% else:
					<p style="text-align: center; font-size: 22px;">Velkominn {{user}}</p>
				
			</article>
		</section>
	</div>
</body>
</html>