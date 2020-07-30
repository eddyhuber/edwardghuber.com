<%--
  Created by IntelliJ IDEA.
  User: Eddy
  Date: 5/18/2020
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%--<s:action name="getAllWorkHistory" var="ITOnly"/>--%>
<%--<s:radio id="work_history_type" value="ITOnly" list="%{#{'true':'All Work History', 'false':'IT Only'}}"></s:radio>--%>

<s:iterator value="workHistory">
	<br/>
	<div id="job_card">
		
		<div id="company_name">
			<h2><s:property value="companyName"/></h2>
		</div>
		
		<div id="job_details">
			<div id="start_date" class="column">
				<s:property value="startDate"/>
			</div>
			
			<div id="title_location" class="column">
				<div id="job_title">
					<i><s:property value="jobTitle"/></i>
				</div>
				
				<div id="location">
					<s:property value="location"/>
				</div>
			</div>
			
			<div id="end_date" class="column">
				<s:property value="endDate"/>
			</div>
		</div>
		
		<br/>
		
		<div id="descriptions">
			<ul>
			<s:iterator value="jobDescriptions">
				<li><s:property /></li>
			</s:iterator>
			</ul>
		</div>
		
	</div>
</s:iterator>
<br/>
