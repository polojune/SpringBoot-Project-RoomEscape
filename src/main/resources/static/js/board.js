let index = {
		
		init:function(){
			$("#btn-update").on("click",()=>{
		   
				//콜백 스텍
				this.update();
			});
		},
		
    update:function(){
    
			let data = {
				id:$("#id").val(),
				title:$("#title").val(),	 
				content:$("#content").val()	 
				 
			 };
			
			alert(data.id);
			 
			$.ajax({
				type:"PUT",
				url:"/board/"+data.id,
				data:JSON.stringify(data),
				contentType:"application/json; charset=utf-8", 
				dataType:"json"
			}).done(function(resp){
					if(resp.statusCode == 0){
						alert("수정 실패");
					} else{
					       console.log(resp);
						   alert("수정 성공"); 
						   location.href="/boards";
					}

			   
				console.log(resp);
			//console.log(JSON.parse(resp));
			}).fail(function(error){
				
				alert("수정 실패")
				console.log(error);
			}) 
    },
		
}

index.init();