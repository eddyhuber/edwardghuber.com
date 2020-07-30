<%--
  Created by IntelliJ IDEA.
  User: Eddy
  Date: 7/22/2020
  Time: 1:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div id="skill_card">
	<div class="skill_level">
		<s:if test="skillLevel==5">
			<img class="levels" src="images/skill_level_5.png" alt="Skill Level 5">
		</s:if>
		<s:elseif test="skillLevel==4">
			<img class="levels" src="images/skill_level_4.png" alt="Skill Level 4">
		</s:elseif>
		<s:elseif test="skillLevel==3">
			<img class="levels" src="images/skill_level_3.png" alt="Skill Level 3">
		</s:elseif>
		<s:elseif test="skillLevel==2">
			<img class="levels" src="images/skill_level_2.png" alt="Skill Level 2">
		</s:elseif>
		<s:elseif test="skillLevel==1">
			<img class="levels" src="images/skill_level_1.png" alt="Skill Level 1">
		</s:elseif>
		<s:else>
			<h3><s:property value="skillLevel"/></h3>
		</s:else>
	</div>
	<div class="skill_name">
		<s:property value="skillName"/>
	</div>
</div>