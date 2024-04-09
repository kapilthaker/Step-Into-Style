<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Adminn_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <title>Star Admin2 </title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/feather/feather.css"/>
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css"/>
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css"/>
  <link rel="stylesheet" href="vendors/typicons/typicons.css"/>
  <link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css"/>
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css"/>
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/vertical-layout-light/style.css"/>
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                  Step Into Style
              </div>
              <h4>Hello! let's get started</h4>
              <h6 class="fw-light">Sign in to continue.</h6>
              <div class="pt-3">
                <div class="form-group">
                      <asp:TextBox ID="txtuser" class="form-control form-control-lg" autofocus runat="server" placeholder="Username"></asp:TextBox>
                </div>
                <div class="form-group">
                  <%--<input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">--%>
              <asp:TextBox ID="txtpass" runat="server" CssClass="form-control form-control-lg" placeholder="Password" TextMode="Password" MaxLength="9"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Must Required Password!" ControlToValidate= "txtpass" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                <div class="mt-3">
                  <%--<a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../index.html">SIGN IN</a>--%>
                     <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" OnClick="btnlogin_Click"></asp:Button><br/>
                </div>
                
              
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
        </div>
    </form>
     <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
</body>
</html>
