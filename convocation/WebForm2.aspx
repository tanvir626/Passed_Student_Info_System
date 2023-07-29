<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="convocation.WebForm2" %>

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
        
    </style>
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
        <h1 class="auto-style1">Participant Datebase (For Admin)</h1>
                <p class="auto-style1">
                    <asp:TextBox ID="TextBox1" PlaceHolder="Enter Member Number" runat="server" CssClass="auto-style2" OnTextChanged="TextBox1_TextChanged" Width="211px"></asp:TextBox>
                </p>
        <div class="form-wrapper"  style="width: 100%; height: 400px; overflow-y: auto;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style3" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Member_No" HeaderText="Member_No" InsertVisible="False" ReadOnly="True" SortExpression="Member_No" />
                    <asp:BoundField DataField="Registration_Date" HeaderText="Registration_Date" SortExpression="Registration_Date" />
                    <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" SortExpression="Member_Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                    <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" />
                    <asp:BoundField DataField="Contact_Number" HeaderText="Contact_Number" SortExpression="Contact_Number" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Education_Institute_Name" HeaderText="Education_Institute_Name" SortExpression="Education_Institute_Name" />
                    <asp:BoundField DataField="Education_Type" HeaderText="Education_Type" SortExpression="Education_Type" />
                    <asp:BoundField DataField="Present_Profession" HeaderText="Present_Profession" SortExpression="Present_Profession" />
                    <asp:BoundField DataField="Previour_Profession" HeaderText="Previour_Profession" SortExpression="Previour_Profession" />
                    <asp:BoundField DataField="Rergistration_Fee" HeaderText="Rergistration_Fee" SortExpression="Rergistration_Fee" />
                    <asp:BoundField DataField="Deposit_Slip" HeaderText="Deposit_Slip" SortExpression="Deposit_Slip" />
                    <asp:ImageField DataImageUrlField="member_img" HeaderText="member_img">
                        <ControlStyle Height="50px" Width="50px" />
                        <ItemStyle Height="26px" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform] WHERE ([Member_No] = @Member_No)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Member_No" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
   </div>
           
       
        <p>
            
        </p>
       
        </form>
    <p>
        &nbsp;</p>
</body>
</html>
