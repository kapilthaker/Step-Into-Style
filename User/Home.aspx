<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <aside id="colorlib-hero">
				<div class="flexslider">
					<ul class="slides">
					<li style="background-image: url(images/img_bg_1.jpg);">
						<div class="overlay"></div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-6 offset-sm-3 text-center slider-text">
									<div class="slider-text-inner">
										<div class="desc">
											<h1 class="head-1">Men's</h1>
											<h2 class="head-2">Shoes</h2>
											<h2 class="head-3">Collection</h2>
											<p class="category"><span>New trending shoes</span></p>
											<p><a href="#" class="btn btn-primary">Shop Collection</a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(images/img_bg_2.jpg);">
						<div class="overlay"></div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-6 offset-sm-3 text-center slider-text">
									<div class="slider-text-inner">
										<div class="desc">
											<h1 class="head-1">Huge</h1>
											<h2 class="head-2">Sale</h2>
											<h2 class="head-3"><strong class="font-weight-bold">50%</strong> Off</h2>
											<p class="category"><span>Big sale sandals</span></p>
											<p><a href="#" class="btn btn-primary">Shop Collection</a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(images/img_bg_3.jpg);">
						<div class="overlay"></div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-6 offset-sm-3 text-center slider-text">
									<div class="slider-text-inner">
										<div class="desc">
											<h1 class="head-1">New</h1>
											<h2 class="head-2">Arrival</h2>
											<h2 class="head-3">up to <strong class="font-weight-bold">30%</strong> off</h2>
											<p class="category"><span>New stylish shoes for men</span></p>
											<p><a href="#" class="btn btn-primary">Shop Collection</a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					</ul>
				</div>
			</aside>
    <div class="colorlib-product">
			<div class="container">
                <div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
						<h2>Best Sellers</h2>
					</div>
                    <div class="row row-pb-md">
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

                        <ItemTemplate>
                            
                                <div class="col-lg-3 mb-4 text-center">
                                    <div class="product-entry border">
                                        <a href="Product-Detail.aspx"  class="prod-img">
                                            <img src="<%#"~/Image/" + Eval("p_image") %>" class="img-fluid" alt="">
               
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("p_id") %>'>
                                                   <asp:Image ID="pimage" runat="server" ImageUrl='<%# Eval("p_image") %>' CssClass="img-fluid" />
                                            </asp:LinkButton>

                                        </a>
                                    <div class="desc">
                                        <h2><a href="#"><%# Eval("p_name") %></a></h2>
                                        <span class="price"><%# Eval("p_price") %></span>
                                    </div>
                                    </div>
                                </div>
                         
                            </ItemTemplate>
                        </asp:Repeater> 
                        </div>
				</div>
                </div>
        </div>
</asp:Content>

