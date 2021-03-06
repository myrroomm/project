<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/signup.css" rel="stylesheet" type="text/css">
<title>Change your info</title>
</head>
<body>
<%@ include file="header.jsp" %>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form:form commandName="memberVO" class="form-horizontal" role="form"  method="post">
                            <div class="form-group has-feedback"><div class="col-sm-2"><label for="inputEmail3" class="control-label">ID</label></div>
                                
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="id" name="id" value="${member.id }" readonly>
                                   <span style="color:red"><form:errors path="id" /> </span>
                                </div>
                                
                            <div class="col-sm-offset-2 col-sm-10"><p class="help-block">
							</p></div></div>
                            <div class="form-group has-feedback">
                                <div class="col-sm-2">
                                    <label for="inputEmail3" class="control-label">Password</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" name="password" id="password" placeholder="New Password">
                                </div>
                                <div class="col-sm-offset-2 col-sm-10">
                                    <p class="help-block">
Passwords must be at least 6 characters.</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label class="control-label">Name</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="New Name" name="name" value="${member.name }">
                                    <span style="color:red"><form:errors path="name" /> </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label class="control-label">Email</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="New Email" name="email" value="${member.email }">
                                    <span style="color:red"><form:errors path="email" /> </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label class="control-label">Phone</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="New Phone" name="phone" value="${member.phone }">
                                    <span style="color:red"><form:errors path="phone" /> </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-10 col-sm-offset-2 text-right">
                                    <button type="submit" class="active btn btn-success">Change</button>
                                    <button type="reset" class="active btn btn-warning">Reset</button>
                                    <button  type="button" class="active btn btn-default" onclick="location.href='<c:url value="/main"/>'">Cancel</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
       <%@include file="footer.jsp" %>
</body>
</html>