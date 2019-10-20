<%-- 
    Document   : edit_artikel
    Created on : Oct 8, 2019, 7:50:31 AM
    Author     : eliteRaihan
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.application.model.ArtikelModel"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Latihan Java Web </title>
    </head>
    <body>
    <center><h1>Edit Artikel </h1></center>
    <form action="../../../ArtikelController?data=artikel&proses=update-artikel" method="POST">
        <table style="margin:20px auto;">
            <%
                String id = request.getParameter("id_artikel");
                ArtikelModel km = new ArtikelModel();
                km.setId_artikel(id);
                List<ArtikelModel> data = new ArrayList<ArtikelModel>();
                data = km.cariID();
                if (data.size() > 0) {
            %>
            <tr>
                <td>Link</td>
                <td><input type="text" name="link_img" value="<%=data.get(0).getLink_img()%>"></td>
            </tr>
            <tr>
                <td>Judul</td>
                <td><input type="text" name="judul" value="<%=data.get(0).getJudul()%>"></td>
            </tr>
            <tr>
                <td>Konten</td>
                <td><input type="text" name="konten" value="<%=data.get(0).getKonten()%>"></td>
                <td><input type="hidden" name="id_artikel" value="<%=data.get(0).getId_artikel()%>"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update"></td>
            </tr>
            <%}%>
        </table>
    </form>
</body>
</html>