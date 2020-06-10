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
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Edward G Huber</title>
		<meta name="description" content="Edward G Huber Professional Site">
		<meta name="author" content="Edward G Huber">
		
		<link rel="stylesheet" href="css/styles.css" type="text/css">
		<s:head />
		<sx:head />
	</head>
	
	<body>
	<!-- script src="js/scripts.js"></script -->
	
	<div id="header">
		<h1>Edward G. Huber</h1>
		<h5><i>I can learn anything</i></h5>
	</div>
	
	<div id="main_content">
<%--		<div id="menu">--%>
<%--			<div id="work_history box">--%>
<%--				<p>Work History</p>--%>
<%--			</div>--%>
<%--			<div id="skills box">--%>
<%--				<p>Skills</p>--%>
<%--			</div>--%>
<%--			<div id="education box">--%>
<%--				<p>Education & Certifications</p>--%>
<%--			</div>--%>
<%--			<div id="personal_projects box">--%>
<%--				<p>Personal Projects</p>--%>
<%--			</div>--%>
<%--		</div>--%>
		
		<div id="selected_content">
			<s:form>
				<sx:tabbedpanel id="tabContainer">
					
					<sx:div label="All Work History">
						<s:url var="jobs" action="getAllWorkHistory">
							<s:param name="workHistory" value="%{selected}" />
						</s:url>
						<sx:div href="%{jobs}" delay="100">
							Loading Jobs
						</sx:div>
					</sx:div>
					
					<sx:div label="IT Only">
						<s:url var="ITJobs" action="getITHistory">
							<s:param name="workHistory" value="%{selected}" />
						</s:url>
						<sx:div href="%{ITJobs}" delay="100">
							Loading IT Jobs
						</sx:div>
					</sx:div>
					
				</sx:tabbedpanel>
			</s:form>
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
