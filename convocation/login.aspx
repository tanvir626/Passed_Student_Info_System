<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="convocation.login" %>



<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Hi</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="https://www.yudaah.com/demo/blue-simple-login-page-html-template/assets/images/fav.jpg">
    <link rel="stylesheet" href="https://www.yudaah.com/demo/blue-simple-login-page-html-template/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.yudaah.com/demo/blue-simple-login-page-html-template/assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" type="text/css" href="https://www.yudaah.com/demo/blue-simple-login-page-html-template/assets/css/style.css">
</head>
    <body class="h-100">
        <form id="form1" runat="server">
        <div class="container-fluid full-bg h-100">
           <div class="container h-100">
               <div class="row no-margin h-100">
                   <div class="bg-layer d-flex col-md-4">
                        <div class="login-box row" style="border-top-color:white">
                            <h3>Admin login</h3>
                            <div class="input-group mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" ><i class="fas fa-at"></i></span>
                              </div>
                              <asp:TextBox ID="txtuser" runat="server" type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"/>
                            </div>
                            <div class="input-group mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" ><i class="fas fa-key"></i></span>
                              </div>
                              <asp:TextBox ID="txtpass" runat="server" type="password" class="form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon1"/>
                            </div>
                           <%-- <asp:Button ID="Button1" runat="server" Text="Button" OnClick="btnlogin" />--%>

                           <%-- <asp:Button id="btnlogin" runat="server" Text="Login" class="btn btn-primary" OnClick="btnlogin" />--%>
                           <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary" OnClick="btnlogin" />
                        </div>
                    </div>    
               </div>
              
           </div>
            
        </div>
    
            </form>
<script src="https://www.yudaah.com/demo/blue-simple-login-page-html-template/assets/js/jquery-3.2.1.min.js"></script>
<script src="https://www.yudaah.com/demo/blue-simple-login-page-html-template/assets/js/popper.min.js"></script>
<script src="https://www.yudaah.com/demo/blue-simple-login-page-html-template/assets/js/bootstrap.min.js"></script>        
<script src="https://www.yudaah.com/demo/blue-simple-login-page-html-template/assets/js/script.js"></script>


</body>

</html>