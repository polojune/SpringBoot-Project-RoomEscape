let index = {
		
		init:function(){
			$("#btn-update").on("click",()=>{
		   
				//콜백 스텍
				this.update();
			});
		},
		
    update:function(){
    	alert("나클릭됨?");
			let data = {
				id:$("#id").val(),
				title:$("#title").val(),	 
				content:$("#content").val()	 
				 
			 };
			 
			$.ajax({
				type:"PUT",
				url:"/board/"+data.id,
				data:JSON.stringify(data),
				contentType:"application/json; charset=utf-8", 
				dataType:"json"
			}).done(function(resp){
			       console.log(resp);
				   alert("수정 성공"); 
				   location.href="/board/update/"+data.id;
			   
				console.log(resp);
			//console.log(JSON.parse(resp));
			}).fail(function(error){
				
				alert("수정 실패")
				console.log(error);
			}) 
    },
		
}

index.init();