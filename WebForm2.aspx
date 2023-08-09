<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="convocation.WebForm2" %>

<html lang="en"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Simple Data Table</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
    color: #566787;
    background: #f5f5f5;
    font-family: 'Roboto', sans-serif;
}
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
    min-width: 1000px;
    background: #fff;
    padding: 20px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 10px;
    margin: 0 0 10px;
    min-width: 100%;
}
.table-title h2 {
    margin: 8px 0 0;
    font-size: 22px;
}
.search-box {
    position: relative;        
    float: right;
}
.search-box input {
    height: 34px;
    border-radius: 20px;
    padding-left: 35px;
    border-color: #ddd;
    box-shadow: none;
}
.search-box input:focus {
    border-color: #3FBAE4;
}
.search-box i {
    color: #a0a5b1;
    position: absolute;
    font-size: 19px;
    top: 8px;
    left: 10px;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
    background: #f5f5f5;
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}
table.table td:last-child {
    width: 130px;
}
table.table td a {
    color: #a0a5b1;
    display: inline-block;
    margin: 0 5px;
}
table.table td a.view {
    color: #03A9F4;
}
table.table td a.edit {
    color: #FFC107;
}
table.table td a.delete {
    color: #E34724;
}
table.table td i {
    font-size: 19px;
}    
.pagination {
    float: right;
    margin: 0 0 5px;
}
.pagination li a {
    border: none;
    font-size: 95%;
    width: 30px;
    height: 30px;
    color: #999;
    margin: 0 2px;
    line-height: 30px;
    border-radius: 30px !important;
    text-align: center;
    padding: 0;
}
.pagination li a:hover {
    color: #666;
}	
.pagination li.active a {
    background: #03A9F4;
}
.pagination li.active a:hover {        
    background: #0397d6;
}
.pagination li.disabled i {
    color: #ccc;
}
.pagination li i {
    font-size: 16px;
    padding-top: 6px
}
.hint-text {
    float: left;
    margin-top: 6px;
    font-size: 95%;
}    
</style>
<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>
</head>
<body>
    <form runat="server" id="form1">
<div class="container-xl embed-responsive">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2><b>Member Details</b></h2></div>
                    <div class="col-sm-4">
                        <div class="search-box">
                            <i class="material-icons"></i>
                            <asp:TextBox ID="txtsearch" runat="server" AutoPostBack="true" type="text" class="form-control" placeholder="Search by ID" OnTextChanged="txtsearch_TextChanged"/>
                           </div>
                        <div class="search-box mt-2 mb-0">
                            <i class="material-icons"></i>
                            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" type="text" class="form-control" placeholder="Search by ID" OnTextChanged="txtsearch_TextChanged"/>
                           </div>
                    </div>
                </div>
            </div>
            <asp:gridview runat="server" ID="gd1" class="table table-responsive table-striped table-hover table-bordered table-re" DataSourceID="view" AutoGenerateColumns="False" DataKeyNames="Member_No">
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
               
            </asp:gridview>
            
            <asp:SqlDataSource ID="view" runat="server" ConnectionString="<%$ ConnectionStrings:convoview %>" SelectCommand="SELECT * FROM [convocationform]"></asp:SqlDataSource>
            
        </div>
    </div>  
</div>   
</form>
</body>

</html>