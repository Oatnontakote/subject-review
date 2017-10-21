<%-- 
    Document   : showSubject
    Created on : Oct 21, 2017, 10:56:17 PM
    Author     : Benny
--%>
<%@page import="Model.Subject"%>
<%@page import="Model.Review"%>
<%@page import="Model.UserProfile"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <h1>${sessionScope.subject.getSubject_id()}</h1>

    <h2>${sessionScope.subject.getSj_name_eng()}<br><br>
        ${sessionScope.subject.getSj_name_thai()}<br><br><h2>
            <h3>Description : </h3>${sessionScope.subject.getSj_description_eng()}<br><br>
            <h3>คำอธิบายรายวิชา : </h3>${sessionScope.subject.getSj_description_thai()}<br><br>
            <h3>score : </h3>${sessionScope.subject.getTotal_score()}<br><br><hr>

            <c:forEach var = "show" items = "${sessionScope.showReview}">
                ${show.getContent()}<br> 
                Score : ${show.getScore()}<br>
                Date : ${show.getDate()}<br>  
                User : ${show.getUser()}<br><hr>

            </c:forEach><br>




            <c:if test="${sessionScope.user.getRole() == 'student'}">
                <form action="insertReviewServlet" method="POST">
                    <textarea name="text" rows="4" cols="50">
                    </textarea><br>
                    <input type="checkbox" name="disable" value="ON" />Disable  username <br>
                    Score : <br>
                    <input type="radio" name="score" value="1" /> 1
                    <input type="radio" name="score" value="2" /> 2
                    <input type="radio" name="score" value="3" /> 3
                    <input type="radio" name="score" value="4" /> 4
                    <input type="radio" name="score" value="5" /> 5
                    <br><input type="submit" value="submit" />
                </form>

            </c:if>








            </html>