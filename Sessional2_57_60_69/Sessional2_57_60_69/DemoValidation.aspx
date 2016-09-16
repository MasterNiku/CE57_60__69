<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoValidation.aspx.cs" Inherits="Sessional2_57_60_69.DemoValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
        <br />
        <br />
        Emai Id:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Password:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Confirm Password:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Semester:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        CPI:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <asp:RangeValidator ID="RangeValidator1" runat="server" Text="Semester should be between 1-8" ControlToValidate="TextBox5" MinimumValue="1" MaximumValue="8" Type="Integer"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" Text="Cpi should be between 4-10" ControlToValidate="TextBox6" MinimumValue="4" MaximumValue="10" Type="Double"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Text="Name is required"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" ControlToCompare="TextBox3" Type="String" Text="Both password should be same"></asp:CompareValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Text="Invalid email id" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Text="Password must be at least 6 characters long" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$"></asp:RegularExpressionValidator>
        <br />
    
    </div>
    </form>
</body>
</html>
