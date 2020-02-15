<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <style>
 <%@ include file="/WEB-INF/css/style.css"%>
 </style>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	   $(document).ready(function(){
		 $("#select_outer").change(function(){
			 var ticketchange = $("#select_outer").val();
			 console.log("ticketerror : "+ticketchange);
		 });
		 
		 $("#submitbutton").click(function(){
				alert("hello");
				$.ajax({
					url : 'displayresult',
					dataType: 'json',
					data : {
						ticketoption : $("#select_outer").val()
					},
					success : function(responseText) {
						console.log("return value : "+responseText);
						//$('#ajaxGetUserServletResponse').text(responseText);
					},
				
				error: function(err){
					console.log("##########################");
				}
			 
		 });
		 
		 
	   });
	   });
	 </script>
<title>Insert title here</title>
</head>
<body>
 <div id="most_outer">
 <div id="ticket_text">Ticket Tracker</div>
 <div id="expandheight"></div>
 
 <div id="center_most_outer">
 <div id="middle_outer">
  <div style="border:solid 0px white;margin-top:50px;padding-left:10px;font-size:30px;letter-spacing: 2px;">Select the Option !</div>             
  <form action="displayresult" method="post">
	 <select id="select_outer" name="ticketoption">
	  <option value="alltickets">Display All Tickets</option>
	  <option value="desireticket">Desire ticket</option>	
	  <option value="otherwork">Other Work</option>	
	  <option value="weeklystatus">Weekly Status</option>
	  <option value="monthlystatus">Monthly Status</option>
	 </select> 
	 <br>  
	 
	 
	 
	 <input type="submit" value="Submit" id="submitbutton">
 </form>
 </div>
 
 </div>
 
 </div>
</body>
</html> 