function loginCheck(){
	if(document.frm.userid.value.length == 0){
		alert("Please enter your ID");
		frm.userid.focus();
		return false;
	}
	if (document.frm.pwd.value == ""){
		alert("You MUST enter your PWD");
		frm.pwd.focus();
		return false;
	}
	return true;
}

function idCheck(){
	if(document.frm.userid.value == ""){
		alert('Please enter your ID');
		document.frm.userid.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_black_1",
			"toolbar=no, menubar=no, scrollbars=yes," 
			+"resizable=no, width=300, height=150");
}

function idok(){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}

function joinCheck(){
	if (document.frm.name.value.length == 0){
		alert("Please enter your name");
		frm.name.focus();
		return false;
	}
	if (document.frm.userid.value.length == 0){
		alert("Please enter your ID");
		frm.userid.focus();
		return false;
	}
	if (document.frm.userid.value.length < 4){
		alert("ID more than 4 letters");
		frm.userid.focus();
		return false;
	}
	if (document.frm.pwd.value == ""){
		alert("You MUST enter password");
		frm.pwd.focus();
		return false;
	}
	if (document.frm.pwd.value != document.frm.pwd_check.value){
		alert("Password is not incorrect");
		frm.pwd.focus();
		return false;
	}
	if (document.frm.reid.value.length == 0){
		alert("No ID Check");
		frm.userid.focus();
		return false;
	}
	return true;
}

function delCheck(){
	if (document.frm.pwd.value == document.frm.pwd_check.value){
		alert("Are you sure DELETE your account?");
		frm.pwd.focus();
		return false;
	}
}