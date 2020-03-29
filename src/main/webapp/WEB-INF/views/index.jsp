
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
		 
		 <form action="saveNote" method="POST">
		NoteID: <input type="text" name="noteId"> <br /> 
		Title: <input type="text" name="noteTitle" /> <br/>
		Content: <input type="text" name="noteContent" /> <br/>
		Status: <input type="text" name="noteStatus" /> <br/>
		<input type="submit" value="Send" /> <br/>
	</form>
		 

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<table>
         <c:forEach items="${list}" var="saveNote">
			<tr>
				<td>${saveNote.noteId}</td>
				<td>${saveNote.noteTitle}</td>
				<td>${saveNote.noteContent}</td>
				<td>${saveNote.noteStatus}</td>
			</tr>
		</c:forEach>
   </table>
	<form action="deleteNote" method="GET">
		NoteId: <input type="text" name="noteId">
		<input type="submit" value="delete"/>
		</form>	
</body>
</html>