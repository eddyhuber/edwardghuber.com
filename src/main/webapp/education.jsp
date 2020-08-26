<%--
  Created by IntelliJ IDEA.
  User: Eddy
  Date: 7/22/2020
  Time: 3:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
	<script type="text/javascript" src="webjars/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/jqScripts.js"></script>
</head>

<body>
<div id="education_wrapper">
	<s:iterator value="schools" status="status">
		<br/>
		<div class="school_card">
			<div class="school_name">
				<s:property value="schoolName"/>
			</div>
			
			<div class="school_details">
				<div class="degree_type school_details_cell">
					<b><s:property value="degreeType"/></b>
				</div>
				
				<div class="degree_major school_details_cell">
					<i> &nbsp; - <s:property value="degreeMajor"/></i>
				</div>
				
				<div class="school_location school_details_right">
					<s:property value="location"/>
				</div>
				
				<div class="school_dates school_details_right">
					<s:property value="startDate"/> &nbsp; - &nbsp; <s:property value="endDate"/>
				</div>
			</div>
			
			<div class="school_semesters">
				<br/>
				<s:iterator value="semesters">
					<div class="individual_semester">
						<div class="semester_name_year">
							<s:property value="key"/> &nbsp;
							<img class="arrow" src="images/arrow-visible.png"/>
							<img class="arrow" src="images/arrow-hidden.png" style="display:none"/>
						</div>
						
						<div class="semester_course_list">
							<ul>
							<s:iterator value="value">
								<div class="course">
									<s:if test="key==null || key==''">
										<li><s:property value="value"/></li>
									</s:if>
									<s:else>
										<li><s:property value="key"/> &nbsp; --- &nbsp; <s:property value="value"/></li>
									</s:else>
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
</div>
</body>


