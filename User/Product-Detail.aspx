<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Product-Detail.aspx.cs" Inherits="User_Product_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
   

			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="Home.aspx">Home</a></span> / <span>Product Details</span></p>
					</div>
				</div>
			</div>
		<div class="colorlib-product">
			<div class="container">
     <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
				<div class="row row-pb-lg product-detail-wrap">
					<div class="col-sm-8">

							<div class="item">
								<div class="product-entry border">
									<a href="#" class="prod-img">
                                        <%--<img src="<%# ResolveUrl("~/Image/") + Eval("p_image") %>"/>--%>
                  <asp:Image ID="pimage" runat="server" ImageUrl='<%# Eval("p_image") %>' CssClass="img-fluid"  Width="750px" Height="600px"/>
									</a>
								</div>
							</div>
					</div>
					<div class="col-sm-4">
						<div class="product-desc">
							<h3><%# Eval("p_name") %></h3>
							<p class="price">
                <h2><a href="#">Rs. <%# Eval("p_price") %></a></h2>
								<span></span> 
								<span class="rate">
									<i class="icon-star-full"></i>
									<i class="icon-star-full"></i>
									<i class="icon-star-full"></i>
									<i class="icon-star-full"></i>
									<i class="icon-star-half"></i>
									(74 Rating)
								</span>
							</p>
							<p><%# Eval("p_description") %></p>
							<div class="size-wrap">
								<div class="block-26 mb-2">
									<h4>Size</h4>
				               <ul>
				                  <li><a href="#"><%# Eval("p_size") %></a></li>
				                
				               </ul>
				            </div>
							</div>
                     
                  	<div class="row">
	                  	<div class="col-sm-12 text-center">
                              <%if (Session["user"] == "true")
                                  { %>
									<p class="addtocart"><a href="addToCart.aspx?p_id=<%# Eval("p_id") %>" class="btn btn-primary btn-addtocart"><i class="icon-shopping-cart"></i> Add to Cart</a></p>
                              <%} %>
								</div>
							</div>
						</div>
					</div>
				</div>
            </ItemTemplate>
            </asp:DataList>
			</div>
		</div>

</asp:Content>

