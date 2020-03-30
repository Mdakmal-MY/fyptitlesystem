
	var loginContainer = document.getElementById('logincontainer2');
	var loginBtn = document.getElementById('signinBtn');
	var closeloginBtn = document.getElementById('closeloginBtn');

	loginBtn.addEventListener('click', openLogin);
	closeloginBtn.addEventListener('click', closeLogin);
	
	function openLogin()
	{
		loginContainer.style.display = 'block';
	}
	
	function closeLogin()
	{
		loginContainer.style.display = 'none';
	}

