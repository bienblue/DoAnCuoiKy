<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="overflow: hidden;">
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/formcontent.css">
<meta charset="ISO-8859-1">
<title>View Contents</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
	<div class="add-content">

		<h1 class="text-add-content">Add Content</h1>

		<p style="margin-left: 30px; padding: 0; color: green">${message}</p>

		<form class="form-add-content" id="addcontent" name="formcontent"
			onsubmit="return validate(); title_Verify(); brief_Verify(); content_Verify()"
			action="AddCt" method="post">
			<p class="header">Content Form Elements</p>

			<div class="row-form">
				<label for="title">Title</label> <input type="text" class="textbox"
					id="title" name="title" autocomplete="off"
					placeholder="Enter the title" maxlength="200">
				<div id="title_error">Please fill your title</div>
				<div id="title_error1">Title requires 10 characters</div>
			</div>

			<div class="row-form">
				<label for="brief">Brief</label>
				<textarea name="brief" id="brief" rows="3" autocomplete="off"
					class="textbox" maxlength="150"></textarea>
				<div id="brief_error">Please fill your brief</div>
				<div id="brief_error1">Brief requires 30 characters</div>
			</div>

			<div class="row-form">
				<label for="content">Content</label>
				<textarea name="content" id="content" rows="9" autocomplete="off"
					class="textbox" maxlength="1000"></textarea>
				<div id="content_error">Please fill your content</div>
				<div id="content_error1">Content requires 50 characters</div>
			</div>

			<div class="row-form">
				<button class="button" type="submit" name="submit"
					onclick="validate(); title_Verify(); brief_Verify(); content_Verify()"
					value="submit">Submit Button</button>
				<button class="button" type="reset">Reset Button</button>
			</div>
		</form>


	</div>
	<script language="javascript"
		src="<%=request.getContextPath()%>/js/formcontent.js"></script>

</body>
</html>
