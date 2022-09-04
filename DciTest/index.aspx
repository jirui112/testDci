<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DciTest.WebForm2" %>
<asp:Content ID="currModel" ContentPlaceHolderID="testDemo1" runat="server">

    <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Button" />

    

    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem Value="san">张三</asp:ListItem>
        <asp:ListItem Value="si">李四</asp:ListItem>
        <asp:ListItem Value="wangwu">王五</asp:ListItem>
        <asp:ListItem Value="hh">黑哥</asp:ListItem>
    </asp:CheckBoxList>
    

    

    
    

    

    <asp:Table ID="Table1" CssClass="table" runat="server">
        <asp:TableRow>
            <asp:TableCell>小李</asp:TableCell>
            <asp:TableCell>老李</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>小李</asp:TableCell>
            <asp:TableCell>老李</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>小李</asp:TableCell>
            <asp:TableCell>老李</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>小李</asp:TableCell>
            <asp:TableCell>老李</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>小李</asp:TableCell>
            <asp:TableCell>老李</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>小李</asp:TableCell>
            <asp:TableCell>老李</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    

    

    
    

    

    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
        <asp:ListItem>吉瑞</asp:ListItem>
        <asp:ListItem>嘉嘉</asp:ListItem>
        <asp:ListItem>还有他妈</asp:ListItem>
    </asp:DropDownList>
    

    

</asp:Content>