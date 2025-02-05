﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Adminn/Admin.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Adminn_AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="main-panel">
        <div class="content-wrapper">
            <form runat="server">
                <div class="row">
                    <div class="col-md-9 grid-margin stretch-card" style="display: block; margin-left: auto; margin-right: auto;">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Category</h4>
                                <p class="card-description">Add Category</p>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            autofocus
                                            ID="name"
                                            type="text"
                                            class="form-control"
                                            placeholder="Category Name: "
                                            runat="server" />
                                        
                                    </div>
                                    <p class="card-description mt-3"  >Category Status</p>
                                    <asp:RadioButton ID="Active" runat="server" Text="Active" GroupName="status" class="form-check"/>
                                    <asp:RadioButton ID="Inactive" runat="server" Text="Inactive" GroupName="status" class="form-check"/>
                                    <asp:Button
                                        runat="server"
                                        ID="addCategoryBtn"
                                        class="btn btn-inverse-primary btn-rounded btn-icon mt-5"
                                        Text="Submit"
                                        OnClick="addCategoryBtn_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
            </form>
        </div>
    </div>
</asp:Content>

