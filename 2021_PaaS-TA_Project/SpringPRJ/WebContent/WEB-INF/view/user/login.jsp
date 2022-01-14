<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- meta charset -->
<meta charset="utf-8">
<!-- site title -->
<title>AII FOR YOU</title>
<!-- meta description -->
<meta name="description" content="">
<!-- mobile viwport meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- fevicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="/resource/favicon.ico">

<!-- ================================
        CSS Files
        ================================= -->
<link
	href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i|Open+Sans:400,600,700,800"
	rel="stylesheet">
<link rel="stylesheet" href="/resource/css/themefisher-fonts.min.css">
<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
<link rel="stylesheet" href="/resource/css/main.css">
<link rel="stylesheet" href="/resource/css/style.css">
</head>

<body>



	<div class="preloader">
		<div class="loading-mask"></div>
		<div class="loading-mask"></div>
		<div class="loading-mask"></div>
		<div class="loading-mask"></div>
		<div class="loading-mask"></div>
	</div>



	<main class="site-wrapper">
		<div class="pt-table">
			<div class="pt-tablecell page-contact relative">
				<!-- .close -->
				<a href="./" class="page-close"><i class="tf-ion-close"></i></a>
				<!-- /.close -->

				<div class="container">
					<div class="row">
						<div
							class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
							<div class="page-title text-center login_imgbiv">
								<h2>
									<a href="/index.do"><img src="/resource/img/logorm.png" class="login_logo"></a>
									<!--<h2>All <span class="primary">for you</span><span class="title-bg">Welcome</span>-->
								</h2>
								<p>
									AllForYou는 전 세계 알레르기 환자를 위한 실시간 알레르기 정보 확인 사이트입니다.<br> 당신을 위한, 안전한 먹거리를 위해 ALL FOR YOU
								</p>
							</div>
						</div>
				
					</div>
					<!-- /.row -->

					<div class="row">

						<div
							class="col-xs-12 col-sm-7 col-md-7 col-md-offset-1 col-lg-offset-2 login_box">
							<div class="section-title clear">
								<h3>로그인</h3>
								<span class="bar-dark"></span> <span class="bar-primary"></span>
							</div>


							<!-- <div class="col-xs-12 col-sm-6">
                                        <div class="input-field name">
                                            <span class="input-icon" id="name" ><i class="tf-profile-male"></i></span>
                                            <input type="text" class="form-control"  placeholder="Enter your name">
                                        </div>
                                    </div> -- ./col- -->
							<form action="/Projects/index.do">
								<div id="contact-form" class="row contact-form no-gutter"
									method="post">
									<div class="col-xs-12 col-sm-6 email_length">
										<div class="input-field email">
											<span class="input-icon" id="email"><i
												class="tf-envelope2"></i></span> <input type="email"
												class="form-control" name="id" placeholder="아이디를 입력해주세요."></input>
										</div>
									</div>
									<!-- ./col- -->
									<div class="col-xs-12 col-sm-12">
										<div class="input-field">
											<span class="input-icon" id="subject"><i
												class="tf-ion-android-unlock"></i></span> <input type="password"
												class="form-control" name="pwd" placeholder="비밀번호를 입력해주세요."></input>
										</div>
									</div>
									<!-- ./col- -->
									<!--<div class="col-xs-12 col-sm-12">
                                        <div class="input-field message">
                                            <span class= "input-icon" ><i class="tf-pricetags"></i></span>
                                            <textarea name="message" id="message" class="form-control" placeholder="Write your message"></textarea>
                                        </div>
                                    </div>  ./col- -->
									<div class="col-xs-12 col-sm-12 div_margin">
										<div class="input-field ">
											<span class="btn-border email_length">
												<button type="submit"
													class="btn btn-primary btn-custom-border text-uppercase email_length">로그인</button>
											</span>
										</div>
									</div>
								</div>
							</form>
							<div class="col-xs-12 col-sm-12 div_margin">
								<!--<div class="msg-success">Your Message was sent successfully</div>-->
								<div class="msg-failed">뭔가 잘못되었어요, 다시 시도해 보세요</div>
							</div>
							<!-- ./col- -->
							<form action="/user/join.do">
								<div id="contact-form" class="row contact-form no-gutter"
									method="post">
									<div class="col-xs-12 col-sm-12">
										<div class="input-field">
											<span class="btn-border email_length">
												<button type="submit"
													class="btn btn-primary btn-custom-border text-uppercase email_length">회원가입</button>
											</span>
										</div>
									</div>
								</div>
							</form>
							<a href="/user/forgot.do" class="a_styl">비밀번호를 잊으셨나요?</a>
							<!--<div class="msg-success">Your Message was sent successfully</div> 
							<div class="msg-failed">뭔가 잘못되었어요, 다시 시도해 보세요</div>-->
						</div>
						<!-- /.col- -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container -->

				<nav class="page-nav clear">
					<div class="container">
						<div class="flex flex-middle space-between">
							<span class="prev-page"><a href="/index.do"
								class="link">&larr; 이전</a></span> <span class="copyright hidden-xs">Copyright
								&copy; 2021 AII FOR YOU, All Rights Reserved.</span>
						</div>
					</div>
					<!-- /.page-nav -->
				</nav>
				<!-- /.container -->

			</div>
			<!-- /.pt-tablecell -->
		</div>
		<!-- /.pt-table -->
	</main>
	<!-- /.site-wrapper -->

	<!-- ================================
        JavaScript Libraries
        ================================= -->
	<script src="/resource/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="/resource/js/vendor/bootstrap.min.js"></script>
	<script src="/resource/js/jquery.easing.min.js"></script>
	<script src="/resource/js/isotope.pkgd.min.js"></script>
	<script src="/resource/js/jquery.nicescroll.min.js"></script>
	<script src="/resource/js/owl.carousel.min.js"></script>
	<script src="/resource/js/jquery-validation.min.js"></script>
	<script src="/resource/js/form.min.js"></script>
	<script src="/resource/js/main.js"></script>
	
</body>
</html>