<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- netbeans_default_options="-J-Xms32m -J-Xmx128m -J-XX:PermSize=32m -J-XX:MaxPermSize=160m -J-Xverify:none -J-Dapple.laf.useScreenMenuBar=true" -->

<!-- head -->
<jsp:include page="head.jsp" />

<!-- navbar -->
<jsp:include page="navbar.jsp" />

<!-- navbar -->
<jsp:include page="breadcrumbs.jsp">
    <jsp:param name="halaman" value="Login" />
</jsp:include>

<section class="ftco-section contact-section">
    <div class="container">
        <div class="row block-9 justify-content-center mb-5">
            <div class="col-md-8 mb-md-5">
                <h2 class="text-center">Login</h2>
                <form action="#" class="bg-light p-5 contact-form">
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" placeholder="Email" required="required" autofocus>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" placeholder="Password" required="required">
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

-J-Dfile.encoding=UTF-8 