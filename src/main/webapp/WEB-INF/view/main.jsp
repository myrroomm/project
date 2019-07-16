<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/main.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
<form action="<c:url value="/main" />" method="post" class="form-inline" role="form">
<input type="text" id="like" value="${like }" hidden="true">
      <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="jumbotron">
                            <h1>HappyStory♣</h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-justified nav-pills">
                            <li class="active">
                                <a href="<c:url value="/main"/>">Home</a>
                            </li>
                            <li class="active">
                                <a href="#">Profile</a>
                            </li>
                            <li class="active">
                                <a data-toggle="modal" href="<c:url value="/write"/>" data-target="#modal-testNew" role="button" data-backdrop="static" >Write</a>
                             <div id="modal-testNew" class="modal fade" tabindex="-1" role="dialog" >
						    <div class="modal-dialog" style="width:700px;height:1000px">
						    <div class="modal-content"></div></div></div>

                            </li>
                            <li class="active dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <i class="fa fa-border fa-caret-down fa-fw pull-right text-muted"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li>
                                        <a href="<c:url value="/signup"/>">Sign up</a>
                                    </li>
                                    <c:if test="${member == null }">
                                    <li>
                                        <a href="<c:url value="/login"/>">Login</a>
                                    </li>
                                    </c:if>
                                    <c:if test="${member != null }">
                                    <li>
                                        <a href="<c:url value="/logout"/>">Logout</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="<c:url value="/accountSetting"/>">Account Setting</a>
                                    </li>
                                    </c:if>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">One more separated link</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div><br>
        <div class="col-md-8"></div><div class=" col-md-4 text-left">
        <input type="text" class="form-control" name ="search" placeholder="Search your friends"><button class="btn btn-default btn-xs" type="submit"><img alt="search" src="img/search.jpg" width="30" height="30"></button>
        &nbsp;&nbsp;&nbsp;<a href="<c:url value="/requestList"/>"><img alt="alert" src="img/notification.png" width="30" height="30">&nbsp;&nbsp;<strong>${pending }</strong></a></div>
        
        </div>
        <div class="col-md-6">
		</div>
        <div class="container">
        <div class="section"><div class="container"><div class="row"><div class="col-md-2"> 
        
        </div>
        
        <div class="col-md-7 text-center" style="white-space:pre;">
        <c:if test="${memberList != null }">
        <h4 class="text-center">Search List</h4>
         <table class="table" style="margin-left: auto; margin-right: auto; margin-top: 15px;">
         <thead>
         	<tr>
         		<td class="text-left">ID</td> <td class="text-center">Name</td> <td class="text-right">Friend request</td>
         	</tr>
         </thead>
        <c:forEach var="list" items="${memberList }" varStatus="loop">
        <tr>
        <td class="text-left"><span style="color:blue">${list.id}</span></td><td class="text-center"> ${list.name }</td><td class="text-right"><button class="btn btn-default" type="button" onclick="location.href='<c:url value="/friendRequest/${list.id }"/>'">Request</button><td>
        </c:forEach>
        </table>
        <h4 class="text-center">Postings</h4>
        </c:if>
        <c:forEach var="board" items="${boardList }" varStatus="loop">
        <table class="table" style="margin-left: auto; margin-right: auto;">
		<thead>
		<tr>
			<th><h4><strong>${board.id }</strong></h4></th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td class="text-left" colspan="2">${board.regDate }</td>
		</tr>
		<tr>
			<td class="text-left " colspan="2">${board.content }

		<c:if test="${board.image != null }">
			<img src="uploads/${board.image }" width="400" height="300">
		</c:if>
			</td>
		</tr>
		<tr>
			<td class="text-left"><button class="btn btn-default" type="button" id="btn${board.seq }" >


			<img id ="img${board.seq }"  alt="like" src="img/like.png" width="20" height="20">&nbsp;&nbsp;
			<strong id="likes${board.seq }">${board.num }</strong></button></td>
			<td class="text-right"><button class="btn btn-danger" type="button" onclick="location.href='<c:url value="/boardDelete/${board.seq }"/>'">삭제</button></td>
		</tr>
		<tr>
		<td class="text-right" colspan="2">
			<textarea class="form-control" style="resize:none" cols="58" rows="1" placeholder="Write a commnet..." name="comment"></textarea>&nbsp;&nbsp;<button class="btn btn-default">Send</button></td>
		</tr>
		</tbody>
       </table>
       <hr>
	</c:forEach>
        </div>
        <div class="col-sm-3">
         <c:if test="${friendList != null }">
        <h1>Friends list</h1> <br><br>
         <table class="table" style="margin-left: auto; margin-right: auto; margin-top: 15px;">
         <thead>
         	<tr>
         		<td class="text-left">ID</td> <td class="text-center">Name</td> <td class="text-right">Chat</td>
         	</tr>
         </thead>
        <c:forEach var="friend" items="${friendList }" varStatus="loop">
        <tr>
        <td class="text-left"><span style="color:blue">${friend.id}</span></td><td class="text-center"> ${friend.name }</td><td class="text-right"><button class="btn btn-default" type="button" onclick="location.href='<c:url value="#"/>'">Chat</button><td>
        </c:forEach>
        </table>
        </c:if>
       </div></div>
         </div></div>
       </div>
        
        <footer class="section section-primary">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Footer header</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                    <div class="col-sm-6">
                        <p2 class="text-info text-right">
                            <br>
                            <br>
                        </p>
                        <div class="row">
                            <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 hidden-xs text-right">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    <script>
    	
    
    $("[id^=btn]").on('click', function(event){
    	var id = $(this).attr("id"); 
    	var seq = id.replace("btn", "");
    	
    	$.ajax({
    		url: "<c:url value="/boardLike"/>",
    		type: "post", 
    		data: 'seq='+seq,
    		success: function(data){
    		
    			if(data.check == 0){
    				$('#img'+seq).attr('src', 'img/heart.png');
    				$('#likes'+seq).text(data.likes);
    			}else if(data.check ==1){
    				$('#img'+seq).attr('src', 'img/like.png');
    				$('#likes'+seq).text(data.likes);
    			}
    			if(data.msg != null){
    				alert(data.msg);
    				location.href='<c:url value="/login"/>';
    			}
    		}
    	})
    	})

    </script>
</form>
</body>
</html>