<%@ Page Title="" Language="C#" MasterPageFile="~/Adminn/Admin.master" AutoEventWireup="true" CodeFile="updateProduct.aspx.cs" Inherits="Adminn_updateProduct" %>

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
                                <p class="card-description">Add Products</p>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:DropDownList ID="categoryList" DataValueField="c_id" DataTextField="c_name"  CssClass="form-control mb-2"  runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            autofocus
                                            ID="productName"
                                            type="text"
                                            class="form-control"
                                            placeholder="Product Name "
                                            runat="server" />
                                        
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            
                                            ID="productPrice"
                                            type="number"
                                            class="form-control"
                                            placeholder="Product Price "
                                            runat="server" />    
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:TextBox
                                            
                                            ID="productSize"
                                            type="text"
                                            class="form-control"
                                            placeholder="Product Size"
                                            runat="server" />
                                        
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                    <asp:TextBox
                                            
                                            ID="productDescription"
                                            type="text"
                                            class="form-control mb-2"
                                            placeholder="Product Description"
                                            runat="server" />
                                        
                                    </div>

                                    <label for="currentImage">Current Image</label>
                                    <br />

                                    <img class="w-25 h-25 my-3" runat="server" ID="CurrentProductImage" />
                                    <br />
                                <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">@</span>
                                        </div>
                                        <asp:FileUpload ID="imageFile" runat="server" class="form-control mb-2" />
                                    </div>
                             
                                    <p class="card-description mt-3"  >Product Status</p>
                                    <asp:RadioButton ID="Active" Text="Active" GroupName="status" CssClass="form-check" runat="server" />
                                    <asp:RadioButton ID="Inactive" Text="Inactive" GroupName="status" CssClass="form-check" runat="server" />
                                    <asp:Button
                                        runat="server"
                                        ID="addProductBtn"
                                        class="btn btn-inverse-primary btn-rounded btn-icon mt-5"
                                        Text="Submit"
                                        OnClick="updateProductBtn_Click" />
                                      <asp:Button
                                          runat="server"
                                          ID="Button1"
                                          class="btn btn-inverse-primary btn-rounded btn-icon mt-5"
                                          Text="Cancel"
                                          OnClick="CancelClick" />
                                </div>
                            </div>
                        </div>
                    </div>
            </form>
        </div>
        
    </div>
</asp:Content>

