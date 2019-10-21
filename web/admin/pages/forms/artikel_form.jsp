<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.application.model.ArtikelModel"%>

<!-- head -->
<jsp:include page="head.jsp" />

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar -->
        <jsp:include page="../../navbar.jsp" />

        <!-- Main Sidebar Container -->
        <jsp:include page="../../aside.jsp" />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Artikel Form</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../../">Home</a></li>
                                <li class="breadcrumb-item active">Artikel Form</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- SELECT2 EXAMPLE -->
                    <div class="card card-default">
                        <div class="card-header">
                            <h3 class="card-title">Artikel</h3>

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
                                    <label for="exampleInputEmail1">Judul</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Judul" name="judul" required>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label for="exampleInputFile">Poster</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="imgInp" accept="image/*" name="link_img" required>
                                            <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                            <img class="" id="blah" src="#" alt="your image" />
                                        </div>
                                    </div>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label for="exampleInputFile">Tanggal Kegiatan</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                </div>
                                                <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask>
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                                    </div>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <div class="card-body pad">
                                        <div class="mb-3">
                                            <textarea class="textarea" placeholder="Place some text here"
                                                      style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" name="konten"></textarea>
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
                                    <label for="exampleInputEmail1">Judul</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Judul" name="judul" value="<%=data.get(0).getJudul()%>" required>
                                </div>
                                <!-- /.form-group -->
                                <div class="form-group">
                                    <label for="exampleInputFile">Poster</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" accept="image/*" id="imgInp">
                                            <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                            <img class="" id="blah" src="../../images/<%=data.get(0).getLink_img()%>" alt="your image" />
                                        </div>
                                    </div>
                                </div>
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