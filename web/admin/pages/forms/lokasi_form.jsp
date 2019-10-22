<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.application.model.ArtikelModel"%>

<!-- head -->
<jsp:include page="head.jsp" />

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar -->
        <jsp:include page="navbar.jsp" />

        <!-- Main Sidebar Container -->
        <jsp:include page="aside.jsp" />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

            <!-- breadcrumbs -->
            <jsp:include page="contentHeader.jsp" >
                <jsp:param name="halaman" value="Lokasi" />
            </jsp:include>

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- SELECT2 EXAMPLE -->
                    <div class="card card-default">
                        <div class="card-header">
                            <h3 class="card-title">Lokasi PMI/RS</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
                            </div>
                        </div>

                        <%
                        String proses = request.getParameter("proses");
                        if (proses.equals("tambah")) {
                        %>
                        <!-- /.card-header -->
                        <form role="form" action="../../../ArtikelController?data=artikel&proses=input-artikel" method="POST">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Nama PMI/RS</label>
                                    <input type="text" class="form-control" placeholder="Masukkan Nama PMI/RS" name="namaTempat" required>
                                </div>
                                <!-- /.form-group -->
                                <div class="row">
                                    <div class="form-group col-6">
                                        <label>Provinsi</label>
                                        <select class="form-control select2" style="width: 100%;" name="provinsi">
                                            <option disabled selected>Pilih Provinsi</option>
                                            <option value="Alaska">Alaska</option>
                                            <option>California</option>
                                            <option>Delaware</option>
                                            <option>Tennessee</option>
                                            <option>Texas</option>
                                            <option>Washington</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-6">
                                        <label>Kota</label>
                                        <select class="form-control select2" style="width: 100%;" name="kota">
                                            <option disabled selected >Pilih Kota</option>
                                            <option>Alaska</option>
                                            <option>California</option>
                                            <option>Delaware</option>
                                            <option>Tennessee</option>
                                            <option>Texas</option>
                                            <option>Washington</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <textarea class="form-control" rows="3" placeholder="Masukkan Alamat" name="alamat"></textarea>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label>Nomor Telepon PMI/RS</label>
                                    <input type="tel" class="form-control" placeholder="Masukkan Nomor Telepon PMI/RS" name="tlpn" required>
                                </div>
                                <label>Email</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                    </div>
                                    <input type="email" class="form-control" placeholder="Masukka E-mail" name="email">
                                </div>
                                <div class="form-group">
                                    <label>Status PMI/RS</label>
                                    <select class="form-control select2" style="width: 100%;" name="status">
                                        <option disabled selected>Pilih Status</option>
                                        <option value="1">Donor dan Stok Darah</option>
                                        <option value="2">Donor Darah</option>
                                        <option value="3">Stok Darah</option>
                                    </select>
                                </div>
                                <!-- /.form-group -->
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary" value="Tambah">Submit</button>
                            </div>

                        </form>
                        <!-- /.card -->
                        <%
                        }
                        else if (proses.equals("edit")) {
                            String id = request.getParameter("id_artikel");
                            ArtikelModel km = new ArtikelModel();
                            km.setId_artikel(id);
                            List<ArtikelModel> data = new ArrayList<ArtikelModel>();
                            data = km.cariID();
                            if (data.size() > 0) {
                        %>
                        <!-- /.card-header -->
                        <form role="form" action="../../../ArtikelController?data=artikel&proses=update-artikel" method="POST">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Judul</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Judul" name="judul" value="<%=data.get(0).getJudul()%>" required>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label>Poster</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" accept="image/*" id="imgInp">
                                            <label class="custom-file-label">Choose file</label>
                                        </div>
                                    </div>
                                </div>
                                <img class="" id="blah" src="#" style="height: 500px;"/><br><br>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <div class="card-body pad">
                                        <div class="mb-3">
                                            <textarea class="textarea" placeholder="Place some text here"
                                                      style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" name="konten">
                                                <%=data.get(0).getKonten()%>
                                            </textarea>
                                        </div>
                                        <p class="text-sm mb-0">
                                            Editor <a href="https://github.com/bootstrap-wysiwyg/bootstrap3-wysiwyg">Documentation and license information.</a>
                                        </p>
                                    </div>
                                </div>
                                <!-- /.form-group -->
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary" value="Update">Submit</button>
                            </div>
                            <input type="hidden" name="id_artikel" value="<%=data.get(0).getId_artikel()%>">
                        </form>
                        <!-- /.card -->
                        <%
                            }
                        }
                        %>

                    </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <!-- Javascript -->
        <jsp:include page="../../footer.jsp" />
    </div>
    <!-- ./wrapper -->

    <!-- Javascript -->
    <jsp:include page="script.jsp" />


</body>
</html>