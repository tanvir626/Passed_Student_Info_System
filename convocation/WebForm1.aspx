<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="convocation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="Content/style.css" rel="stylesheet" />

    <style>
        .title {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 10px;
            margin-top: 10px;
            font-size: 24px;
            font-weight: 600;
        }

        .card {
            box-shadow: 0 0 5px red;
        }

        .form-item {
            display: block;
            width: 100%;
            height: 50px;
        }

        .input-label {
            width: 100% !important;
            margin-bottom: 5px;
        }

        .input-field {
            margin: 0px !important;
            width: 100% !important;
        }
    </style>
</head>
<body>
    <div class="container" style="background: white;">
        <div class="card" style="">
            <div class="row" style="width: 100%;">
                <div class="col-12" style="display: flex; justify-content: center; align-items: center; background:green; padding:0;">
                    hi this me
                </div>
                <div class="col-12" style="width: 100%;">

                    <form id="form1" runat="server">

                        <%-- <h1>Welcome</h1>--%>
                        <h2 class="title">Registration From</h2>
                        <div class="form-wrapper" style="margin: 0px !important;">


                            <div class="row">
                                <div class="col-3">Member ID </div>
                                <div class="col-3"> <asp:Label  ID="lblid" runat="server" ForeColor="Red" Font-Bold="true" /></div>
                                <div class="col-3">Passing Year</div>
                                <div class="col-3"><asp:TextBox class="input-field" ID="txtlpass" runat="server" ForeColor="Red" Font-Bold="true" /></div>

                                

                            </div>

                            <div class="form-item" style="">
                                <label class="input-label" style="">Member Image:</label>
                                <asp:FileUpload ID="fpmemberimage" runat="server" class="form-control input-field" Style="" />

                            </div>

                            <h3 class="title">General Information</h3>
                            <div class="form-item" style="">
                                <label class="input-label">Member Name:</label>
                                <asp:TextBox ID="txtmembername" class="form-control " runat="server"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmembername" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                            </div>
                            <div class="form-item">
                                <label class="input-label">School/College</label>&nbsp;&nbsp;&nbsp;
                   
                                <br />
                                <asp:DropDownList class="form-control" ID="ddlfrom" runat="server">
                                    <asp:ListItem Value="null">--Select--</asp:ListItem>
                                    <asp:ListItem>School</asp:ListItem>
                                    <asp:ListItem>College</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;
                            </div>
                            <div class="form-item">
                                <label class="input-label">Gender</label>&nbsp;&nbsp;&nbsp;
                   
                                <br />
                                <asp:DropDownList class="input-field" ID="ddlgender" runat="server">
                                    <asp:ListItem Value="null">--Select--</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;
                            </div>

                            <div class="form-item">
                                <label class="input-label">Date of Birth</label>
                                <asp:TextBox class="input-field" ID="txtdateofbirth" Type="Date" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-item">
                                <label class="input-label">Bload Group:</label>
                                <asp:DropDownList class="input-field" ID="ddlbloodgroup" runat="server">
                                    <asp:ListItem Value="null">--Select--</asp:ListItem>
                                    <asp:ListItem>A+</asp:ListItem>
                                    <asp:ListItem>A-</asp:ListItem>
                                    <asp:ListItem>B+</asp:ListItem>
                                    <asp:ListItem>B-</asp:ListItem>
                                    <asp:ListItem>AB+</asp:ListItem>
                                    <asp:ListItem>AB-</asp:ListItem>
                                    <asp:ListItem>O+</asp:ListItem>
                                    <asp:ListItem>O-</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <hr />
                            <h3 class="title">Contact Information</h3>
                            <div class="form-item">
                                <label class="input-label">Mobile:</label>&nbsp;<asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                                <label class="input-label">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmobile" ForeColor="Red"></asp:RequiredFieldValidator>
                                </label>
                            </div>
                            <div class="form-item">
                                <label class="input-label">Email:</label>

                                <asp:TextBox class="input-field" ID="txtemail" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-item">
                                <label class="input-label">Contact Address:</label>
                                <asp:TextBox class="input-field" ID="txtcontactaddress" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>

                            <hr>
                            <h3>Professional Information</h3>
                            <div class="form-item">
                                <label class="input-label">Present Profession</label>
                                <asp:TextBox class="input-field" ID="txtpresentprofession" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-item">
                                <label class="input-label">Previous Profession</label>
                                <asp:TextBox class="input-field" ID="txtpreviousprofession" runat="server"></asp:TextBox>
                            </div>
                            <hr />

                            <h3 class="title">Registration Information</h3>
                            <div class="form-item">
                                <label class="input-label">Registration Fee:</label>
                                <asp:TextBox ID="txtregistrationfee" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-item">
                                <label class="input-label">Deposit Reference.No</label>&nbsp;<asp:TextBox ID="txtdepositreference" runat="server"></asp:TextBox>
                                <label for="pzip">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtdepositreference" ForeColor="Red"></asp:RequiredFieldValidator>
                                </label>
                            </div>

                            <div class="form-item">
                                <label class="input-label">Deposit Slip</label>&nbsp;<asp:FileUpload ID="fpslip" runat="server" />
                                &nbsp;<p>(less than 5 Mb)</p>
                            </div>

                            <div class="text-center" style="align: center">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                                <asp:Button ID="btnregistration" runat="server" Text="Register" OnClick="btnsave_OnClick" />
                                &nbsp;<asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
