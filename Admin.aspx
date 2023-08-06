<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="convocation.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {}
        
        .auto-style3 {
            margin-right: 0px;
        }
        
        .auto-style4 {
            margin: 15px;
            width: 100%;
            height: 726px;
        }
        
        .auto-style5 {
            text-align: center;
            height: 1px;
        }
        
    </style>
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
            <div class="container shadow-lg p-3 mb-5 bg-body-tertiary" style="background-color:cornflowerblue">
        <h1 class="auto-style5">&nbsp;</h1>
                <h1 class="auto-style1">Participant Datebase (For Admin)</h1>
                <p class="auto-style1">
                    <asp:TextBox ID="txtvarchar" runat="server" PlaceHolder="Search by Attributes" AutoPostBack="true" OnTextChanged="txtvarchar_TextChanged1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" PlaceHolder="Search by Member id" runat="server" AutoPostBack="true" CssClass="auto-style2" OnTextChanged="TextBox1_TextChanged" Width="211px"></asp:TextBox>
                </p>
                
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-border table-hover table-responsive" DataKeyNames="Member_No" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Member_No" HeaderText="Member Id" InsertVisible="False" ReadOnly="True" SortExpression="Member_No" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="member_img" HeaderText="Picture">
                        <ControlStyle Height="60px" Width="60px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Member_Name" HeaderText="Member Name" SortExpression="Member_Name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Registration_Date" HeaderText="Registration Date" SortExpression="Registration_Date" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Education_Type" HeaderText="School/College" SortExpression="Education_Type" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="passing_year" HeaderText="Passing Year" SortExpression="passing_year" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Contact_Number" HeaderText="Contact Number" SortExpression="Contact_Number" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Present_Profession" HeaderText="Present Profession" SortExpression="Present_Profession" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Previour_Profession" HeaderText="Previous Profession" SortExpression="Previour_Profession" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Rergistration_Fee" HeaderText="Rergistration Fee" SortExpression="Rergistration_Fee" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Deposit_ref_no" HeaderText="Deposit ref no" SortExpression="Deposit_ref_no" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Deposit_Slip" HeaderText="Deposit Slip">
                        <ControlStyle Height="60px" Width="60px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Blood_Group" HeaderText="Blood Group" SortExpression="Blood_Group" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
      


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform] order by Member_No DESC"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform] WHERE ([Member_No] = @Member_No)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Member_No" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
   </div>
       
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT Member_No, Registration_Date, Member_Name, Gender, Birthday, Blood_Group, Contact_Number, Email, Education_Type, Present_Profession, Previour_Profession, Rergistration_Fee, Deposit_Slip, member_img, Deposit_ref_no, Address, passing_year FROM convocationform WHERE (Gender = @x) OR (Member_Name LIKE '%' + @x + '%') OR (Blood_Group LIKE '%' + @x + '%') OR (Contact_Number LIKE '%' + @x + '%') OR (Education_Type  LIKE '%' + @x + '%') OR (Address  LIKE '%' + @x + '%') OR (passing_year LIKE '%' + @x + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtvarchar" Name="x" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
       
        </form>
</body>
</html>
