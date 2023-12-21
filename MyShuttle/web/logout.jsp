<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.getSession().invalidate();
   getServletContext().getRequestDispatcher("/signin.jsp").forward(request, response);
%>
