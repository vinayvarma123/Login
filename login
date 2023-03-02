let form = document.getElementById('form');

let onButtonClick = function(ele) {
	if(ele.innerText.toLowerCase() === 'create an account') {
		form.innerHTML = `
			<h1>Login / Signup</h1>
			<input type="email" name="email" placeholder="Email Address*" required="true"><br>
			<input type="text" name="name" placeholder="Name*" required="true"><br>
			<input type="password" name="password" placeholder="Password*" required="true"><br>
			<input type="file" name="myImg" required="true"> <br>
			<input type="submit" value="Signup">
		`;
		form.action = '/signup';
		form.enctype = 'multipart/form-data';
		ele.innerText = 'Login';
		console.log(ele.parentElement.querySelector('span'));
		ele.parentElement.querySelector('span').innerText = 'Already have an account ? ';
	} else {
		form.innerHTML = `
			<h1>Login / Signup</h1>
			<input type="email" name="email" placeholder="Email Address*" required="true"><br>
			<input type="password" name="password" placeholder="Password*" required="true"><br>
			<input type="submit" value="Login">
			<a href="/forgot-password">Forgot your password ?</a>
		`;
		form.action = '/login';
		form.enctype = 'application/x-www-form-urlencoded';
		ele.innerText = 'create an account';
		ele.parentElement.querySelector('span').innerText = 'New here ? ';
	}
}
