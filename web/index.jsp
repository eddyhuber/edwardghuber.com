<%--
Created by IntelliJ IDEA.
User: Eddy
Date: 4/30/2020
Time: 3:55 PM
To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Edward G Huber</title>
		<meta name="description" content="Edward G Huber Professional Site">
		<meta name="author" content="Edward G Huber">
		
		<link rel="stylesheet" href="css/styles.css" type="text/css">
		<script type="text/javascript" src="js/scripts.js"></script>
		<s:head />
		<sj:head />
	</head>
	
	<body>
		<div id="header">
			<h1>Edward G. Huber</h1>
			<h5><i>I can learn anything</i></h5>
		</div>
		
		<nav id="menu">
			<s:url var="jobs_ajax" action="getAllWorkHistory">
				<s:param name="workHistory" value="%{selected}" />
			</s:url>
			<sj:a id="jobs_link" href="%{jobs_ajax}" targets="selected_content" class="menu unselected" onclick="menuNav(this)">
					Work History
			</sj:a>
			
<%--			<s:url var="skills_ajax" action="getSkills">--%>
<%--				<s:param name="skillSet" value="%{selected}" />--%>
<%--			</s:url>--%>
			<sj:a id="skills_link" href="underConstruction.jsp" targets="selected_content" class="menu unselected" onclick="menuNav(this)">
				Skills & Proficiency
			</sj:a>
			
<%--			<s:url var="education_ajax" action="getEducation">--%>
<%--				<s:param name="education" value="%{selected}" />--%>
<%--			</s:url>--%>
			<sj:a id="education_link" href="underConstruction.jsp" targets="selected_content" class="menu unselected" onclick="menuNav(this)">
				Education & Certifications
			</sj:a>
			
<%--			<s:url var="projects_ajax" action="getprojects">--%>
<%--				<s:param name="personalProjects" value="%{selected}" />--%>
<%--			</s:url>--%>
			<sj:a id="projects_link" href="underConstruction.jsp" targets="selected_content" class="menu unselected" onclick="menuNav(this)">
				Personal Projects
			</sj:a>
			
			<sj:a id="about_link" href="aboutMe.jsp" targets="selected_content" class="menu selected" onclick="menuNav(this)">
				About
			</sj:a>
		</nav>
		
		<div id="main_content">
			<div id="selected_content">
				<div id="initial_content" style="text-align: center">
					Intelligent, goal-oriented software engineer with 10 years of professional experience (15 years as a hobby) in the Information Technology space. Specialties include various popular programming and database languages, as well as product support and troubleshooting. A strategic and efficient engineer with a diverse background in various IT fields; development, deployment, management, systems administration, and support. A keen ability to delve into problems and move step by step until the root cause is found, and apply the needed fix or propose multiple solutions if required.
				</div>
			</div>
		</div>
		
		<%--		<form action="hello">--%>
		<%--			&lt;%&ndash;@declare id="name"&ndash;%&gt;<label for="name">Enter your name</label><br/>--%>
		<%--			<input type="text" name="name"/>--%>
		<%--			<input type="submit" value="Submit"/>--%>
		<%--		</form>--%>
		
		<footer>
			<p>&copy; 2020. Designed, Developed, Hosted, and Maintained by <a href="mailto:edwardghuber@gmail.com">Edward G. Huber</a></p>
		</footer>
	
	</body>
</html>
