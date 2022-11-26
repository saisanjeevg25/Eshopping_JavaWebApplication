<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.active>a:focus,.navbar-inverse .navbar-nav>.active>a:hover {
            color:#80FF00;
            background-color:#008080;
            }
.navbar-inverse .navbar-nav>li>a:focus,.navbar-inverse .navbar-nav>li>a:hover {
            color:#80FF00;
            background-color:#008080;
            }
.navbar-inverse {
            background-color: #80FF00;
            }
.navbar-inverse .navbar-nav>li>a {
            color:#008080;
            }
#blink {
            font-family: "Brush Script MT";
            font-size: 65px;
            font-weight: bold;
            color:#008080;
            transition: 0.5s;
            }
     .jumbotron {
      margin-bottom: 0;
      background-color: #ffffff;
    }
</style></head>
<div class="jumbotron-fixed-top">
  <div class="container text-center">
    <h1 id="blink">SSV's  Bikes & Cars<img src="${images}/rsz_2logo.png"></h1>
  </div>
</div>
<nav class="navbar navbar-inverse " role="navigation" >
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			    <li id="home"><a href="${contextRoot}/home"><i class="fa">&#xf015;</i>&nbsp;HOME</a></li>
				<li id="about"><a href="${contextRoot}/about"><i class="fa">&#xf129;</i>&nbsp;About</a></li>

				<li id="contact"><a href="${contextRoot}/contact"><i class="fa">&#xf098;</i>&nbsp;Contact</a></li>

				<li id="listProducts"><a
					href="${contextRoot}/show/all/products"><i class="fa">&#xf290;</i>&nbsp;View Products</a></li></ul>
					
					
					
					
				<!-- <li id="adminProduct"><a href="${contextRoot}/admin">Admin</a></li> -->
				
				<security:authorize access="hasAuthority('ADMIN')">
				
			<!-- 	<li class="dropdown" id="adminProduct">
                      <a class="dropdown-toggle" data-toggle="dropdown" href="${contextRoot}/admin">Admin
                         <span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li><a href ="${contextRoot}/admin">Category</a></li>
                            <li><a href="${contextRoot}/admin/admin/Products">Product</a></li>
                           
                          </ul>
                      </li>
                     -->
                     <li><a href="${contextRoot}/admin">Category</a></li>
						<li><a	href="${contextRoot}/admin/admin/Products">Product</a></li>
                     
				
				</security:authorize>
				
				<ul class="nav navbar-nav navbar-right">
				
				<security:authorize access="isAnonymous()">
					<li id="register"><a href="${contextRoot}/register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
							
					<li id="login"><a href="${contextRoot}/login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
							</security:authorize>
							
				<%--	<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>--%>
							
							
					<security:authorize access="isAuthenticated()">
					<li><a href="${contextRoot}/perform_logout"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
							</security:authorize>
				</ul>
		</div>

	</div>
	<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>

