<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.application.model.ArtikelModel"%>

<!-- head -->
<jsp:include page="head.jsp" />

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <!-- Navbar -->
        <jsp:include page="navbar.jsp"/>

        <!-- Main Sidebar Container -->
        <jsp:include page="aside.jsp"/>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <jsp:include page="contentHeader.jsp" >
                <jsp:param name="halaman" value="Artikel" />
            </jsp:include>

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-12">

                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">DataTable with default features</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <center>
                                    <button type="button" class="btn btn-block btn-primary btn-md col-1" onclick="window.location.href='../../../ArtikelController?data=artikel&proses=input-artikel'">Tambah</button>
                                </center>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Judul</th>
                                            <th>Poster</th>
                                            <th>Artikel</th>
                                            <th>Tanggal Kegiatan</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <%
                                        ArtikelModel km = new ArtikelModel();
                                        List<ArtikelModel> data = new ArrayList<ArtikelModel>();
                                        String ket = request.getParameter("ket");
                                        if (ket == null) {
                                            data = km.tampil();
                                        }
                                        for (int x = 0; x < data.size(); x++) {
                                        %>
                                        <tr>
                                            <td><%=x + 1%></td>
                                            <td><%=data.get(x).getJudul()%></td>
                                            <td><%=data.get(x).getLink_img()%></td>
                                            <td><%=data.get(x).getKonten()%></td>
                                            <td><%=data.get(x).getTgl_kegiatan()%></td>
                                            <td>
                                                <a href="../../../ArtikelController?proses=edit-artikel&id_artikel=<%=data.get(x).getId_artikel()%>">Edit</a> 
                                            </td>
                                            <td>
                                                <a href="../../../ArtikelController?proses=hapus-artikel&id_artikel=<%=data.get(x).getId_artikel()%>">Hapus</a>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <th>No</th>
                                            <th>Judul</th>
                                            <th>Poster</th>
                                            <th>Artikel</th>
                                            <th>Tanggal Kegiatan</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Script -->
        <jsp:include page="../../footer.jsp"/>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- Script -->
    <jsp:include page="script.jsp"/>

</body>
</html>