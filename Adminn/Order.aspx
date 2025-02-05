﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Adminn/Admin.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Adminn_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">All Orders</h4>
                            <div class="table-responsive">
                                <form runat="server">
                                    <table class="table">
                                        <thead style="text-align: center">
                                            <tr>
                                                <th>Sr No.</th>
                                                <th>User Name</th>
                                                <th>Product Name</th>
                                                <th>Product Quanity</th>
                                                <th>Grand Total</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody style="text-align: center">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%# (Container.ItemIndex + 1).ToString() %></td>
                                                        <td><%# Eval("UserName") %></td>
                                                        <td><%# Eval("ProductName") %></td>
                                                        <td><%# Eval("p_qty") %></td>
                                                        <td><%# Eval("o_total") %></td>
                                                        <td><%# Eval("status") %></td>
                                                        <td>
                                                         <asp:LinkButton
                                                                runat="server"
                                                                CommandName="Delete"
                                                                CommandArgument='<%# Eval("o_id") %>'
                                                                class="btn btn-inverse-info btn-rounded btn-icon"
                                                                OnClientClick="return confirm('Are you sure you want to delete this order?');"
                                                                OnClick="deleteOrder">
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
    </div>
</asp:Content>

