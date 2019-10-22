<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- netbeans_default_options="-J-Xms32m -J-Xmx128m -J-XX:PermSize=32m -J-XX:MaxPermSize=160m -J-Xverify:none -J-Dapple.laf.useScreenMenuBar=true" -->

<!-- head -->
<jsp:include page="head.jsp" />

<!-- navbar -->
<jsp:include page="navbar.jsp" />

<!-- navbar -->
<jsp:include page="breadcrumbs.jsp">
    <jsp:param name="halaman" value="Formulir Donor Darah" />
</jsp:include>

<section class="ftco-section contact-section">
    <div class="container">
        <div class="row block-9 justify-content-center mb-5">
            <div class="col-md-8 mb-md-5">
                <h2 class="text-center">Formulir Donor Darah</h2>
                <form action="#" class="bg-light p-5 contact-form">
                    <div class="form-group">
                        <label>No. KTP/SIM</label>
                        <input type="text" class="form-control" placeholder="Masukkan No. KTP/SIM" required="required" autofocus>
                    </div>
                    <div class="form-group">
                        <label>Nama</label>
                        <input type="Text" class="form-control" placeholder="Nama" required="required">
                    </div>
                    <div class="form-group">
                        <label>Alamat</label>
                        <textarea rows="2" class="form-control" placeholder="Masukkan Alamat" required="required"></textarea>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-5">
                            <label>Kelurahan</label>
                            <select class="form-control" style="width: 100%;">
                                <option disabled selected>Pilih Kelurahan</option>
                                <option>Alaska</option>
                                <option>California</option>
                                <option>Delaware</option>
                                <option>Tennessee</option>
                                <option>Texas</option>
                                <option>Washington</option>
                            </select>
                        </div>
                        <div class="form-group col-md-5">
                            <label>Kecamatan</label>
                            <select class="form-control" style="width: 100%;">
                                <option disabled selected>Pilih Kecamatan</option>
                                <option>Alaska</option>
                                <option>California</option>
                                <option>Delaware</option>
                                <option>Tennessee</option>
                                <option>Texas</option>
                                <option>Washington</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <label>Kode Pos</label>
                            <input type="text" class="form-control" placeholder="Masukkan Kode Pos" required="required" autofocus>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Jenis Kelamin</label><br>
                        <input type="radio" class="col-1" name="kelamin" value="Laki-Laki">Laki-Laki
                        <input type="radio" class="col-1 offset-1" name="kelamin" value="Perempuan">Perempuan
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Tempat Lahir</label>
                            <select class="form-control" style="width: 100%;">
                                <option disabled selected>Pilih Tempat Lahir</option>
                                <option>Alaska</option>
                                <option>California</option>
                                <option>Delaware</option>
                                <option>Tennessee</option>
                                <option>Texas</option>
                                <option>Washington</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Tanggal Lahir</label>
                            <input type="date" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Pekerjaan</label>
                        <select class="form-control" style="width: 100%;">
                            <option disabled selected>Pilih Pekerjaan</option>
                            <option>Alaska</option>
                            <option>California</option>
                            <option>Delaware</option>
                            <option>Tennessee</option>
                            <option>Texas</option>
                            <option>Washington</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Nama Ibu Kandung</label>
                        <input type="text" class="form-control" placeholder="Masukkan Nama Ibu">
                    </div>
                    <div class="form-group">
                        <label>Status Nikah</label><br>
                        <input type="radio" class="col-1" name="status" value="Nikah">Nikah
                        <input type="radio" class="col-1 offset-1" name="status" value="Belum">Belum Nikah
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Golongan Darah</label>
                            <select class="form-control" style="width: 100%;">
                                <option disabled selected>Pilih Tempat Lahir</option>
                                <option>Alaska</option>
                                <option>California</option>
                                <option>Delaware</option>
                                <option>Tennessee</option>
                                <option>Texas</option>
                                <option>Washington</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Rhesus</label>
                            <input type="date" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Dapat Dipanggil</label>
                        <select class="form-control" style="width: 100%;">
                            <option disabled selected>Pilih</option>
                            <option>Dapat Dipanggil</option>
                            <option>Tidak Dapat Dipanggil</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Nomor Telepon</label>
                        <input type="tel" class="form-control" placeholder="Masukkan Nomor Telepon">
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Login" class="btn btn-primary py-3 px-5">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- footer -->
<jsp:include page="footer.jsp" />

<!-- loader -->
<jsp:include page="loader.jsp" /> 