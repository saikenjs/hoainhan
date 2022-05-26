<%-- 
    Document   : list
    Created on : May 20, 2022, 5:37:55 PM
    Author     : USER
--%>

<%@page import="model.StudentList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<section id="main-contain" class="column">
    <h1>Students List</h1>
    <form action="StudentServlet" method="GET">
        <input type="hidden" name="command" value="LIST"/>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                </tr>
            </thead>
            <tbody>
                <%
                HttpSession ss = request.getSession();
                StudentList sList = (StudentList) ss.getAttribute("sList");
                ArrayList<Student> myList = sList.getList();
                for (Student s : myList) {%>
                <tr>
                    <td><%=s.getId()%></td>
                    <td><%=s.getName()%></td>
                    <td><%=s.getGender()%></td>
                    <td><%=s.getDob()%></td>
                </tr>
                <% }
                %>
            </tbody>
        </table>
    </form>
</section>


<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

