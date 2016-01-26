<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Spring 4 MVC File Upload Example</title>
    <link href="<c:url value='/resources/css/bootstrap.css' />"  rel="stylesheet" type="text/css"></link>
</head>
<body> 
 
    <div class="form-container">
        <h1>Spring 4 MVC File Upload Example </h1>
        <form:form method="POST" modelAttribute="fileBucket" enctype="multipart/form-data" class="form-horizontal">
         
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="file">Upload a file</label>
                    <div class="col-md-7">
                        <form:input type="file" path="file" id="file" class="form-control input-sm"/>
                        <div class="has-error">
                            <form:errors path="file" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
            
            
<div class="checkboxSet"> 

	<input type="checkbox" id="box20" name="box[]" value="20" checked="checked"> <label for="box20">MooTools FTW!</label> 

	<input type="checkbox" id="box21" name="box[]" value="21" checked="checked"> <label for="box21">Forge</label> 

	<input type="checkbox" id="box22" name="box[]" value="22" checked="checked"> <label for="box22">GitHub</label> 

	<input type="checkbox" id="box23" name="box[]" value="23" checked="checked"> <label for="box23">FireFox</label> 

	<input type="checkbox" id="box24" name="box[]" value="24"> <label for="box24">Safari</label> 

	<input type="checkbox" id="box25" name="box[]" value="25" checked="checked"> <label for="box25">Google Chrome</label> 

	<input type="checkbox" id="box26" name="box[]" value="26" checked="checked"> <label for="box26">Opera</label> 

	<input type="checkbox" id="box27" name="box[]" value="27"> <label for="box27">IE 6</label> 

	<input type="checkbox" id="box28" name="box[]" value="28"> <label for="box28">IE 7</label> 

	<input type="checkbox" id="box29" name="box[]" value="29"> <label for="box29">IE 8</label> 

</div> 
     
            <div class="row">
                <div class="form-actions floatRight">
                    <input type="submit" value="Upload" class="btn btn-primary btn-sm">
                </div>
            </div>
        </form:form>
        <a href="<c:url value='/welcome' />">Home</a>
    </div>
</body>
</html>