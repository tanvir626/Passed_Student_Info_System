<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="convocation.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <h1 class="auto-style1">Member Details</h1>
                <p class="auto-style1">
                    <asp:TextBox ID="TextBox1" PlaceHolder="Enter Member Number" runat="server" CssClass="auto-style2" OnTextChanged="TextBox1_TextChanged" Width="211px"></asp:TextBox>
                </p>
        <div class="form-wrapper"style="width: 100%; height: 400px; overflow-y: auto;">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Member_No" DataSourceID="SqlDataSource2" style="width:100%" >
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
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
                    <asp:BoundField DataField="member_img" HeaderText="member_img" SortExpression="member_img" />
                    <asp:BoundField DataField="Deposit_ref_no" HeaderText="Deposit_ref_no" SortExpression="Deposit_ref_no" />
                </Columns>
            </asp:GridView>    
        </div>
           
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:convoview %>" DeleteCommand="DELETE FROM [convocationform] WHERE [Member_No] = @original_Member_No AND (([Registration_Date] = @original_Registration_Date) OR ([Registration_Date] IS NULL AND @original_Registration_Date IS NULL)) AND (([Member_Name] = @original_Member_Name) OR ([Member_Name] IS NULL AND @original_Member_Name IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Birthday] = @original_Birthday) OR ([Birthday] IS NULL AND @original_Birthday IS NULL)) AND (([Blood_Group] = @original_Blood_Group) OR ([Blood_Group] IS NULL AND @original_Blood_Group IS NULL)) AND (([Contact_Number] = @original_Contact_Number) OR ([Contact_Number] IS NULL AND @original_Contact_Number IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Education_Institute_Name] = @original_Education_Institute_Name) OR ([Education_Institute_Name] IS NULL AND @original_Education_Institute_Name IS NULL)) AND (([Education_Type] = @original_Education_Type) OR ([Education_Type] IS NULL AND @original_Education_Type IS NULL)) AND (([Present_Profession] = @original_Present_Profession) OR ([Present_Profession] IS NULL AND @original_Present_Profession IS NULL)) AND (([Previour_Profession] = @original_Previour_Profession) OR ([Previour_Profession] IS NULL AND @original_Previour_Profession IS NULL)) AND (([Rergistration_Fee] = @original_Rergistration_Fee) OR ([Rergistration_Fee] IS NULL AND @original_Rergistration_Fee IS NULL)) AND (([Deposit_Slip] = @original_Deposit_Slip) OR ([Deposit_Slip] IS NULL AND @original_Deposit_Slip IS NULL)) AND (([member_img] = @original_member_img) OR ([member_img] IS NULL AND @original_member_img IS NULL)) AND (([Deposit_ref_no] = @original_Deposit_ref_no) OR ([Deposit_ref_no] IS NULL AND @original_Deposit_ref_no IS NULL))" InsertCommand="INSERT INTO [convocationform] ([Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Institute_Name], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no]) VALUES (@Registration_Date, @Member_Name, @Gender, @Birthday, @Blood_Group, @Contact_Number, @Email, @Education_Institute_Name, @Education_Type, @Present_Profession, @Previour_Profession, @Rergistration_Fee, @Deposit_Slip, @member_img, @Deposit_ref_no)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [convocationform] WHERE ([Member_No] = @Member_No)" UpdateCommand="UPDATE [convocationform] SET [Registration_Date] = @Registration_Date, [Member_Name] = @Member_Name, [Gender] = @Gender, [Birthday] = @Birthday, [Blood_Group] = @Blood_Group, [Contact_Number] = @Contact_Number, [Email] = @Email, [Education_Institute_Name] = @Education_Institute_Name, [Education_Type] = @Education_Type, [Present_Profession] = @Present_Profession, [Previour_Profession] = @Previour_Profession, [Rergistration_Fee] = @Rergistration_Fee, [Deposit_Slip] = @Deposit_Slip, [member_img] = @member_img, [Deposit_ref_no] = @Deposit_ref_no WHERE [Member_No] = @original_Member_No AND (([Registration_Date] = @original_Registration_Date) OR ([Registration_Date] IS NULL AND @original_Registration_Date IS NULL)) AND (([Member_Name] = @original_Member_Name) OR ([Member_Name] IS NULL AND @original_Member_Name IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Birthday] = @original_Birthday) OR ([Birthday] IS NULL AND @original_Birthday IS NULL)) AND (([Blood_Group] = @original_Blood_Group) OR ([Blood_Group] IS NULL AND @original_Blood_Group IS NULL)) AND (([Contact_Number] = @original_Contact_Number) OR ([Contact_Number] IS NULL AND @original_Contact_Number IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Education_Institute_Name] = @original_Education_Institute_Name) OR ([Education_Institute_Name] IS NULL AND @original_Education_Institute_Name IS NULL)) AND (([Education_Type] = @original_Education_Type) OR ([Education_Type] IS NULL AND @original_Education_Type IS NULL)) AND (([Present_Profession] = @original_Present_Profession) OR ([Present_Profession] IS NULL AND @original_Present_Profession IS NULL)) AND (([Previour_Profession] = @original_Previour_Profession) OR ([Previour_Profession] IS NULL AND @original_Previour_Profession IS NULL)) AND (([Rergistration_Fee] = @original_Rergistration_Fee) OR ([Rergistration_Fee] IS NULL AND @original_Rergistration_Fee IS NULL)) AND (([Deposit_Slip] = @original_Deposit_Slip) OR ([Deposit_Slip] IS NULL AND @original_Deposit_Slip IS NULL)) AND (([member_img] = @original_member_img) OR ([member_img] IS NULL AND @original_member_img IS NULL)) AND (([Deposit_ref_no] = @original_Deposit_ref_no) OR ([Deposit_ref_no] IS NULL AND @original_Deposit_ref_no IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Member_No" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_Registration_Date" />
                    <asp:Parameter Name="original_Member_Name" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Birthday" />
                    <asp:Parameter Name="original_Blood_Group" Type="String" />
                    <asp:Parameter Name="original_Contact_Number" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Education_Institute_Name" Type="String" />
                    <asp:Parameter Name="original_Education_Type" Type="String" />
                    <asp:Parameter Name="original_Present_Profession" Type="String" />
                    <asp:Parameter Name="original_Previour_Profession" Type="String" />
                    <asp:Parameter Name="original_Rergistration_Fee" Type="Int32" />
                    <asp:Parameter Name="original_Deposit_Slip" Type="String" />
                    <asp:Parameter Name="original_member_img" Type="String" />
                    <asp:Parameter Name="original_Deposit_ref_no" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="Registration_Date" />
                    <asp:Parameter Name="Member_Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="Birthday" />
                    <asp:Parameter Name="Blood_Group" Type="String" />
                    <asp:Parameter Name="Contact_Number" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Education_Institute_Name" Type="String" />
                    <asp:Parameter Name="Education_Type" Type="String" />
                    <asp:Parameter Name="Present_Profession" Type="String" />
                    <asp:Parameter Name="Previour_Profession" Type="String" />
                    <asp:Parameter Name="Rergistration_Fee" Type="Int32" />
                    <asp:Parameter Name="Deposit_Slip" Type="String" />
                    <asp:Parameter Name="member_img" Type="String" />
                    <asp:Parameter Name="Deposit_ref_no" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Member_No" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Registration_Date" />
                    <asp:Parameter Name="Member_Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="Birthday" />
                    <asp:Parameter Name="Blood_Group" Type="String" />
                    <asp:Parameter Name="Contact_Number" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Education_Institute_Name" Type="String" />
                    <asp:Parameter Name="Education_Type" Type="String" />
                    <asp:Parameter Name="Present_Profession" Type="String" />
                    <asp:Parameter Name="Previour_Profession" Type="String" />
                    <asp:Parameter Name="Rergistration_Fee" Type="Int32" />
                    <asp:Parameter Name="Deposit_Slip" Type="String" />
                    <asp:Parameter Name="member_img" Type="String" />
                    <asp:Parameter Name="Deposit_ref_no" Type="String" />
                    <asp:Parameter Name="original_Member_No" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_Registration_Date" />
                    <asp:Parameter Name="original_Member_Name" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Birthday" />
                    <asp:Parameter Name="original_Blood_Group" Type="String" />
                    <asp:Parameter Name="original_Contact_Number" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Education_Institute_Name" Type="String" />
                    <asp:Parameter Name="original_Education_Type" Type="String" />
                    <asp:Parameter Name="original_Present_Profession" Type="String" />
                    <asp:Parameter Name="original_Previour_Profession" Type="String" />
                    <asp:Parameter Name="original_Rergistration_Fee" Type="Int32" />
                    <asp:Parameter Name="original_Deposit_Slip" Type="String" />
                    <asp:Parameter Name="original_member_img" Type="String" />
                    <asp:Parameter Name="original_Deposit_ref_no" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
