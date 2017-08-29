<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<header class="header clearfix">
        	<!-- Navigation Menu Starts -->
            <nav class="navbar navbar-default navbar-fixed-top box-shadow-10">
              <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="#"><img class="img-responsive" src="images/logo.png" alt=""/></a>
                </div>
            
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                    <li><a class="active" href="main.do">HOME</a></li>
                    <li><a href="game.do">Let's Bet!!</a></li>
                    <li><a href="db.do">Database</a></li>
                    <!-- 로그인 -->
						<c:if test="${empty id}">
							<li>
								<!-- Trigger the modal with a button -->
								<a class="sign-in" data-toggle="modal" data-target="#sign-in" style="cursor: pointer;">SIGN IN</a>
								<div class="modal fade" id="sign-in" role="dialog">
									<div class="modal-dialog">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">x</button>
											</div>
											<div class="modal-body">
												<div class="row text-center">
													<h2 class="btn44">User Login</h2>
													<!-- user-login -->
														<div class="user-account">
															<!-- form -->
															<form method="post" action="${path}/sign.do?method=id-check">
																<div class="form-group">
																	<input type="text" class="form-control"	placeholder="ID" name="id">
																</div>
																<div class="form-group">
																	<input type="password" class="form-control" placeholder="Password" name="password">
																</div>
																<button type="submit" class="btn">Login</button>
															</form>
															<!-- form -->
														</div>
														<!-- user-login -->
													<!-- row -->
												</div>
											</div>
											<div class="modal-footer"></div>
										</div>
									</div>
								</div>
								<!-- Modal -->
							</li>
							</c:if>
							<!-- 로그인 -->
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
            </nav>
            <!-- Navigation Menu End -->
        </header>	
</body>
</html>