<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="convocation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="Content/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }

        .auto-style2 {
            width: 671px;
        }

        .auto-style3 {
            width: 477px;
        }

        .auto-style4 {
            width: 543px;
        }

        .auto-style5 {
            width: 543px;
            height: 37px;
        }

        .auto-style6 {
            width: 477px;
            height: 37px;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            margin-left: 0px;
            text-align: center;
        }

        .auto-style9 {
            font-size: large;
        }

        .auto-style11 {
            text-align: center;
            color: rgb(255, 255, 255);
        }
    </style>
</head>
<body style="background-color: white">
    <form id="form1" runat="server">
        <div class="container shadow-lg p-3 mb-5 bg-body-tertiary"style="display: flex; justify-content: center; align-items: center; height: 100vh;background-color:cornflowerblue">
            <div class="card shadow-lg p-3 mb-5 bg-body-tertiary" style="width: 18rem; background-color:blue">
                <div class="card-body">
                    <h1 class="auto-style11"style="color:white">Member Details</h1>
                    <p class="auto-style8">
                        <asp:TextBox ID="TextBox1" AutoPostBack="true" PlaceHolder="Enter Member Number" runat="server" CssClass="auto-style2" OnTextChanged="TextBox1_TextChanged" Width="211px"></asp:TextBox>
                    </p>
                    <p class="auto-style8">
                        &nbsp;<asp:Label ID="lbltxt" runat="server" Text="Hi ! " Visible="false" CssClass="auto-style9" style="color:white"></asp:Label>
                        <asp:Label ID="lblname" runat="server" Text="Label" Visible="false" CssClass="auto-style9" style="color:white"></asp:Label>
                        &nbsp;<asp:Label ID="lblida" runat="server" Text="Member No:" Visible="false" CssClass="auto-style9" style="color:white"></asp:Label>
                        &nbsp;<asp:Label ID="lblid" runat="server" Text="Label" Visible="false" CssClass="auto-style9" style="color:white"></asp:Label>
                    </p>
                    <p class="auto-style8">
                        <asp:Button ID="btnupdate" class="btn btn-info" Visible="false" runat="server" OnClick="btnupdate_Click" Text="Update" />
                        &nbsp;<asp:Button ID="btnregis" Visible="True" runat="server" class="btn btn-info" OnClick="btnregis_Click"  Text="Registration" />
                        &nbsp;<asp:Button ID="btnprint" runat="server" class="btn btn-warning" OnClick="Button1_Click" Visible="false" Text="Print" />
                    </p>
                    <p class="auto-style1">
                </div>
            </div>
        </div>








        <div id="member" runat="server" visible="false">
            <h1 style="font-weight: bold; text-align: center">Member Information</h1>
            <br />
            <br />

            <div class="table-bordered">
                <table class="table-striped" id="tbtPNR" runat="server" style="width: 100%; color: green; font-size: large" border="1">
                    <tr>
                        <td style="font-weight: bold" class="auto-style7" colspan="2">
                            <asp:Image ID="Image1" runat="server" Height="155px" Width="195px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Member Id</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblidforpdf" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Passsing Year</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblpass" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Name</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblmembername" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">BirthDay</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblbirthday" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style5">Gender</td>
                        <td class="auto-style6">
                            <asp:Label ID="lblgender" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style5">Blood Group</td>
                        <td class="auto-style6">
                            <asp:Label ID="lblblood" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Contact Number</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblcontact" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Email</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblemail" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Address</td>
                        <td class="auto-style3">
                            <asp:Label ID="lbladdress" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">School/Collage</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblschool" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Present Profession</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblpresentp" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Previous Profession</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblpreviousp" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" class="auto-style4">Deposit_Refer_No</td>
                        <td class="auto-style3">
                            <asp:Label ID="lbldepositreferno" runat="server"></asp:Label></td>
                    </tr>
                    </table>
            </div>
            <br />
            <br />
            <br />
            <br />
            <p style="text-align: center; font-style: italic; font-size: 10pt">
                Thank you for Staying With US!!!!
               
            </p>
        </div>
    </form>
</body>
</html>
