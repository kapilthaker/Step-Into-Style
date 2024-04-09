<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Sneakers.aspx.cs" Inherits="User_Sneakers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <div class="colorlib-product">
			<div class="container">
                <div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
						<h2>Sneakers</h2>
					</div>
                    <div class="row row-pb-md">
                        <asp:DataList ID="DataList1" class="row row-pb-md flex" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand1">
                        <ItemTemplate>
                            
                                <div class="col-lg-12 mb-4 text-center">
                                    <div class="product-entry border">
                                        <a href="Product-Detail.aspx" class="prod-img">
                                            <%--<img src="<%#"~/Image/" + Eval("p_image") %>"  alt="" width="300px">--%>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("p_id") %>'>
                  <asp:Image ID="pimage" runat="server" ImageUrl='<%# Eval("p_image") %>'  class="img-fluid"/>
                                            
                                        </asp:LinkButton>

                                        </a>
                                    </div>
                                    <div class="desc">
                                        <h2><a href="#"><%# Eval("p_name") %></a></h2>
                                        <span class="price">Rs. <%# Eval("p_price") %></span>
                                        
                                    </div>
                                </div>
                            </ItemTemplate>
                            </asp:DataList>
                        
                            </div>

				</div>
                </div>
        </div>
</asp:Content>

