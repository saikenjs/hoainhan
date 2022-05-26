<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- start the middle column -->

<section>
    <h1>Student Searching</h1>
    <form action="search-student" method="POST">
        <table stype="background-color:#00FF00">
            <tr>
                <td class="form-lable">Student Criteria</td>
                <td>
                    <select name="sCriteria">                        
                        <option value="ID">ID</option>
                        <option value="Name">Name</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="form-lable">Enter search value</td>
                <td><input type="text" name="sValue" size="25"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <input type="submit" name="action" value="Search"/>
                    <input type="reset" value="Reset"/>
                </td>
            </tr>
        </table>        
    </form>
    <!-- jstl -->
    <c:if test="${sCriteria!=null && sValue!=null}">
        <c:if test="${!searchList.isEmpty()}">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Date of Birth</th>
                        <th>Action</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${searchList}" var="s">
                        <tr>
                            <td>${s.getId()}</td>
                            <td>${s.getName()}</td>
                            <td>${s.getGender()}</td>
                            <td>${s.getDob()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </c:if>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
