<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- netbeans_default_options="-J-Xms32m -J-Xmx128m -J-XX:PermSize=32m -J-XX:MaxPermSize=160m -J-Xverify:none -J-Dapple.laf.useScreenMenuBar=true" -->

<!-- head -->
<jsp:include page="head.jsp"/>

<!-- navbar -->
<jsp:include page="navbar.jsp"/>

<!-- navbar -->
<jsp:include page="breadcrumbs.jsp">
    <jsp:param name="halaman" value="Sign Up"/>
</jsp:include>

<section class="ftco-section contact-section">
    <div class="container">
        <div class="row block-9 justify-content-center mb-5">
            <div class="col-md-8 mb-md-5">
                <h2 class="text-center">Sign Up</h2>
                <form action="signupInsert" method="post" class="bg-light p-5 contact-form">
                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text" name="nama" class="form-control" placeholder="Nama lengkap" required="required" autofocus>
                    </div>
                    <div class="form-group">
                        <label>NIK</label>
                        <input type="number" name="nik" class="form-control" placeholder="NIK" required="required">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control" placeholder="Email" required="required">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" placeholder="Password" required="required">
                    </div>
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <input type="password" class="form-control" placeholder="Confirm Password" required="required">
                    </div>
                    <div class="form-group">
                        <label>Tanggal Lahir</label>
                        <input type="date" name="tgl_lahir" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label>Jenis Kelamin</label>
                        <select class="form-control">
                            <option name="jkelamin" value="Laki-Laki">Laki-Laki</option>
                            <option name="jkelamin" value="Perempuan">Perempuan</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Pekerjaan</label>
                        <input type="text" name="pekerjaan" class="form-control" placeholder="Sesuai dengan KTP" required="required">
                    </div>
                    <div class="form-group">
                        <label>Nomor Telepon</label>
                        <input type="tel" name="no_hp" class="form-control" placeholder="Nomor HP" required="required">
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Sign Up" class="btn btn-primary py-3 px-5">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- TESTING PURPOSE
    <h4>Driver Manager</h4>
    <a href="TestDMConnection">Test Koneksi Driver Manager (Servlet)</a><br/>
    <a href="TestJspDMConnection.jsp">Test Koneksi Driver Manager (JSP)</a><br/>
    -->

</section>

<!-- footer -->
<jsp:include page="footer.jsp"/>

<!-- loader -->
<jsp:include page="loader.jsp"/>

-J-Dfile.encoding=UTF-8 