<%--
  Created by IntelliJ IDEA.
  User: quinq
  Date: 02/08/2021
  Time: 04:17 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Fashion.com</title>
    <link rel="stylesheet" type="text/css" href="static/css/fondo.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/normalize.css">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="static/css/magic.css">
    <link rel="stylesheet" href="static/css/bootstrap-grid.css">
    <link rel="stylesheet" href="static/css/bootstrap.rtl.css">
</head>
<body bgcolor="#000">
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
            <img src="..." class="d-block w-100" height="300">
        </div>
    </div></div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<ul class="nav">
    <li class="nav-item">
        <a class="nav-link active" href="#">Inicio</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Tendencias</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Ofertas</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Primavera</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Otoño</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Invierno</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Verano</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Iniciar seción</a>
    </li>
</ul>

<div  id="promo">lorem</div>

<div class="row">
    <div class="col-sm-4">
    <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">titulo</h5>
            <p class="card-text"> descripcion </p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div></div></div>
<div class="col-sm-4">
    <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">titulo</h5>
            <p class="card-text"> descripcion </p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div></div></div>
<div class="col-sm-4">
    <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">titulo</h5>
            <p class="card-text"> descripcion </p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div></div></div>
<div class="col-sm-4">
    <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">titulo</h5>
            <p class="card-text"> descripcion </p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div></div></div>
<div class="col-sm-4">
    <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">titulo</h5>
            <p class="card-text"> descripcion </p>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div></div></div>
</div>



<br><br><br>


<section id="pie">
    <p class="text-center">Condiciones de uso | Aviso de privacidad | © 1996-2021, Fashin.com, Inc. o afiliados. Todos los derechos reservados.</p>
</section>

<script src="static/js/bootstrap.js"></script>


</body>
</html>
