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
		
		<link rel="stylesheet" href="css/coreStyles.css" type="text/css">
		<link rel="stylesheet" href="css/workHistoryStyles.css" type="text/css">
		<link rel="stylesheet" href="css/skillStyles.css" type="text/css">
		<link rel="stylesheet" href="css/educationStyles.css" type="text/css">
		
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
			<s:url var="jobs_ajax" action="getITHistory">
				<s:param name="workHistory" value="%{selected}" />
			</s:url>
			<sj:a id="jobs_link" href="%{jobs_ajax}" targets="selected_content" class="menu unselected" onclick="menuNav(this)">
					Work History
			</sj:a>
			
			<s:url var="skills_ajax" action="getSkills">
				<s:param name="skillSet" value="%{selected}" />
			</s:url>
			<sj:a id="skills_link" href="%{skills_ajax}" targets="selected_content" class="menu unselected" onclick="menuNav(this)">
				Skills & Proficiency
			</sj:a>
			
			<s:url var="education_ajax" action="getEducation">
				<s:param name="schools" value="%{selected}" />
			</s:url>
			<sj:a id="education_link" href="%{education_ajax}" targets="selected_content" class="menu unselected" onclick="menuNav(this)">
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
				
				<%@ include file="aboutMe.jsp" %>
				
			</div>
		</div>
		
		<footer>
			<p>&copy; 2020. Designed, Developed, Hosted, and Maintained by <a href="mailto:edwardghuber@gmail.com">Edward G. Huber</a></p>
		</footer>
	
	</body>
</html>
