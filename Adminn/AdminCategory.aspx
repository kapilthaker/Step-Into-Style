﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Adminn/Admin.master" AutoEventWireup="true" CodeFile="AdminCategory.aspx.cs" Inherits="Adminn_AdminCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">All Categories</h4>
                            <a href="AddCategory.aspx" class="btn btn-inverse-primary btn-rounded btn-icon" style="float: right; margin-top: -50px">
                                <i class="ti-plus"></i>
                            </a>
                             <div class="table-responsive">
                                <form runat="server">
                                    <table class="table">
                                        <thead style="text-align: center">
                                            <tr>
                                                <th>Sr No.</th>
                                                <th>Name</th>
                                                <th>Category</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody style="text-align: center">
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td><%#(Container.ItemIndex + 1).ToString() %></td>
                                <td><%#Eval("c_name") %></td>
                                <td><%#Eval("c_status") %></td>
                                <td>
                                <a href="updateCategory.aspx?id=<%# Eval("c_id") %>" class="btn btn-inverse-dark btn-rounded btn-icon">
                                    <i class="mdi mdi-debug-step-out"></i>
                                </a>
                                <asp:LinkButton
                                    runat="server"
                                    CommandName="DeleteCategory"
                                    CommandArgument='<%# Eval("c_id") %>'
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

