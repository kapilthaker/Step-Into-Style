<%@ Page Title="" Language="C#" MasterPageFile="~/Adminn/Admin.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Adminn_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">All Products</h4>
                            <a href="AddProduct.aspx" class="btn btn-inverse-primary btn-rounded btn-icon" style="float: right; margin-top: -50px">
                                <i class="ti-plus"></i>
                            </a>
                             <div class="table-responsive">
                                <form runat="server">
                                    <table class="table">
                                        <thead style="text-align: center">
                                            <tr>
                                                <th>Sr No.</th>
                                                <th>Category Name</th>
                                                <th>Product Name</th>
                                                <th>Product Price</th>
                                                <th>Product Size</th>
                                                <th>Product Description</th>
                                                <th>Product Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody style="text-align: center">
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td><%#(Container.ItemIndex + 1).ToString() %></td>
                                <td><%#Eval("CategoryName") %></td>
                                <td><%#Eval("p_name") %></td>
                                <td><%#Eval("p_price") %></td>
                                <td><%#Eval("p_size") %></td>
                                <td class="text-wrap"><%#Eval("p_description") %></td>
                                <td><%#Eval("p_status") %></td>
                                <td>
                                <a href="updateProduct.aspx?id=<%# Eval("p_id") %>" class="btn btn-inverse-dark btn-rounded btn-icon">
                                    <i class="mdi mdi-debug-step-out"></i>
                                </a>
                                <asp:LinkButton
                                    runat="server"
                                    CommandName="Delete"
                                    CommandArgument='<%# Eval("p_id") %>'
                                    class="btn btn-inverse-info btn-rounded btn-icon"
                                    OnClientClick="return confirm('Are you sure you want to delete this category?');"
                                    >
                                                                    <i class="mdi mdi-delete"></i>
                                </asp:LinkButton>
                                    </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                                </tbody>
                                        </table>
    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
</asp:Content>

