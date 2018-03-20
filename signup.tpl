
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Sign up</title>
	<link rel="stylesheet" type="text/css" href="/static/main.css">
</head>
<body>
	<div class="wrapper-signup">
		<section>
			<article>
				<h1>Sign up</h1>
				<p></p>
				<form action="/new_user/login" method="POST">
					<input type="email" name="email" placeholder="Email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" autofocus required>
					<input type="text" name="user" placeholder="Fornafn" pattern="(?=.*[A-Z])(?=.*[a-z])[A-Za-z]{4,}" required>
					<input type="password" name="passwd" placeholder="Password" pattern="(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{4,}" required>
					<input type="submit">
				</form>
			</article>
		</section>
	</div>
</body>
</html>