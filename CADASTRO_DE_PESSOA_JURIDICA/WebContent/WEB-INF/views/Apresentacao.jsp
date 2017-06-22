<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Apresentação</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="icon" type="resources/images/png" href="resources/images/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="resources/images/png" href="resources/images/favicon-16x16.png" sizes="16x16" />
<link type="resources/images/png" href="/resources/images/hero.jpg" />

<link type="text/css" rel="stylesheet"
	href="resources/css/normalize.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/jquery.fancybox.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/flexslider.css" />
<link type="text/css" rel="stylesheet" href="resources/css/styles.css" />
<link type="text/css" rel="stylesheet" href="resources/css/queries.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/etline-font.css" />
<link rel="stylesheet"
	href="resources/bower_components/animate.css/animate.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<script type="text/javascript" charset="utf-8"
	src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write(
							'<script src="resources/js/vendor/jquery-1.11.2.min.js"><\/script>')
</script>
<script src="resources/bower_components/retina.js/dist/retina.js"></script>
<script src="resources/js/jquery.fancybox.pack.js"></script>
<script src="resources/js/vendor/bootstrap.min.js"></script>
<script src="resources/js/scripts.js"></script>
<script src="resources/js/jquery.flexslider-min.js"></script>
<script src="resources/bower_components/classie/classie.js"></script>
<script
	src="resources/bower_components/jquery-waypoints/lib/jquery.waypoints.min.js"></script>
<style>
background
:
 
url
("../resources/images/hero
.jpg
")
 
center
 
center
;
</style>
<script>
	(function(b, o, i, l, e, r) {
						b.GoogleAnalyticsObject = l;
						b[l] || (b[l] = function() {
							(b[l].q = b[l].q || []).push(arguments)
						});
						b[l].l = +new Date;
						e = o.createElement(i);
						r = o.getElementsByTagName(i)[0];
						e.src = '//www.google-analytics.com/analytics.js';
						r.parentNode.insertBefore(e, r)
					}(window, document, 'script', 'ga'));
	ga('create', 'UA-XXXXX-X', 'auto');
	ga('send', 'pageview');
</script>
</head>
<body id="top">
	<!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
	<section class="hero">

		<section class="navigation">
			<header>
				<div class="header-content">
					<div class="logo">
						<a href="#">Projeto Faculdade Drummond</a>
					</div>
					<div class="header-nav">
						<nav>
							<ul class="member-actions">
								<li><a href="#download" class="btn-white btn-small">logar
										no sistema</a></li>
							</ul>
						</nav>
					</div>
					<div class="navicon">
						<a class="nav-toggle" href="#"><span></span></a>
					</div>
				</div>
			</header>
		</section>

		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="hero-content text-center">
						<h1>"Os homens mais inteligentes são os de poucas palavras !"
						</h1>
						<p class="intro">Apresentando "Projeto Faculdade". Um sistema
							de cadastro de pessoas jurídicas, com a possibilidade de realizar
							um cadastro simples e de alta confiança !</p>
					</div>
				</div>
			</div>
		</div>
		<div class="down-arrow floating-arrow">
			<a href="#"><i class="fa fa-angle-down"></i></a>
		</div>
	</section>

	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="hero-content text-center">
						<h1>
							<font color=white>Objetivo</font>
						</h1>
						<p class="intro">Nosso objetivo foi desenvolver um sistema que
							gerecia-se e auxilia-se o cadastro de pessoas jurídicas,
							oferecendo uma maior portabilidade e flexilidade para os
							usuários.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="down-arrow floating-arrow">
			<a href="#"><i class="fa fa-angle-down"></i></a>
		</div>
	</section>

	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="hero-content text-center">
						<h1>
							<font color=white>Funcionalidades do nosso sistema</font>
						</h1>
						<p class="intro">O sistema possui a validação dos dados que
							são inseridos de forma que o usuário não precise se preocupar,
							foi feita a implementação da validação do CPF de forma que quando
							o mesmo inserir um numero invalido o sistema acusa um erro
							informando que o "CPF inserido não e valido", dessa forma o
							usuário devera informa um CPF valido, a mesma implementação foi
							feita para o CNPJ, onde o usuário deve digita um CNPJ valido,
							dessa forma e feita a mesma verificação que a do CPF, para o CEP
							foi implementado a funcionalidade de buscar automatizada via o
							site dos correios, quando o usuário inserir o CEP o mesmo deve
							clicar fora da caixa do CEP para que o próprio sistema encontre
							para ele sua localidade, o usuário também não precisa se
							preocupar com a data de constituição, pois o sistema faz o
							cadastro da data automaticamente.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="down-arrow floating-arrow">
			<a href="#"><i class="fa fa-angle-down"></i></a>
		</div>
	</section>

	<section class="sign-up section-padding text-center" id="download">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<h3><font color=white>Para logar no sistema entre com seu login e senha !</font></h3>
					<form class="signup-form"
						action="<%=request.getContextPath()%>/login" method="POST">
						<div class="form-input-group">
							<i class="fa fa-envelope"></i> <input type="text" id="user"
								placeholder="Username" name="username">
						</div>
						<div class="form-input-group">
							<i class="fa fa-lock"></i> <input type="password"
								placeholder="Coloque sua senha" name="password">

						</div>
						<input type="submit" class="btn-fill sign-up-btn" value="Login">
					</form>
				</div>
			</div>
		</div>
	</section>
	<section class="to-top">
		<div class="container">
			<div class="row">
				<div class="to-top-wrap">
					<a href="#top" class="top"><i class="fa fa-angle-up"></i></a>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="footer-links">
						<ul class="footer-group">
							<li><a href="#download">logar no sistema</a></li>
						</ul>
						<p>
							Copyright © 2017 | Desenvolvido por Francislin Dos Reis<br> 
							<a href="http://www.drummond.com.br/">Projeto Faculdade</a>
							<a href="http://www.drummond.com.br/"></a> | Projeto
							Faculdade Drummond <span class="fa fa-heart pulse2"></span>.
						</p>
					</div>
				</div>
				<div class="social-share">
					<p>COMPARTILHE COM OS SEUS AMIGOS</p>
					<a href="https://twitter.com/" class="twitter-share">
					<i class="fa fa-twitter"></i>
					</a> 
					<a href="http://www.facebook.com/" class="facebook-share">
					<i class="fa fa-facebook"></i>
					</a>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
