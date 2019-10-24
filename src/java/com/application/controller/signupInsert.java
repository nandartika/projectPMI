/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.util.Enumeration;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.net.*;

/**
 *
 * @author eliteRaihan
 */
public class signupInsert extends HttpServlet {

    Connection theConnection;
    private ServletConfig config;

    @Override
    public void init(ServletConfig config)
            throws ServletException {
        this.config = config;
    }

    @Override
    public void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession(true);
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<HTML><HEAD><TITLE>Registered User List.</TITLE>");
        out.println("</HEAD>");
        out.println("<BODY bgColor=blanchedalmond text=#008000 topMargin=0>");
        out.println("<P align=center><FONT face=Helvetica><FONT color=fuchsia style=\"BACKGROUND-COLOR: white\"><BIG><BIG>Registered User List.</BIG> </BIG> </FONT> </P>");
        out.println("<P align=center>");
        out.println("<TABLE align=center border=1 cellPadding=1 cellSpacing=1 width=\"75%\">");
        out.println("<TR>");
        out.println("<TD>f_nama_user</TD>");
        out.println("<TD>f_nik</TD>");
        out.println("<TD>f_golongan_darah</TD>");
        out.println("<TD>f_email</TD>");
        out.println("<TD>f_password</TD>");
        out.println("<TD>f_tgl_lahir</TD>");
        out.println("<TD>f_jkelamin</TD>");
        out.println("<TD>f_pekerjaan</TD>");
        out.println("<TD>f_nomor_hp</TD>");
        out.println("<TD>f_alamat</TD>");
        out.println("</TR>");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            theConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/_donordarah?serverTimezone=UTC", "root", "");
            Statement theStatement = theConnection.createStatement();

            // retrieve the value supplied by the user
            String _nama = req.getParameter("nama");
            String _nik = req.getParameter("nik");
            String _email = req.getParameter("email");
            String _password = req.getParameter("password");
            String _tgl_lahir = req.getParameter("tgl_lahir");
            String _jkelamin = req.getParameter("jkelamin");
            String _pekerjaan = req.getParameter("pekerjaan");
            String _no_hp = req.getParameter("no_hp");
            // String _alamat = request.getParameter("alamat");
            
            String f_nama_user =    "\'" + _nama + "\'";
            String f_nik =          "\'" + _nik + "\'";
            String f_email =        "\'" + _email + "\'";
            String f_password =     "\'" + _password + "\'";
            String f_tgl_lahir =    "\'" + _tgl_lahir + "\'";
            String f_jkelamin =     "\'" + _jkelamin + "\'";
            String f_pekerjaan =    "\'" + _pekerjaan + "\'";
            String f_nomor_hp =     "\'" + _no_hp + "\'";

            String nama_tabel = "t_user";
            String field_tabel = "(" + "f_nama_user, f_nik, f_email, f_password, f_tgl_lahir, f_jkelamin, f_pekerjaan, f_nomor_hp" + ")";
            String values_tabel = "(" + f_nama_user + "," + f_nik + "," + f_email + "," + f_password + "," + f_tgl_lahir + "," + f_jkelamin + "," + f_pekerjaan + "," + f_nomor_hp + ")";
            
            String insert = "INSERT INTO " + nama_tabel + " " + field_tabel + "VALUES" + values_tabel + ";";
            theStatement.execute( insert );

            ResultSet theResult = theStatement.executeQuery("select * from t_user");   //Select all records from emaillists table.

            while (theResult.next()) //Fetch all the records and print in table
            {
                out.println();
                out.println("<TR>");
                out.println("<TD>" + theResult.getString("f_nama_user") + "</TD>");
                out.println("<TD>" + theResult.getString("f_nik") + "</TD>");
                out.println("<TD>" + theResult.getString("f_golongan_darah") + "</TD>");
                out.println("<TD>" + theResult.getString("f_email") + "</TD>");
                out.println("<TD>" + theResult.getString("f_password") + "</TD>");
                out.println("<TD>" + theResult.getString("f_tgl_lahir") + "</TD>");
                out.println("<TD>" + theResult.getString("f_jkelamin") + "</TD>");
                out.println("<TD>" + theResult.getString("f_pekerjaan") + "</TD>");
                out.println("<TD>" + theResult.getString("f_nomor_hp") + "</TD>");
                out.println("<TD>" + theResult.getString("f_alamat") + "</TD>");
                out.println("</TR>");
            }
            theResult.close();  //Close the result set
            theStatement.close();   //Close statement
            theConnection.close();  //Close database Connection
        } catch (Exception e) {
            out.println(e.getMessage());    //Print trapped error.
        }
        out.println("</TABLE></P>");
        out.println("<P>&nbsp;</P></FONT></BODY></HTML>");
    }

    @Override
    public void destroy() {

    }
}
