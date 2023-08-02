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
        
        .auto-style4 {
            margin: 15px;
            width: 100%;
            height: 726px;
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
        <div class="auto-style4"  style="overflow-y: auto;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style3" Width="100%" DataKeyNames="Member_No" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="Member_No" HeaderText="Member_No" InsertVisible="False" ReadOnly="True" SortExpression="Member_No" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="member_img" HeaderText="member_img">
                        <ControlStyle Height="60px" Width="60px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" SortExpression="Member_Name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Registration_Date" HeaderText="Registration_Date" SortExpression="Registration_Date" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Education_Type" HeaderText="Passed From" SortExpression="Education_Type" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="passing_year" HeaderText="Passing Year" SortExpression="passing_year" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Contact_Number" HeaderText="Contact_Number" SortExpression="Contact_Number" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Present_Profession" HeaderText="Present_Profession" SortExpression="Present_Profession" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Previour_Profession" HeaderText="Previous_Profession" SortExpression="Previour_Profession" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Rergistration_Fee" HeaderText="Rergistration_Fee" SortExpression="Rergistration_Fee" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Deposit_ref_no" HeaderText="Deposit_ref_no" SortExpression="Deposit_ref_no" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Deposit_Slip" HeaderText="Deposit_Slip">
                        <ControlStyle Height="60px" Width="60px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform] WHERE ([Member_No] = @Member_No)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Member_No" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
   </div>
       
        </form>
</body>
</html>
