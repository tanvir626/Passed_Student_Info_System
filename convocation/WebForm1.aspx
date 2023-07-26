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
                    <label for="fullname">Student Image:</label>
                    <input type="file" name="studentimage" id="studentimage" required>
                    <p>(less than 5 Mb)</p>
                </div>
            <h3>Personal Information</h3>
                <div class="form-item">
                    <label for="fullname">Member Name:</label>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
            <div class="form-item">
                    <label for="username">:From</label>&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                &nbsp;</div>
            <div class="form-item">
                    <label for="username">Gender</label>&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                &nbsp;</div>

                <div class="form-item">
                    <label for="email">Date of Birth</label>
                    <asp:TextBox ID="DOB" Type="Date" runat="server"></asp:TextBox>
                </div>

                <div class="form-item">
                    <label for="email">Bload Group:</label>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </div>
             <hr/>
                <h3>Contact Information</h3>
                <div class="form-item">
                    <label for="pstate">Mobile</label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                <div class="form-item">
                    <label for="pcity">Email:</label>
                    
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  
                </div>
                <div class="form-item">
                    <label for="pzip">Contact Address:</label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </div>

                <hr>
                <h3>Professional Information</h3>
               <div class="form-item">
                    <label for="pzip">Present Profession</label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </div>
            <div class="form-item">
                    <label for="pzip">Previous Profession</label>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                  </div>
            <hr />

                <h3>Registration Information</h3>
            <div class="form-item">
                    <label for="pzip">Registration Fee</label>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  </div>
            <div class="form-item">
                    <label for="pzip">Deposit Reference</label>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                  </div>

             <div class="form-item">
                    <label for="pzip">Deposit Slip</label>
                    <input type="file" name="studentimage" id="studentimage" required>
                    <p>(less than 5 Mb)</p>
                  </div>
           
          
                <bu
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            tton class="register text-center " type="submit">Register</button>
          
        </div>
            </div>
    </form>
</body>
</html>
