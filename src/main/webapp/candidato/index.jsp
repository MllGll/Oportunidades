<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>P�gina do Candidato</title>
		<meta name="description" content="Free Bootstrap 4 Template by uicookies.com">
		<meta name="keywords" content="Free website templates, Free bootstrap themes, Free template, Free bootstrap, Free website template">

        <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">

	<link rel="stylesheet" href="/candidato/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/candidato/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/candidato/assets/fonts/law-icons/font/flaticon.css">

    <link rel="stylesheet" href="/candidato/assets/fonts/fontawesome/css/font-awesome.min.css">


    <link rel="stylesheet" href="/candidato/assets/css/slick.css">
    <link rel="stylesheet" href="/candidato/assets/css/slick-theme.css">

    <link rel="stylesheet" href="/candidato/assets/css/helpers.css">
    <link rel="stylesheet" href="/candidato/assets/css/style.css">
    
	</head>
	<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

    <nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="pb-navbar">
      <div class="container">
        <a class="navbar-brand" href="../index.html">Oportunidades</a>
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#probootstrap-navbar" aria-controls="probootstrap-navbar" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-navbar">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="#section-home">In�cio</a></li>
            <li class="nav-item"><a class="nav-link" href="#section-features">Recursos</a></li>
            <li class="nav-item"><a class="nav-link" href="#section-reviews">Avalia��o</a></li>
            <li class="nav-item"><a class="nav-link" href="#section-pricing">Passo a passo</a></li>
            <li class="nav-item"><a class="nav-link" href="#section-faq">Perguntas</a></li>
            <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0"><a class="nav-link" href="https://uicookies.com/" target="_blank"><span class="pb_rounded-4 px-4">Download</span></a></li>
			<div class="caixa2">
				<img class="i_profile2" src="/candidato/assets/images/profile.png"/>
				<p>Nome do Usu�rio</p>
				<div class="dropdown">
					<img class="i_options" src="/candidato/assets/images/options.png"/>
					<div class="dropdown-content">
						<a href="/scripts/oportunidade/deletar/${oportunidade.id}" data-toggle="modal" data-target="#exampleModal">Excluir Conta</a>
						<a href="/scripts/usuario/logout">Sair</a>
					</div>
				</div>
			</div>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->

    <section class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1 pb_slant-light" id="section-home">
		<div class="container">
			<div class="prote">
				<img class="i_profile" src="/candidato/assets/images/profile.png"/>
				<div class="caixa">
					<h2>Nome do Candidato</h2>
					<div>
						<p>Descri��o</p>
						<p>Email</p>
						<p>Endere�o</p>
						<p>N�mero de telefone</p>
					</div>
                    <p class="mb-5">
                        <a class="btn btn-success btn-lg pb_btn-pill smoothscroll" href="../editar.html"><span class="pb_font-14 text-uppercase pb_letter-spacing-1">Editar Perfil</span></a>
                        <h4>CURR�CULO</h4>
                        <form action="/scripts/conta/upload" method="post" enctype="multipart/form-data">
                    		<p>
                    			<input value="/scripts/conta/upload" class="selecionar" name="file" type="file"/>
                    		</p>
                    		<input type="submit" value="ENVIAR"/>  
                    	</form>
                    </p>
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
      <div class="modal-body">Esta opera��o n�o poder� ser desfeita</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Excluir</button>
      </div>
    </div>
  </div>
</div>
  
    <script src="/candidato/assets/js/jquery.min.js"></script>
    <script src="/candidato/assets/js/popper.min.js"></script>
    <script src="/candidato/assets/js/bootstrap.min.js"></script>
    <script src="/candidato/assets/js/slick.min.js"></script>
    <script src="/candidato/assets/js/jquery.mb.YTPlayer.min.js"></script>
    <script src="/candidato/assets/js/jquery.waypoints.min.js"></script>
    <script src="/candidato/assets/js/jquery.easing.1.3.js"></script>
    <script src="/candidato/assets/js/main.js"></script>
	</body>
</html>
