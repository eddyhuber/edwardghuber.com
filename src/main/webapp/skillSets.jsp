<%--
  Created by IntelliJ IDEA.
  User: Eddy
  Date: 7/6/2020
  Time: 3:25 PM
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
<div id="skills_wrapper">
	
	<h2 id="lang_header" class="skills_header">Languages:
		<img class="arrow" src="images/arrow-visible.png"/>
		<img class="arrow" src="images/arrow-hidden.png" style="display:none"/>
	</h2>
	<div id="languages">
		<div id="database_lang" class="skills">
			<s:iterator value="skillSet">
				<s:if test="category=='Language'">
					<s:if test="type=='Database'">
						
						<%@ include file="skillCard.jsp" %>
						
					</s:if>
				</s:if>
			</s:iterator>
		</div>
		
		<div id="object_oriented_lang" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Language'">
				<s:if test="type=='Object-Oriented'">
					
					<%@ include file="skillCard.jsp" %>
				
				</s:if>
			</s:if>
		</s:iterator>
		</div>
		
		<div id="obj_ori_scr_lang" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Language'">
				<s:if test="type=='Object-Oriented, Scripting'">
					
					<%@ include file="skillCard.jsp" %>
				
				</s:if>
			</s:if>
		</s:iterator>
		</div>
		
		<div id="scripting_lang" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Language'">
				<s:if test="type=='Scripting'">
					
					<%@ include file="skillCard.jsp" %>
				
				</s:if>
			</s:if>
		</s:iterator>
		</div>
		
		<div id="other_lang" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Language'">
				<s:if test="type=='API'">
					
					<%@ include file="skillCard.jsp" %>
				
				</s:if>
			</s:if>
		</s:iterator>
		</div>
	</div>
	
	<br/>
	
	<h2 id="web_header" class="skills_header">Web Markup and Functionality:
		<img class="arrow" src="images/arrow-visible.png"/>
		<img class="arrow" src="images/arrow-hidden.png" style="display:none"/>
	</h2>
	<div id="web_func" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Web'">
				
				<%@ include file="skillCard.jsp" %>
			
			</s:if>
		</s:iterator>
	</div>
	
	<br/>
	
	<h2 id="tools_header" class="skills_header">Development Tools:
		<img class="arrow" src="images/arrow-visible.png"/>
		<img class="arrow" src="images/arrow-hidden.png" style="display:none"/>
	</h2>
	<div id="development" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Development'">
				
				<%@ include file="skillCard.jsp" %>
			
			</s:if>
		</s:iterator>
	</div>
	
	<br/>
	
	<h2 id="formats_header" class="skills_header">Data Formats:
		<img class="arrow" src="images/arrow-visible.png"/>
		<img class="arrow" src="images/arrow-hidden.png" style="display:none"/>
	</h2>
	<div id="data_formats" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Data Format'">
				
				<%@ include file="skillCard.jsp" %>
			
			</s:if>
		</s:iterator>
	</div>
	
	<br/>
	
	<h2 id="unix_header" class="skills_header">Unix Tools:
		<img class="arrow" src="images/arrow-visible.png"/>
		<img class="arrow" src="images/arrow-hidden.png" style="display:none"/>
	</h2>
	<div id="unix" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Unix'">
				
				<%@ include file="skillCard.jsp" %>
			
			</s:if>
		</s:iterator>
	</div>
	
	<br/>
	
	<h2 id="os_header" class="skills_header">Operating Systems:
		<img class="arrow" src="images/arrow-visible.png"/>
		<img class="arrow" src="images/arrow-hidden.png" style="display:none"/>
	</h2>
	<div id="op_sys" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Operating System'">
				
				<%@ include file="skillCard.jsp" %>
			
			</s:if>
		</s:iterator>
	</div>
	
	<br/>
	
	<h2 id="other_header" class="skills_header">Other:
		<img class="arrow" src="images/arrow-visible.png"/>
		<img class="arrow" src="images/arrow-hidden.png" style="display:none"/>
	</h2>
	<div id="other_skills" class="skills">
		<s:iterator value="skillSet">
			<s:if test="category=='Virtual Machine' || category=='Hardware'">
				
				<%@ include file="skillCard.jsp" %>
			
			</s:if>
		</s:iterator>
	</div>
	
	<br/>

</div>

</body>
</html>