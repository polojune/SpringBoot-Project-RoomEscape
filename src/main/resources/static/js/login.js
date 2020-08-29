/**
 * 
 */
function login() {
	let data = {
		username:$("#username").val(),
		password:$("#password").val()
	};

	alert(data.username);
	
	$.ajax({
		type:"POST",
		url:"/login",
		data:`username=${data.username}&password=${data.password}`,
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		dataType: "json"
	})
	.done(function(resp){
		console.log(resp);
		alert(resp);
		localStorage.setItem("jwtToken", resp);
		// location.href="/";
	})
	.fail(function(error){

	});
}