<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.application.model.ArtikelModel"%>

<!-- head -->
<jsp:include page="head.jsp" />

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <!-- Navbar -->
        <jsp:include page="../../navbar.jsp"/>

        <!-- Main Sidebar Container -->
        <jsp:include page="../../aside.jsp" >
            <jsp:param name="isi" value="lain" />
        </jsp:include>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>DataTables</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">DataTables</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

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
                                    <a class="tambah" href="../../../ArtikelController?data=artikel&proses=input-artikel">Tambah</a>
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
        <footer class="main-footer">
            <div class="float-right d-none d-sm-block">
                <b>Version</b> 3.0.0-rc.3
            </div>
            <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
            reserved.
        </footer>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="../../plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- DataTables -->
    <script src="../../plugins/datatables/jquery.dataTables.js"></script>
    <script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
    <!-- page script -->
    <script>
        $(function () {
            $("#example1").DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
            });
        });
    </script>
</body>
</html>
