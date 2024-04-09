﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="authentication.aspx.cs" Inherits="User_authentication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Authentication</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/styleLogin.css">
</head>
<body>
    <form id="form1" runat="server">
    
        <section class="ftco-section">
		<div class="container">
		
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="wrap">
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Login</h3>
			      		</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
									</p>
								</div>
			      	</div>
							<form action="#" class="signin-form">
			      	
		            <div class="form-group">
		              
                         <asp:TextBox ID="txtEmail" type="email" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
		            </div>
                       <div class="form-group">
                         <asp:TextBox ID="txtPassword" type="password" class="form-control" placeholder ="Password" runat="server"></asp:TextBox>
		            </div>
                      
                    
		            <div class="form-group">
                        <asp:Button ID="Button1" class="form-control btn btn-primary rounded submit px-3" runat="server" Text="Login" OnClick="LoginClick" />
		            </div>
		            <div class="form-group d-md-flex">
		            	<div class="w-50 text-left">
			            	<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="#">Forgot Password</a>
									</div>
		            </div>
		          </form>
		          <p class="text-center">Not a member? <a data-toggle="tab" href="UserRegistration.aspx">Register</a></p>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
       
    </form>
    
</body>
</html>
