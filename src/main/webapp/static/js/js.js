function register(){
	let confirm = document.getElementById('confirm');
	let regPassword = document.getElementById('regPassword');
	if (comfirm.value.trim()!=regPassword.value.trim()){
		alert('两次输入的密码不一样！');
		regPassword.focus();
		return false;
	}
}
function loginshowDiv(){
	var login = document.getElementById('login');
	login.style.display = 'block';
}
function loginhideDiv(){
	var login = document.getElementById('login');
	login.style.display = 'none';
}
function RegisteredshowDiv(){
	var Registered = document.getElementById('Registered');
	Registered.style.display = 'block';
}
function RegisteredhideDiv(){
	var Registered = document.getElementById('Registered');
	Registered.style.display = 'none';
}
function ctrlover(){
	var ctrl = document.getElementById('ctrl');
	ctrl.style.display = 'block';
}
function ctrlout(){
	var ctrl = document.getElementById('ctrl');
	ctrl.style.display = 'none';
}