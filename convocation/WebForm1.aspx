<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="convocation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <h1>Welcome</h1>
        <h2>&nbsp;Registration From</h2>
        <div class="form-wrapper">
            
                <div class="form-item">
                    <label for="fullname">Student Image:</label>&nbsp;<asp:FileUpload ID="fpmemberimage" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="fpmemberimage" ForeColor="Red"></asp:RequiredFieldValidator>
                    
&nbsp;<label for="fullname"></label>

                </div>
            <h3>Personal Information</h3>
                <div class="form-item">
                    <label for="fullname">Member Name:</label>&nbsp;<asp:TextBox ID="txtmembername" runat="server"></asp:TextBox>
                    <label for="fullname"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmembername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                    </div>
            <div class="form-item">
                    <label for="username">:From</label>&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:DropDownList ID="ddlfrom" runat="server" AutoPostBack="True">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>School</asp:ListItem>
                        <asp:ListItem>College</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                &nbsp;</div>
            <div class="form-item">
                    <label for="username">Gender</label>&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:DropDownList ID="ddlgender" runat="server" AutoPostBack="True">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                &nbsp;</div>

                <div class="form-item">
                    <label for="email">Date of Birth</label>
                    <asp:TextBox ID="txtdateofbirth" Type="Date" runat="server"></asp:TextBox>
                </div>

                <div class="form-item">
                    <label for="email">Bload Group:</label>
                    <asp:DropDownList ID="ddlbloodgroup" runat="server" AutoPostBack="True">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
             <hr/>
                <h3>Contact Information</h3>
                <div class="form-item">
                    <label for="pstate">Mobile:</label>&nbsp;<asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                    <label for="pstate"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmobile" ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                    </div>
                <div class="form-item">
                    <label for="pcity">Email:</label>
                    
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                  
                </div>
                <div class="form-item">
                    <label for="pzip">Contact Address:</label>
                    <asp:TextBox ID="txtcontactaddress" runat="server"></asp:TextBox>
                  </div>

                <hr>
                <h3>Professional Information</h3>
               <div class="form-item">
                    <label for="pzip">Present Profession</label>
                    <asp:TextBox ID="txtpresentprofession" runat="server"></asp:TextBox>
                  </div>
            <div class="form-item">
                    <label for="pzip">Previous Profession</label>
                    <asp:TextBox ID="txtpreviousprofession" runat="server"></asp:TextBox>
                  </div>
            <hr />

                <h3>Registration Information</h3>
            <div class="form-item">
                    <label for="pzip">Registration Fee:</label>
                    <asp:TextBox ID="txtregistrationfee" runat="server"></asp:TextBox>
                  </div>
            <div class="form-item">
                    <label for="pzip">Deposit Reference.No</label>&nbsp;<asp:TextBox ID="txtdepositreference" runat="server"></asp:TextBox>
                    <label for="pzip"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtdepositreference" ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                  </div>

             <div class="form-item">
                    <label for="pzip">Deposit Slip</label>&nbsp;<asp:FileUpload ID="fpslip" runat="server" />
&nbsp;<label for="pzip"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="fpslip" ForeColor="Red"></asp:RequiredFieldValidator>
                    </label>
                    <p>(less than 5 Mb)</p>
                  </div>
           
          <div class="text-center" style="align:center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnregistration"  runat="server" Text="Register" OnClick="btnsave" />
          </div>
        </div>
            </div>
    </form>
</body>
</html>
