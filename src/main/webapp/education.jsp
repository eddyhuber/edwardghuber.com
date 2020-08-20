<%--
  Created by IntelliJ IDEA.
  User: Eddy
  Date: 7/22/2020
  Time: 3:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:iterator value="schools">
	<br/>
	<div id="school_card">
		<div id="school_name">
			<s:property value="schoolName"/>
		</div>
		
		<div id="school_details">
			<div id="degree_type" class="school_details_cell">
				<b><s:property value="degreeType"/></b>
			</div>
			
			<div id="degree_major" class="school_details_cell">
				<i> &nbsp; - <s:property value="degreeMajor"/></i>
			</div>
			
			<div id="school_location" class="school_details_right">
				<s:property value="location"/>
			</div>
			
			<div id="school_dates" class="school_details_right">
				<s:property value="startDate"/> &nbsp; - &nbsp; <s:property value="endDate"/>
			</div>
		</div>
		
		<div id="school_semesters">
			<br/>
			<s:iterator value="semesters">
				<div id="individual_semester">
					<div id="semester_name_year">
						<s:property value="key"/>
					</div>
					
					<div id="semester_course_list">
						<ul>
						<s:iterator value="value">
							<div id="course">
								<li><s:property value="key"/> &nbsp; --- &nbsp; <s:property value="value"/></li>
							</div>
						</s:iterator>
						</ul>
					</div>
				</div>
				<br/>
			</s:iterator>
		</div>
		
	</div>
</s:iterator>
<br/>


