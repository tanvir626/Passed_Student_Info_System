<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="convocation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">

            <div>
            <label for="textBox1">Search by ID or Name:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <button type="submit" id="button1" runat="server">Search</button>
                </div>
        


        <div class="container">
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table table-responsive table-info" runat="server" AutoGenerateColumns="False" DataKeyNames="Member_No" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Member_No" HeaderText="Member_No" InsertVisible="False" ReadOnly="True" SortExpression="Member_No" />
                <asp:BoundField DataField="Registration_Date" HeaderText="Registration_Date" SortExpression="Registration_Date" />
                <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" SortExpression="Member_Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" />
                <asp:BoundField DataField="Contact_Number" HeaderText="Contact_Number" SortExpression="Contact_Number" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Education_Type" HeaderText="Education_Type" SortExpression="Education_Type" />
                <asp:BoundField DataField="Present_Profession" HeaderText="Present_Profession" SortExpression="Present_Profession" />
                <asp:BoundField DataField="Previour_Profession" HeaderText="Previour_Profession" SortExpression="Previour_Profession" />
                <asp:BoundField DataField="Rergistration_Fee" HeaderText="Rergistration_Fee" SortExpression="Rergistration_Fee" />
                <asp:BoundField DataField="Deposit_Slip" HeaderText="Deposit_Slip" SortExpression="Deposit_Slip" />
                <asp:BoundField DataField="member_img" HeaderText="member_img" SortExpression="member_img" />
                <asp:BoundField DataField="Deposit_ref_no" HeaderText="Deposit_ref_no" SortExpression="Deposit_ref_no" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="passing_year" HeaderText="passing_year" SortExpression="passing_year" />
            </Columns>
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform]SELECT * FROM convocationform WHERE ID = @Member_No OR Member_Name LIKE @Name"></asp:SqlDataSource>

        <br />
        </form>
</body>
</html>
