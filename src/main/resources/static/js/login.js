let index = {
		
		init:function(){
			$("#btn-login").on("click",()=>{
		   
				//콜백 스텍
				this.login();
			});
		},
		
    login:function(){
    
			let data = {
				username:$("#username").val(),
				password:$("#password").val(),	 
				
				 
			 };
			
			alert(data.username);
			 
			$.ajax({
				type:"POST",
				url:"/loginProc",
//				data: JSON.stringify(data),
				data: $("#username").serialize()+"&"+$("#password").serialize(),
				dataType: "json"
			}).done(function(resp){
					   alert(resp.data);
					   console.log(resp);
					   localStorage.setItem("Authorization", "Bearer "+ resp.data);
					   location.href="/";
			//console.log(JSON.parse(resp));
			}).fail(function(error){
				
				alert("로그인 실패")
				console.log(error);
			}) 
    },
		
}

index.init();