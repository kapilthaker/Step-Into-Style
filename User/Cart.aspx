<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="User_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="colorlib-product">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-md-10 offset-md-1">
						<div class="process-wrap">
							<div class="process text-center active">
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center">
								<p><span>02</span></p>
								<h3>Checkout</h3>
							</div>
							<div class="process text-center">
								<p><span>03</span></p>
								<h3>Order Complete</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="row pt-10">
                <div class="col-lg-12">
                    <div
                        class="cart-product-details-wrap cart-product-details-wrap-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Subtotal</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <!-- Table Head Mobile display -->
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Product
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td>
                                                <div class="cart-product-img-wrap">
                                                    <div class="single-cart-product-box">
                                                        <div class="single-cart-img">
                                                           
                                                            <h2 class="h2"><%# Eval("p_name") %></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <!-- Table Head Mobile display -->
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Price
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td><b><%# Eval("p_price") %></b></td>
                                            <!-- Table Head Mobile display -->
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Quantity
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td>
                                                <b><%# Eval("p_qty") %></b>
                                            </td>
                                            <!-- Table Head Mobile display -->
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Subtotal
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td><b><%# Eval("o_total") %></b></td>
                                            <th
                                                class="d-lg-none d-md-none d-block d-sm-block"
                                                scope="row">Status
                                            </th>
                                            <!-- Table Head Mobile display End -->
                                            <td><b><%# Eval("status") %></b></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
                <asp:Button
                    runat="server"
                    class="mt-5 common-btn h-100 flex-shrink-0 border-0 border-radius-0 ms-lg-4 ms-2"
                    type="submit"
                    OnClick="placeOrder"
                    Text="Place Order" />
				

				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
						<h2>Related Products</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/item-1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Women's Boots Shoes Maca</a></h2>
								<span class="price">$139.00</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/item-2.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Women's Minam Meaghan</a></h2>
								<span class="price">$139.00</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/item-3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Men's Taja Commissioner</a></h2>
								<span class="price">$139.00</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/item-4.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">Russ Men's Sneakers</a></h2>
								<span class="price">$139.00</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</asp:Content>

