<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/bootstrap.css' />"  rel="stylesheet" type="text/css"></link>
    <script type="text/javascript" src="/AsynExampleProject/resources/js/jquery-2.2.0.js"></script>
    <script type="text/javascript" src="/AsynExampleProject/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/AsynExampleProject/resources/js/multiple-select.js"></script>
    <link rel="stylesheet" href="<c:url value='/resources/css/multiple-select.css' />" type="text/css"/>
    <!-- Include the plugin's CSS and JS: -->
	<script type="text/javascript" src="/AsynExampleProject/resources/js/bootstrap-multiselect.js"></script>
	<!--<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-multiselect.css' />" type="text/css"/> -->
</head>
<body>
<h1>
	Hello world!  
</h1>
        File to upload: <input type="file" name="file"><br/>
        Name: <input type="text" name="name"><br ><br />
        <input type="submit" value="upload"> Press here to upload file!
<P>  The time on the server is ${serverTime}. </P>
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
<!--
<div>
   <select multiple="multiple">
        <option value="1">January</option>
		<option value="1">feubary</option>
		<option value="2">march</option>
		<option value="3">april</option>
		<option value="4">may</option>
		<option value="5">june</option>
        <option value="6">july</option>
    </select>
</div>
-->
<div>
   <select id="example-getting-started" multiple="multiple">
        <option value="1">January</option>
		<option value="1">feubary</option>
		<option value="2">march</option>
		<option value="3">april</option>
		<option value="4">may</option>
		<option value="5">june</option>
        <option value="6">july</option>
    </select>
</div>
    
    
<!--
<script>
$("select").multipleSelect({
    placeholder: "Here is the placeholder"
});
</script>
<!-- Initialize the plugin: -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#example-getting-started').multiselect();
    });
    alert("multiselect");
</script>
</body>

</html>
