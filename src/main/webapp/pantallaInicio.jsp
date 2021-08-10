<%--
  Created by IntelliJ IDEA.
  User: quinq
  Date: 02/08/2021
  Time: 04:17 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%@ page contentType="text/html;charset=UTF-8" %>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mi vida</title>
    <link rel="stylesheet" href="static/css/fondo.css">
    <link rel="stylesheet" href="static/css/normalize.css">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
     <link rel="stylesheet" href="static/css/magic.css">
     <link rel="stylesheet" href="static/css/bootstrap-grid.css">
    <link rel="stylesheet" href="static/css/bootstrap.rtl.css">
</head>
<body>
<header id="head" >
    <h1> Fashion</h1>
</header>

<div class="btn-group"role="group"aria-label="Button group with nested dropdown">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Tendencia
    </button>
    <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
        <li><a class="dropdown-item" href="#">Mas Vendidos</a></li>
        <li><a class="dropdown-item" href="#">Novedades</a></li>
        <li><a class="dropdown-item" href="#">Productos del Momento</a></li>
    </ul>
</div>
<div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Departamentos
    </button>
    <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
        <li><a class="dropdown-item" href="#">Pantalones</a></li>
        <li><a class="dropdown-item" href="#">Shorts</a></li>
        <li><a class="dropdown-item" href="#">Blusa</a></li>
        <li><a class="dropdown-item" href="#">Sueter</a></li>
        <li><a class="dropdown-item" href="#">Vestidos</a></li>
    </ul>
</div>
<div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Ayuda y Configuracion
    </button>
    <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
        <li><a class="dropdown-item" href="#">Mi cuenta</a></li>
        <li><a class="dropdown-item" href="#">Ayuda</a></li>
        <li><a class="dropdown-item" href="#">Identificarse</a></li>
    </ul>
</div>

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="imagen/c1.jpg" class="d-block w-100" height="300px">
        </div>
        <div class="carousel-item">
            <img src="imagen/c2.jpg" class="d-block w-100" height="300">
        </div>
        <div class="carousel-item">
            <img src="imagen/c3.jpg" class="d-block w-100" height="300">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<td>
    <section id="img">
        <div class="card" >
            <img src="imagen/p1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">conjunto amarillo</h5>
                <p class="card-text">para niña</p>
                <a href="#" class="btn btn-primary">Comprar</a>
            </div>
        </div>
        </div>
    </section>
    <section id="img">
        <div class="card" >
            <img src="imagen/p2.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Comprar</a>
            </div>
        </div>
    </section>
    <section id="img">
        <div class="card" >
            <img src="imagen/p3.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Comprar</a>
            </div>
        </div>
    </section><td>
    <section id="promo">
        <div>
        </div>
    </section>
    <section id="img">
        <div class="card">
            <img src="imagen/p4.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Comprar</a>
            </div>
        </div>
    </section></td>
<section id="img">
    <div class="card" >
        <img src="imagen/p5.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div>
    </div>
</section>
<section id="img">
    <div class="card" >
        <img src="imagen/p6.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div>
    </div>
</section>
<section id="img">
    <div class="card" >
        <img src="imagen/p7.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div>
    </div>
</section><td>
    <section id="img">
        <div class="card" >
            <img src="imagen/p8.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Comprar</a>
            </div>
        </div>
    </section></td>
<td><section id="img">
    <div class="card" >
        <img src="imagen/p1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div>
    </div>
</section></td>
<td><section id="img">
    <div class="card" >
        <img src="imagen/p1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div>
    </div>
</section></td>
<td><section id="img">
    <div class="card" >
        <img src="imagen/p1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div>
    </div>
</section></td>
<br><br><br>


<section id="formFooter">
    <p class="underlineHover" >Condiciones de uso | Aviso de privacidad | © 1996-2021, Fashin.com, Inc. o afiliados. Todos los derechos reservados.</p>
</section>
<script src="static/css/bootstrap.css"></script>
<script src="static/js/bootstrap.js"></script>
</body>
</html>
