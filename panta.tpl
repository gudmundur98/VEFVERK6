<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pizza</title>
	<link rel="stylesheet" type="text/css" href="/static/main.css">
</head>
<body>
	<section class="wrapper-panta">
		<article>
			<h1>Þú getur búið til notanda</h1>
			<button><a href="/new_user" style="padding: 2em; text-decoration: none;">Búa til notanda</a></button>
			<h1>Panta hér</h1>
			<form action="/kvittun">
					Fullt nafn: <input type="text" name="name" placeholder="Jóhannes Pétur" title="Sláðu inn nafn" required>
					Heimilisfang: <input type="text" name="heimilisfang" placeholder="Hallveigarstíg 56" title="Sláðu inn heimilisfang" required>
					Simi: <input type="simi" name="simi" placeholder="684 9324" pattern="\d{3}(?:[\-\s]?)\d{4}" title="Sláðu inn 7 tölustafi" required>
					Email: <input type="email" name="email" placeholder="abcd@abcd.com" title="Sláðu inn email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>
					<h1>Pizzustærð</h1>
					<h3>Hvað stærð má bjóða þér?</h3>
					<input type="radio" name="pizzasize" value="9", id="9" checked><label for="9">9 tommu - 1000 kr </label>
					<input type="radio" name="pizzasize" value="12" id="12"><label for="12">12 tommu - 1500 kr </label>
					<input type="radio" name="pizzasize" value="16" id="16"><label for="16">16 tommu - 2000 kr </label>

					<h1>Álegg?</h1>
					<h3>Hvað álegg má bjóða þér?</h3>
					<h3>Hvert álegg kostar 200 kr</h3>
					<div class="alegg">
						<div class="ostur">
							<h3>Ostar</h3>
							<input type="checkbox" name="alegg" id="exostur" value="ex_ostur"><label for="exostur">extra ostur</label><br>
							<input type="checkbox" name="alegg" id="rj" value="rjómaostur"><label for="rj">Rjómaostur</label><br>
							<input type="checkbox" name="alegg" id="pe" value="piparostur"><label for="pe">Piparostur</label>
							
						</div>
						<div class="kjot">
							<h3>Kjöt</h3>
							<input type="checkbox" name="alegg" id="pepparoni" value="pepparoni"><label for="pepparoni">Pepperoni</label><br>

							<input type="checkbox" name="alegg" id="Skinka" value="Skinka"><label for="Skinka">Skinka</label><br>

							<input type="checkbox" name="alegg" id="Beikonkurl" value="Beikonkurl"><label for="Beikonkurl">Beikonkurl</label><br>
							
						</div>
						<div class="green">
							<h3>Grænmeti</h3>
							<input type="checkbox" name="alegg" id="jala" value="jalapeno" ><label for="jala">jalapeno</label><br>

							<input type="checkbox" name="alegg" id="Laukur" value="Laukur" ><label for="Laukur">Laukur</label><br>

							<input type="checkbox" name="alegg" id="Paprika" value="Paprika" ><label for="Paprika">Paprika</label><br>
							
						</div>
					</div>
					<input type="submit" value="panta">
			</form>
			
		</article>
	</section>
	<footer><h6>Daníel Þór Gestsson</h6></footer>

</body>
</html>