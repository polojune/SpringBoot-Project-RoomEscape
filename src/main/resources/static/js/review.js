let index = {
		
		init:function(){
		
			$("#btn-review").on("click",()=>{
		   
				//콜백 스텍
				this.save();
			});
		},
		
    save:function(){
    
			let data = {
				storeId:$("#storeId").val(),
				userId:$("#userId").val(),
				content:$("#content").val()	 
				 
			 };
			
			alert(data.storeId);
			alert(data.userId); 
			$.ajax({
				type:"PUT",
				url:"/review/",
				data:JSON.stringify(data),
				contentType:"application/json; charset=utf-8", 
				dataType:"json"
			}).done(function(resp){
					if(resp.statusCode == 0){
						alert("댓글 작성 실패");
					} else{
					       console.log(resp);
						   alert("댓글 작성 성공"); 
						   location.href="/store/"+data.storeId;
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