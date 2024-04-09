<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="User_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="Home.aspx">Home</a></span> / <span>Contact</span></p>
					</div>
				</div>
			</div>
		</div>


		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h3>Contact Information</h3>
						<div class="row contact-info-wrap">
							<div class="col-md-3">
								<p><span><i class="icon-location"></i></span> Shop-9 MARSCODE, <br>Jamnagar, Gujarat [INDIA]</p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-phone3"></i></span> <a href="tel://1234567920">+91 90233 45561</a></p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-paperplane"></i></span> <a href="mailto:info@yoursite.com">info@marscode.com</a></p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-globe"></i></span> <a href="https://marscode.in/">marscode.in</a></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="contact-wrap">
							<h3>Get In Touch</h3>
							<form action="#" class="contact-form">
								<div class="row">
									
									
									<div class="w-100"></div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="email">Name</label>
											
                                            <asp:TextBox ID="name" CssClass="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
										</div>
									</div>
									<div class="w-100"></div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="subject">Email</label>
											
                                            <asp:TextBox ID="email" CssClass="form-control"  runat="server"></asp:TextBox>
										</div>
									</div>
									<div class="w-100"></div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="message">Message</label>
											<asp:TextBox ID="message" TextMode="MultiLine" Height="100" Rows="3" Columns="10" CssClass="form-control"  runat="server"></asp:TextBox>
                                            
										</div>
									</div>
									<div class="w-100"></div>
									<div class="col-sm-12">
										<div class="form-group">
											
                                            <asp:Button ID="sendMsg" CssClass="btn btn-primary" OnClick="sendMsg_Click" runat="server" Text="Send Message" />
										</div>
									</div>
								</div>
							</form>		
						</div>
					</div>
					<div class="col-md-6">
						<div  class="colorlib-map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3686.682098323191!2d70.05190759999999!3d22.4785776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39576b7b97a1af77%3A0x3d9f6c79a4a6a1f8!2sMarsCode!5e0!3m2!1sen!2sin!4v1710631349484!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>		
					</div>
				</div>
			</div>
		</div>
</asp:Content>

