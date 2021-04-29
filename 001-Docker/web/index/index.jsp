<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <%@ page import="java.io.BufferedReader"%>
    <%@ page import="java.io.IOException"%>
    <%@ page import="java.io.InputStreamReader"%>
    <%@ page import="java.lang.System"%>
    <%
        String serverName = System.getenv("ServerName");

        String result = "";
        String[] cmds={"curl","server:8888"};
        ProcessBuilder process = new ProcessBuilder(cmds);
        Process p;
        try {
            p = process.start();
            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            StringBuilder builder = new StringBuilder();
            String line = null;
            while ((line = reader.readLine()) != null) {
                builder.append(line);
                builder.append(System.getProperty("line.separator"));
            }
            result =  builder.toString();

        } catch (IOException e) {
            System.out.print("error");
            e.printStackTrace();
        }
    %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>I am <%=serverName%></title>
    </head>

    <body>
        -----------welcome------------
    <br/>
        env: I am <%=serverName%>
    <br/>
        query nodejs result: <%=result%>
    </body>
</html>