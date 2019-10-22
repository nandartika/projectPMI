/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.application.controller;

import com.application.model.lokasiModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kartika
 */
public class lokasiController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet lokasiController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet lokasiController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String proses = request.getParameter("proses");
        String action = request.getParameter("action");

        if (proses.equals("input-lokasi")) {
            response.sendRedirect("admin/pages/forms/lokasi_form.jsp?proses=tambah");
            return;
        } else if (proses.equals("edit-lokasi")) {
            response.sendRedirect("admin/pages/forms/lokasi_form.jsp?proses=edit&id_artikel=" + request.getParameter("id_artikel"));
            return;
        } else if (proses.equals("hapus-lokasi")) {
            lokasiModel hm = new lokasiModel();
            hm.setId_lokasi(request.getParameter("id_lokasi"));
            hm.hapus();
            response.sendRedirect("admin/pages/tables/lokasi_table.jsp");
        }

        // processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String data = request.getParameter("data");
        String proses = request.getParameter("proses");
        
        if (data != null) {
            if (data.equals("lokasi")) {
                lokasiModel am = new lokasiModel();
                am.setId_lokasi(request.getParameter("id_lokasi"));
                am.setNamaTempat(request.getParameter("namaTempat"));
                am.setProvinsi(request.getParameter("provinsi"));
                am.setKota(request.getParameter("kota"));
                am.setAlamat(request.getParameter("alamat"));
                am.setTlpn(request.getParameter("tlpn"));
                am.setEmail(request.getParameter("email"));
                am.setStatus(Integer.parseInt(request.getParameter("status")));

                if (proses.equals("input-lokasi")) {
                    am.simpan();
                } else if (proses.equals("update-lokasi")) {
                    am.update();
                } else if (proses.equals("hapus-lokasi")) {
                    am.hapus();
                }

                response.sendRedirect("admin/pages/tables/lokasi_table.jsp");
            }
        }
        //processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
