<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="convocation.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <style>
        .title {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 10px;
            font-size: 24px;
            font-weight: 600;
            background:#3B71CA;
            color:#fff;
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
        .item-row{
            display:flex; justify-content:space-evenly; grid-gap:10px; height:150px; align-items:center;padding:10px;
        }

        .form-item {
            display: block;
            width: 100%;
            height: 70px;
        }

        .form-item1 {
            display: block;
            width: 100%;
            height: 80px;
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
            <div class="row" style="width: 100%; margin: 0px; padding: 0px;">
                <div class="col-12" style="display: flex; justify-content: center; align-items: center; background: #3B71CA; padding: 0; margin-bottom: 20px;">
                    <h2 class="title1">Registration From</h2>
                </div>
                <div class="col-12" style="width: 100%;">

                    <form id="form1" runat="server" style="padding: 20px;">

                        <%-- <h1>Welcome</h1>--%>

                        <div class="form-wrapper" style="margin: 0px !important;">
                            <div class="box" style="height: 80px; width: 100%; padding: 10px; display: flex; justify-content: space-between;">
                                <div style="display:flex;">
                                    <label class="input-label" style="padding-right:10px;">
                                        Member ID :
                                    </label>
                                    <asp:Label ID="lblid" runat="server" ForeColor="Red" Font-Bold="true" />
                                </div>
                                <div style="display:flex;">
                                    <label class="input-label" style="padding-right:10px;">
                                        Passing Year:
                                    </label>
                                    <asp:TextBox ID="txtlpass" class="form-control " runat="server" style="width:150px; height:40px !important; margin-top:-8px;"></asp:TextBox>
                                    
                                <label class="input-label">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtlpass" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </label>
                                    
                                </div>
                            </div>

               <div style="display:flex; justify-content:space-between;">
                                <div class="form-item" style="">
                                <label class="input-label" style="">Member Image:</label>
                                <asp:FileUpload ID="fpmemberimage" runat="server" class="form-control" Style="" />
                                
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="fpmemberimage" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                                
                            </div>
                   <div class="images" style="width:30%;padding:10px;">
                       <asp:Image ID="Image1" runat="server" style="width:100%;padding:10px;" />
                    </div>
               </div>

                            <div style="width:100%; height:100%; border:1px solid #3B71CA; margin-top:10px; margin-bottom:10px;">
                            <h3 class="title">General Information</h3>
                                <div style="padding:20px;">
                            <div class="form-item">
                                <label class="input-label">Member Name:</label>
                                <asp:TextBox ID="txtmembername" class="form-control " runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmembername" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div style="" class="item-row">
                            <div class="form-item">
                                <label class="input-label">School/College</label>
                                <asp:DropDownList class="" ID="ddlfrom" runat="server" Style="width: 360px; height: 30px;">
                                    <asp:ListItem Value="null">--Select--</asp:ListItem>
                                    <asp:ListItem>School</asp:ListItem>
                                    <asp:ListItem>College</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;
                            </div>
                            <div class="form-item">
                                <label class="input-label">Gender</label>
                                <asp:DropDownList ID="ddlgender" runat="server" Style="width:360px; height: 30px;">
                                    <asp:ListItem Value="null">--Select--</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;
                            </div>
                            <div class="form-item">
                                <label class="input-label">Bload Group:</label>
                                <asp:DropDownList ID="ddlbloodgroup" runat="server" Style="width: 360px; height: 30px;">
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


                                </div>
                                                        <div class="form-item">
                                <label class="input-label">Date of Birth</label>
                                <asp:TextBox class="" ID="txtdateofbirth" Type="Date" runat="server" Style="width:400px; height:40px;"></asp:TextBox>
                            </div>

                                </div>
<div style="width:100%; height:100%; border:1px solid #3B71CA; margin-top:10px; margin-bottom:10px;">
                            <h3 class="title">Contact Information</h3>
    <div style="padding:10px;">
        <div style="display:flex; justify-content:space-between;grid-gap:20px;">
                            <div class="form-item">
                                <label class="input-label">Mobile:</label>
                                <asp:TextBox ID="txtmobile" runat="server" Class="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmobile" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-item">
                                <label class="input-label">Email:</label>

                                <asp:TextBox class="form-control" ID="txtemail" runat="server"></asp:TextBox>

                            </div>
            </div>
                            <div class="form-item">
                                <label class="input-label">Contact Address:</label>
                                <asp:TextBox class="form-control" ID="txtcontactaddress" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
   </div>
        </div>


                                <div style="width:100%; height:100%; border:1px solid #3B71CA; margin-top:10px; margin-bottom:10px;">
                            <h3 class="title">Professional Information</h3>

                                    <div style="padding:10px;">
        <div style="display:flex; justify-content:space-between;grid-gap:20px;">
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
                                <div style="width:100%; height:100%; border:1px solid #3B71CA; margin-top:10px; margin-bottom:10px;">
                            <h3 class="title">Registration Information</h3>
                                <div style="padding:10px;">
        <div style="display:flex; justify-content:space-between;grid-gap:20px;">
                            <div class="form-item" style="margin-bottom: 20px;">
                                <label class="input-label">Registration Fee:</label>
                                <asp:TextBox ID="txtregistrationfee" runat="server" Class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-item1">
                                <label>Deposit Reference.No</label>
                                <asp:TextBox ID="txtdepositreference" runat="server" Class="form-control"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtdepositreference" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>


            </div>
                                    
                            <div class="form-item">
                                <label class="input-label" id="lbldepo">Deposit Slip</label>
                                <asp:FileUpload ID="fpslip" Class="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="fpslip" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                                    </div>
                                    </div>

                            <div class="text-center" style="width: 100%; height: 100px; display: flex; justify-content: end;">


                                <asp:Button ID="btnregistration" runat="server" class="btn btn-primary" Text="Register" OnClick="btnsave_OnClick" Style="width: 100px; height: 40px; padding: 5px; margin: 10px; border-radius: 20px;" />
                                <asp:Button ID="btnupdate" runat="server" class="btn btn-warning" Text="Update" OnClick="btnupdate_Click" Style="width: 100px; height: 40px; padding: 5px; margin: 10px; border-radius: 20px;"/>
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
