<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="convocation.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <style>
        .row{
            width: 100%; margin: 0px; padding: 0px;
        }
        .form-view{
            display: flex; justify-content: center; align-items: center; background: #3B71CA; padding: 0; margin-bottom: 20px;
        }
        .title {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 10px;
            font-size: 24px;
            font-weight: 600;
            background: #3B71CA;
            color: #fff;
        }

        .title1 {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 10px;
            margin-top: 20px;
            font-size: 24px;
            font-weight: 600;
            color: #fff;
        }


        .card {
            box-shadow: 0 0 5px #3B71CA;
            height: 100%;
            width: 100%;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .box1 {
            width: 100%;
            height: 100%;
            
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .box {
            height: 100%;
            width: 100%;
            padding: 10px;
            display: flex;
            justify-content: space-between;
        }

        .box2 {
            width: 100%;
            height: 100%;
            padding:10px;
            display: flex;
            justify-content: end;
        }

        .item-row {
            display: flex;
            justify-content: space-between;
            grid-gap: 10px;
            height: 100%;
            align-items: center;
            padding: 10px;
        }

        .form-item {
            display: block;
            width: 100%;
            height: 100%;
        }

        .form-item1 {
            display: block;
            width: 100%;
            height: 100%px;
        }

        .input-label {
            width: 100% !important;
            margin-bottom: 5px;
        }

        .input-field {
            margin: 0px !important;
            width: 100% !important;
        }
        .btn-view{
            width: 100px; height: 40px; padding: 5px; margin: 10px; border-radius: 20px;
        }
    </style>
</head>
<body>
    <div class="container" style="background: white;">
        <div class="card" style="padding:0px; margin:20px;">
            <div class="row" >
                <div class="col-12 form-view" style="">
                    <h2 class="title1">Registration From</h2>
                </div>
                <div class="col-12" style="width: 100%;padding:0; margin:0;">

                    <form id="form1" runat="server" style="padding: 0px;">

                        <%-- <h1>Welcome</h1>--%>

                        <div class="form-wrapper" style="margin: 0px !important;padding:0px !important">
                            <div class="box">
                                <div style="display: block;width:70%;padding-top:30px;">
                                    <div style="display:flex;justify-content:start">
                                        <div style="display: flex;">
                                        <label class="input-label" style="padding-right: 10px;">
                                            Member ID :
                                        </label>
                                        <asp:Label ID="lblid" runat="server" ForeColor="Red" Font-Bold="true" />
                                    </div>
                                    <div style="display: flex;padding-left:100px;">
                                        <label class="input-label" style="padding-right: 10px;">
                                            Passing Year:
                                        </label>
                                        <asp:TextBox ID="txtlpass" class="form-control " runat="server" Style="width: 150px; height: 40px !important; margin-top: -8px;"></asp:TextBox>
                                    </div>
                                    </div>
                                    <div class="form-item" style="">
                                        <label class="input-label" style="">Member Image:</label>
                                        <asp:FileUpload ID="fpmemberimage" runat="server" class="form-control" Style="" />
                                    </div>
                                </div>
                                <div class="images" style="width: 30%; padding:0; display:flex; justify-content:end;">
                                    <asp:Image ID="Image1" runat="server" Style="width: 150px; height:150px; " />
                                </div>
                            </div>

                            <div class="box1">
                                <h3 class="title">General Information</h3>
                                <div style="padding: 20px;">
                                    <div class="item-row" >
                                        <div class="form-item">
                                            <label class="input-label">Member Name:</label>
                                            <asp:TextBox ID="txtmembername" class="form-control " runat="server"></asp:TextBox>
                                          <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmembername" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-item">
                                            <label class="input-label">Date of Birth</label>
                                            <asp:TextBox class="" ID="txtdateofbirth" Type="Date" runat="server" Style="width: 400px; height: 40px;"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div style="" class="item-row">
                                        <div class="form-item">
                                            <label class="input-label">School/College</label>
                                            <asp:DropDownList class="" ID="ddlfrom" runat="server" Style="width: 100%; height: 30px;">
                                                <asp:ListItem Value="null">Select School/College</asp:ListItem>
                                                <asp:ListItem>School</asp:ListItem>
                                                <asp:ListItem>College</asp:ListItem>
                                            </asp:DropDownList>
                                           
                           
                                        </div>
                                        <div class="form-item">
                                            <label class="input-label">Gender</label>
                                            <asp:DropDownList ID="ddlgender" runat="server" Style="width: 100%; height: 30px;">
                                                <asp:ListItem Value="null">Select Gender</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                         
                           
                                        </div>
                                        <div class="form-item">
                                            <label class="input-label">Blood Group</label>
                                            <asp:DropDownList ID="ddlbloodgroup" runat="server" Style="width: 100%; height: 30px;">
                                                <asp:ListItem Value="null">Select Blood Group</asp:ListItem>
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


                                    </div>
                                </div>

                            </div>

                            <div class="box1">
                                <h3 class="title">Contact Information</h3>
                                <div style="padding: 10px;">
                                    <div class="item-row">
                                        <div class="form-item">
                                            <label class="input-label">Mobile:</label>
                                            <asp:TextBox ID="txtmobile" runat="server" Class="form-control"></asp:TextBox>
                                           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmobile" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                        </div>
                                        <div class="form-item">
                                            <label class="input-label">Email:</label>
                                            <asp:TextBox class="form-control" ID="txtemail" runat="server"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-item" style="overflow:hidden;">
                                        <label class="input-label">Contact Address:</label>
                                        <asp:TextBox class="form-control" ID="txtcontactaddress" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                            <div class="box1">
                                <h3 class="title">Professional Information</h3>

                                <div style="padding: 10px;">
                                    <div class="item-row">
                                        <div class="form-item">
                                            <label class="input-label">Present Profession</label>
                                            <asp:TextBox class="form-control" ID="txtpresentprofession" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-item">
                                            <label class="input-label">Previous Profession</label>
                                            <asp:TextBox class="form-control" ID="txtpreviousprofession" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="box1">
                                <h3 class="title">Registration Information</h3>
                                <div style="padding: 10px;">
                                    <div class="item-row">
                                        <div class="form-item" style="margin-bottom: 20px;">
                                            <label class="input-label">Registration Fee:</label>
                                            <asp:TextBox ID="txtregistrationfee" runat="server" Class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-item1">
                                            <label>Deposit Reference.No</label>
                                            <asp:TextBox ID="txtdepositreference" runat="server" Class="form-control"></asp:TextBox>
                                           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtdepositreference" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-item" >
                                            <label class="input-label" id="lbldepo">Deposit Slip</label>
                                            <asp:FileUpload ID="fpslip" Class="form-control" runat="server"  />
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="text-center box2">
                                <asp:Button ID="btnregistration" runat="server" class="btn btn-primary btn-view" Text="Register" OnClick="btnsave_OnClick"  />
                                <asp:Button ID="btnupdate" runat="server" class="btn btn-warning btn-view" Text="Update" OnClick="btnupdate_Click" />
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

