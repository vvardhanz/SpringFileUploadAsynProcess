<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
        File to upload: <input type="file" name="file"><br/>
        Name: <input type="text" name="name"><br ><br />
        <input type="submit" value="upload"> Press here to upload file!
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
