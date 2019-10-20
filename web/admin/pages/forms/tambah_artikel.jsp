<%-- 
    Document   : tambah_artikel
    Created on : Oct 8, 2019, 7:31:15 AM
    Author     : eliteRaihan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Latihan Java Web </title>
    </head>
    <body>
    <center><h1>Input User </h1></center>
    <form action="../../../ArtikelController?data=artikel&proses=input-artikel" method="POST">
        <table style="margin:20px auto;">
            <tr>
                <td>Link</td>
                <td><input type="text" name="link_img"></td>
            </tr>
            <tr>
                <td>Judul</td>
                <td><input type="text" name="judul"></td>
            </tr>
            <tr>
                <td>Konten</td>
                <td><input type="text" name="konten"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Tambah"></td>
            </tr>
        </table>
    </form>
</body>
</html>