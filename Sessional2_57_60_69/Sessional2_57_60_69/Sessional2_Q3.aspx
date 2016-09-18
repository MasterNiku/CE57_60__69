<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sessional2_Q3.aspx.cs" Inherits="Sessional2_57_60_69.Sessional2_Q3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        Enter ID:<asp:textbox ID="tb1" runat="server" AutoPostBack="True" OnTextChanged="tb1_TextChanged"></asp:textbox>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" AutoGenerateRows="False" DataKeyNames="Id">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [Id] = @Id" InsertCommand="INSERT INTO [student] ([Id], [Name], [sem]) VALUES (@Id, @Name, @sem)" SelectCommand="SELECT * FROM [student] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [student] SET [Name] = @Name, [sem] = @sem WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="sem" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="tb1" Name="Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="sem" Type="Decimal" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   </div>
         </form>
</body>
</html>
