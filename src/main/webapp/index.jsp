<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<title>Oportunidades</title>
		<meta name="description" content="Free Bootstrap 4 Template by uicookies.com">
		<meta name="keywords" content="Free website templates, Free bootstrap themes, Free template, Free bootstrap, Free website template">

    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">

	<link rel="stylesheet" href="/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/assets/fonts/law-icons/font/flaticon.css">

    <link rel="stylesheet" href="/assets/fonts/fontawesome/css/font-awesome.min.css">


    <link rel="stylesheet" href="/assets/css/slick.css">
    <link rel="stylesheet" href="/assets/css/slick-theme.css">

    <link rel="stylesheet" href="/assets/css/helpers.css">
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="/assets/css/landing-2.css">
	</head>
	<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

    <nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="pb-navbar">
      <div class="container">
        <a class="navbar-brand" href="index.jsp">Oportunidades</a>
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
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->




    <section class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1 pb_slant-light" id="section-home">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <h2 class="vagas">Vagas de emprego para você</h2>
            <div class="sub-heading">
              <p class="mb-4">Se você está desempregado e está a procura de um emprego este site é para você, aqui você encontra mais de mil vagas disponíveis podendo selecionar a qual você está interessado. Se você é um contratante este site também para você, aqui você pode anunciar suas vagas disponíveis e ver a lista de candidatos interessados.</p>
              <p class="mb-5"><a class="btn btn-success btn-lg pb_btn-pill smoothscroll" href="#section-pricing"><span class="pb_font-14 text-uppercase pb_letter-spacing-1">Ver Passo a passo</span></a></p>
            </div>
          </div>
          <div class="col-md-1">
          </div>
          <div class="col-md-5 relative align-self-center">

            <form action="/scripts/conta/cadastrar" method="post" class="bg-white rounded pb_form_v1">
              <h2 class="mb-4 mt-0 text-center">Cadastre-se</h2>
              <div class="form-group">
                <input type="text" name="nome" class="form-control pb_height-50 reverse" placeholder="Nome Completo">
                <form:errors path="contaForm.nome"/>
              </div>
              <div class="form-group">
                <input type="email" name="email" class="form-control pb_height-50 reverse" placeholder="Email">
                <form:errors path="contaForm.email"/>
              </div>
              <div class="form-group">
                <input type="password" name="senha" class="form-control pb_height-50 reverse" placeholder=" Senha ">
                <form:errors path="contaForm.senha"/>
              </div>
              <div class="form-group">
                <div class="pb_select-wrap">
                  <select class="form-control pb_height-50 reverse" name="tipo">
                    <option value="" selected>Tipo da Conta</option>
                    <option value="CANDIDATO">Contratante</option>
                    <option value="CONTRATANTE">Candidato</option> 					
                  </select>
                  <form:errors path="contaForm.tipo"/>
                </div>
                <p>${message}</p>
              </div>
              <div class="form-group">
                <input type="submit" class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue" value="Registrar">
              </div>
            </form>
            
           </div>
        </div>
      </div>              
    </section>
    <!-- END section -->
 

	<section class="pb_section bg-light pb_slant-white pb_pb-250" id="section-features">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-6 text-center mb-5">
            <h5 class="text-uppercase pb_font-15 mb-2 pb_color-dark-opacity-3 pb_letter-spacing-2"><strong>Recursos</strong></h5>
            <h2>Nosso Site</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md- col-sm-6">
            <div class="media d-block pb_feature-v1 text-left">
              <div class="pb_icon"><i class="ion-ios-bookmarks-outline pb_icon-gradient"></i></div>
              <div class="media-body">
                <h5 class="mt-0 mb-3 heading"></h5>
                <p class="text-sans-serif">Oportunidade para todos</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md- col-sm-6">
            <div class="media d-block pb_feature-v1 text-left">
              <div class="pb_icon"><i class="ion-ios-speedometer-outline pb_icon-gradient"></i></div>
              <div class="media-body">
                <h5 class="mt-0 mb-3 heading"></h5>
                <p class="text-sans-serif">Rapidez e agilidade</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md- col-sm-6">
            <div class="media d-block pb_feature-v1 text-left">
              <div class="pb_icon"><i class="ion-ios-infinite-outline pb_icon-gradient"></i></div>
              <div class="media-body">
                <h5 class="mt-0 mb-3 heading">Possibilidades</h5>
                <p class="text-sans-serif"></p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md- col-sm-6">
            <div class="media d-block pb_feature-v1 text-left">
              <div class="pb_icon"><i class="ion-ios-color-filter-outline pb_icon-gradient"></i></div>
              <div class="media-body">
                <h5 class="mt-0 mb-3 heading"></h5>
                <p class="text-sans-serif">Interação ao mercado de trabalho</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md- col-sm-6">
            <div class="media d-block pb_feature-v1 text-left">
              <div class="pb_icon"><i class="ion-ios-wineglass-outline pb_icon-gradient"></i></div>
              <div class="media-body">
                <h5 class="mt-0 mb-3 heading"></h5>
                <p class="text-sans-serif">Grandes eventos</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md- col-sm-6">
            <div class="media d-block pb_feature-v1 text-left">
              <div class="pb_icon"><i class="ion-ios-paperplane-outline pb_icon-gradient"></i></div>
              <div class="media-body">
                <h5 class="mt-0 mb-3 heading"></h5>
                <p class="text-sans-serif">Impulsionar oportunidades</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <section class="pb_section pb_slant-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5">
            <img src="assets/images/phone_3.png" alt="Image placeholder" class="img-fluid">
          </div>
          <div class="col-lg-8 pl-md-5 pl-sm-0">
            <div class="row">
              <div class="col">
                <h2>Oportunidades</h2>
                <p class="pb_font-20">Há alguns anos sair em busca de um emprego era uma tarefa cansativa, difícil e muito desgastante. Porém, com o avanço tecnológico tornaram essa busca muito mais fácil.</p>
              </div>
            </div>
            <div class="row">
              <div class="col-lg">

                <div class="media pb_feature-v2 text-left mb-1 mt-5">
                  <div class="pb_icon d-flex mr-3 align-self-start pb_w-15"><i class="ion-ios-bookmarks-outline pb_icon-gradient"></i></div>
                  <div class="media-body">
                    <h3 class="mt-2 mb-2 heading">Aplicativo</h3>
                    <p class="text-sans-serif pb_font-16">Ao fazer o cadastro em nosso site, baixe nosso aplicativo e faça login através dele.</p>
                  </div>
                </div>

                <div class="media pb_feature-v2 text-left mb-1 mt-5">
                  <div class="pb_icon d-flex mr-3 align-self-start pb_w-15"><i class="ion-ios-infinite-outline pb_icon-gradient"></i></div>
                  <div class="media-body">
                    <h3 class="mt-2 mb-2 heading">Possibilidades</h3>
                    <p class="text-sans-serif pb_font-16">Você terá várias possibildades tanto para vagas quanto a contratar.</p>
                  </div>
                </div>

              </div>
              <div class="col-lg">

                <div class="media pb_feature-v2 text-left mb-1 mt-5">
                  <div class="pb_icon d-flex mr-3 align-self-start pb_w-15"><i class="ion-ios-speedometer-outline pb_icon-gradient"></i></div>
                  <div class="media-body">
                    <h3 class="mt-2 mb-2 heading">Rapidez e agilidade</h3>
                    <p class="text-sans-serif pb_font-16">Facilidade em cadastrar, procurar e achar !</p>
                  </div>
                </div>

                <div class="media pb_feature-v2 text-left mb-1 mt-5">
                  <div class="pb_icon d-flex mr-3 align-self-start pb_w-15"><i class="ion-ios-color-filter-outline  pb_icon-gradient"></i></div>
                  <div class="media-body">
                    <h3 class="mt-2 mb-2 heading">Interação ao mercado de trabalho</h3>
                    <p class="text-sans-serif pb_font-16">Tal mercado abrange a interação existente entre empregadores e mão de obra.</p>
                  </div>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
    <!-- END section -->


    <section class="pb_section bg-light pb_slant-white" id="section-pricing">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-6 text-center mb-5">
            <h5 class="text-uppercase pb_font-15 mb-2 pb_color-dark-opacity-3 pb_letter-spacing-2"><strong>Oportunidades</strong></h5>
            <h2>Passo a passo</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md">
            <div class="pb_pricing_v1 p-5 border text-center bg-white">
              <h3>Passo 1</h3>
              <p class="pb_font-15">Ao entrar em nosso site, você terá que se cadastrar e anexar um arquivo de seu currículo para ter acesso no site e no aplicativo. Além disso você escolherá se irá ser um empregador ou candidato.</p>              
            </div>
          </div>
          <div class="col-md">
            <div class="pb_pricing_v1 p-5 border border-primary text-center bg-white">
              <h3>Passo 2</h3>
              <p class="pb_font-15">Ao fazer login no site, terá acesso ao seu perfil, onde poderá alterar e adicionar dados. Caso seja um empregador terá como adicionar uma vaga e ver os perfis dos candidatos que demonstram interesse em sua vaga, caso não seja um empregador só irá ter acesso ao seu perfil.</p>              
            </div>
          </div>
          <div class="col-md">
            <div class="pb_pricing_v1 p-5 border text-center bg-white">
              <h3>Passo 3</h3>
              <p class="pb_font-15">Em nosso aplicativo você fará o login e lá terão todas as vagas disponiveis baseadas em seu perfil. O candidato poderá demonstrar interesse em qualquer oportunidade, terá uma barra para filtrar por nome da função, local, data..</p>              
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ENDs section -->

   <section class="pb_xl_py_cover overflow-hidden pb_slant-light pb_gradient_v1 cover-bg-opacity-8"  style="background-image: url(assets/images/1900x1200_img_5.jpg)" id="section-logar">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-5 justify-content-center">
            <h2 class="heading mb-5 pb_font-40">Já sou cadastrado!</h2>
            <div class="sub-heading">
              <p class="mb-4"> Se você ja possui um cadastro acesse por aqui!</p>
            </div>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-5">
             <form action="/scripts/usuario/login" method="get" class="bg-white rounded pb_form_v1">
              
              <h2 class="mb-4 mt-0 text-center">Login</h2>
             
              <div class="form-group">
                <input type="email" name="email" class="form-control py-3 reverse" placeholder="Email">
                <form:errors path="loginForm.email"/>
              </div>
              <div class="form-group">
                <input type="password" name="senha" class="form-control py-3 reverse" placeholder="Senha">
                <form:errors path="loginForm.senha"/>
              </div>
              <p>${message_error}</p>
              
              <div class="form-group">
                <input type="submit" class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue" value="Entrar">
              </div>
              
            </form>
          </div>
        </div>
      </div>
    </section>
   
    <!-- END section -->

    <footer class="pb_footer bg-light" role="contentinfo">
      <div class="container">
        <div class="row text-center">
          <div class="col">
            <ul class="list-inline">
              <li class="list-inline-item"><a href="#" class="p-2"><i class="fa fa-facebook"></i></a></li>
              <li class="list-inline-item"><a href="#" class="p-2"><i class="fa fa-twitter"></i></a></li>
              <li class="list-inline-item"><a href="#" class="p-2"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="row">
          <div class="col text-center">
            <p class="pb_font-14">&copy; 2020. Oportunidades. <br>  <a href="https://uicookies.com/bootstrap-html-templates/">Bootstrap Templates</a> by uiCookies</p>
          </div>
        </div>
      </div>
    </footer>

  

    <!-- loader -->
    <div id="pb_loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#1d82ff"/></svg></div>



    <script src="/assets/js/jquery.min.js"></script>

    <script src="/assets/js/popper.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/slick.min.js"></script>
    <script src="/assets/js/jquery.mb.YTPlayer.min.js"></script>

    <script src="/assets/js/jquery.waypoints.min.js"></script>
    <script src="/assets/js/jquery.easing.1.3.js"></script>

    <script src="/assets/js/main.js"></script>

	</body>
</html>
