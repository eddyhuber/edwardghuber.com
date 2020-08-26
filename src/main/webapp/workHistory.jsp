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
	<div class="job_card">
		
		<div class="company_name">
			<h2><s:property value="companyName"/></h2>
		</div>
		
		<div class="job_details">
			<div class="job_start_date job_details_cell">
				<s:property value="startDate"/>
			</div>
			<div class="job_title job_details_cell">
				<b><s:property value="jobTitle"/></b>
			</div>
			<div class="job_location job_details_cell">
				<i><s:property value="location"/></i>
			</div>
			<div class="job_end_date job_details_cell">
				<s:property value="endDate"/>
			</div>
		</div>
		
		<br/>
		
		<div class="job_descriptions">
			<ul>
			<s:iterator value="jobDescriptions">
				<li><s:property /></li>
			</s:iterator>
			</ul>
		</div>
		
	</div>
</s:iterator>
<br/>
