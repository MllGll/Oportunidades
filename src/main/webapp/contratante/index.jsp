<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="br.com.imepac.site.entities.Oportunidade"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>Página do Contratante</title>
		<meta name="description" content="Free Bootstrap 4 Template by uicookies.com">
		<meta name="keywords" content="Free website templates, Free bootstrap themes, Free template, Free bootstrap, Free website template">

    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">

	<link rel="stylesheet" href="/contratante/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/contratante/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/contratante/assets/fonts/law-icons/font/flaticon.css">

    <link rel="stylesheet" href="/contratante/assets/fonts/fontawesome/css/font-awesome.min.css">


    <link rel="stylesheet" href="/contratante/assets/css/slick.css">
    <link rel="stylesheet" href="/contratante/assets/css/slick-theme.css">

    <link rel="stylesheet" href="/contratante/assets/css/helpers.css">
    <link rel="stylesheet" href="/contratante/assets/css/style.css">
    <link rel="stylesheet" href="/contratante/assets/css/landing-2.css">
	
	
	
	</head>
	<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

    <nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="pb-navbar">
      <div class="container">
        <a class="navbar-brand" href="../index.jsp">Oportunidades</a>
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#probootstrap-navbar" aria-controls="probootstrap-navbar" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-navbar">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="#section-home">Inicio</a></li>
			<li class="nav-item"><a class="nav-link" href="#section-logar">Logar</a></li>
            <li class="nav-item"><a class="nav-link" href="#section-features">Recursos</a></li>
            <li class="nav-item"><a class="nav-link" href="#section-pricing">Passo a passo</a></li>
            
            <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0"><a class="nav-link" href="https://uicookies.com/" target="_blank"><span class="pb_rounded-4 px-4">Download</span></a></li>
			<div class="caixa2">
				<img class="i_profile2" src="/contratante/assets/images/profile.png"/>
				<p>Nome do Usuário</p>
				<div class="dropdown">
					<img class="i_options" src="/contratante/assets/images/options.png"/>
					<div class="dropdown-content">
						<a href="/scripts/conta/deletar/${conta.id}" data-toggle="modal" data-target="#exampleModal">Excluir Conta</a>
						<a href="/scripts/usuario/logout">Sair</a>
					</div>
				</div>
			</div>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->


    <section class="tema">
		<div class="container">
			<div class="prote">
				<img class="i_profile" src="/contratante/assets/images/profile.png"/>
				<div class="caixa">
					<h2>Nome do Contratante</h2>
					<div>
						<p>Descrição</p>
						<p>Email</p>
						<p>Endereço</p>
						<p>Número de telefone</p>
						<p class="mb-5"><a class="btn btn-success btn-lg pb_btn-pill smoothscroll" href="../editar.jsp"><span class="pb_font-14 text-uppercase pb_letter-spacing-1">Editar Perfil</span></a></p>
					</div>
				</div>
			</div>
		</div>
    </section>
    <!-- END section -->
    
	<section>
		<div class="container">
			<h1>Painel de Controle</h1>
			<div class="tabela">
				<p class="mb-5"><a class="btn btn-success btn-lg pb_btn-pill smoothscroll" href="../../contratante/oportunidade.jsp"><span class="pb_font-14 text-uppercase pb_letter-spacing-1">Adicionar Oportunidade</span></a></p>
				<table style="width: 100%; background-color: white"border="1">
					<tr>
						<th>Nome</th>
						<th>Função</th>
						<th>Local</th>
						<th>Data</th>
						<th>Remuneração</th>
					</tr>
					
					<c:forEach items="${oportunidades}" var="oportunidade">
						<tr>
							<td>${oportunidade.nome}</td>
							<td>${oportunidade.funcao}</td>
							<td>${oportunidade.local}</td>
							<td>${oportunidade.data}</td>
							<td>${oportunidade.remuneracao}</td>
							<td style="text-align:center">
								<a href="/scripts/oportunidade/editar/${oportunidade.id}"><img class="i_options" src="/contratante/assets/images/editar.png" style="height:20px"/></a>
							</td>
							<td style="text-align:center">
								<a href="/scripts/oportunidade/deletar/${oportunidade.id}" data-toggle="modal" data-target="#excluir"><img class="i_options" src="/contratante/assets/images/excluir.png" style="height:20px"/></a>
							</td>
						</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
    </section>
    <!-- END section -->
	
	
	


	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tem certeza de que deseja excluir esta conta?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">Esta operação não poderá ser desfeita</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Excluir</button>
      </div>
    </div>
  </div>
</div>

	<div class="modal fade" id="excluir" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Excluir oportunidade?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">Esta operação não poderá ser desfeita</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="submit" class="btn btn-primary">Excluir</button>
      </div>
    </div>
  </div>
</div>

    <script src="/contratante/assets/js/jquery.min.js"></script>
    <script src="/contratante/assets/js/popper.min.js"></script>
    <script src="/contratante/assets/js/bootstrap.min.js"></script>
    <script src="/contratante/assets/js/slick.min.js"></script>
    <script src="/contratante/assets/js/jquery.mb.YTPlayer.min.js"></script>

    <script src="/contratante/assets/js/jquery.waypoints.min.js"></script>
    <script src="/contratante/assets/js/jquery.easing.1.3.js"></script>

    <script src="/contratante/assets/js/main.js"></script>

	</body>
</html>
