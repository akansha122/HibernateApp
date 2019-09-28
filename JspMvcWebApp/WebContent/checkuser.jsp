<!-- //usebean is a tag of jsp we use this tag to create the objcet of java
bean class and it is refrence by ob in this -->

<jsp:useBean id="ob" class="com.zensar.models.LoginBean" scope="request"></jsp:useBean>

<!-- it is like setUserName called by web container(it is translated into
setter method) -->

<jsp:setProperty property="username" name="ob" />
<jsp:setProperty property="passwd" name="ob" />


<%
	//invoke busniess logic
	if (ob.validateUser()) {
%>

<jsp:forward page="welcome.jsp">
	<jsp:param value="core java" name="book1" />
	<jsp:param value="spring" name="book2"/>
</jsp:forward>

<% } 
	else
{ %>
<p>Sorry! Invalid username/password</p>
<jsp:include page="login.jsp" />

<% }
%>
