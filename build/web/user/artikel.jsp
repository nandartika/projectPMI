<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.application.model.ArtikelModel"%>

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

<section class="ftco-section">
    <div class="container">
        <div class="row">
            <%
                String id = request.getParameter("id_artikel");
                ArtikelModel km = new ArtikelModel();
                km.setId_artikel(id);
                List<ArtikelModel> data = new ArrayList<ArtikelModel>();
                data = km.cariID();
                if (data.size() > 0) {
            %>
            <div class="col-md-4">
                <div class="property-wrap ftco-animate">
                    <a href="properties-single.html" class="img" style="background-image: url(images/work-1.jpg);"></a>
                    <div class="text">
                        <p class="price"><span class="old-price">800,000</span><span class="orig-price">$3,050<small>/mo</small></span></p>
                        <ul class="property_list">
                            <li><span class="flaticon-bed"></span>3</li>
                            <li><span class="flaticon-bathtub"></span>2</li>
                            <li><span class="flaticon-floor-plan"></span>1,878 sqft</li>
                        </ul>
                        <h3><a href="properties-single.html">The Blue Sky Home</a></h3>
                        <span class="location">Oakland</span>
                        <a href="properties-single.html" class="d-flex align-items-center justify-content-center btn-custom">
                            <span class="ion-ios-link"></span>
                        </a>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</section>


<!-- footer -->
<jsp:include page="footer.jsp" />

<!-- loader -->
<jsp:include page="loader.jsp" />