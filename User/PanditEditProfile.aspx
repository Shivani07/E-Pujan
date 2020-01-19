<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PanditEditProfile.aspx.cs" Inherits="User_PanditEditProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            font-family: Aharoni;
            color: #99CCFF;
        }
        .style3
        {
            text-align: left;
            color: #000099;
        }
        .style4
        {
            color: #000099;
        }
        .style5
        {
            width: 240px;
        }
        .style7
        {
            font-size: large;
            font-family: "Comic Sans MS";
            color: #FFFFFF;
        }
        .style10
        {
            height: 115px;
        }
        .style11
        {
            color: #000099;
            height: 60px;
        }
        .style12
        {
            text-align: left;
            color: #000099;
            height: 60px;
        }
        .style13
        {
            text-align: left;
            font-weight: bold;
            font-size: large;
            font-family: "Comic Sans MS";
            color: #FFFFFF;
            width: 412px;
        }
        .style14
        {
            font-weight: bold;
            font-size: large;
            font-family: "Comic Sans MS";
            color: #FFFFFF;
            width: 412px;
        }
    </style>
</head>
<body background="User/3.jpg" style="background-repeat: no-repeat">
    <form id="form1" runat="server" >
    <div>
    <table>
   

    <tr><td class="style5"></td>
    <td>
    <asp:Panel ID="RegPanditpnl" runat="server" Height="552px" Width="800px" 
            style="margin-left: 0px" BorderStyle="None">
    <table cellpadding="5px" style="padding: 20px 20px 20px 90px; width: 901px; height: 500px;" 
              >
  <tr><td align="center" colspan="2" class="style10">&nbsp;<h4 class="style2">Edit 
      your Details:</h4></td>
      <td class="style10">
          <asp:Image ID="Image1" runat="server" Height="152px" Width="171px" /></td>
        </tr>
    <tr><td class="style13"><strong style="text-align: left">Full Name:</strong></td>
        <td class="style4"><asp:TextBox ID="TxtPandit" runat="server" Height="30px" 
                Width="220px"  class="form-control" ontextchanged="TxtPandit_TextChanged"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                runat="server" ControlToValidate="TxtPandit" CssClass="style3" 
                ErrorMessage="*Field Cannot be Empty" 
                style="font-style: italic; font-weight: bold"></asp:RequiredFieldValidator></td></tr>
   
        <tr><td class="style13"><strong>Occupation(Category):</strong></td>
        <td class="style4"><asp:TextBox ID="TxtType" runat="server" Height="30px" Width="220px"  class="form-control"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" 
                runat="server" ControlToValidate="TxtType" CssClass="style3" 
                ErrorMessage="*Field Cannot be Empty" 
                style="font-style: italic; font-weight: bold"></asp:RequiredFieldValidator></td></tr>
    <tr><td class="style14"><strong>Mobile No.:</strong></td>
        <td class="style4"><asp:TextBox ID="txtMoPandit" runat="server" Height="30px" Width="220px"  class="form-control"/></td>
        <td class="style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                runat="server" ControlToValidate="txtMoPandit" CssClass="style3" 
                ErrorMessage="*Invalid Mobile Number" ValidationExpression="\d{10}" 
                style="font-style: italic; font-weight: bold"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtMoPandit" CssClass="style3" 
                ErrorMessage="*Field Cannot be Empty" 
                style="font-style: italic; font-weight: bold"></asp:RequiredFieldValidator></td></tr>
    <tr><td class="style14"><strong>Address.:</strong></td>
        <td class="style4"><asp:TextBox ID="txtAddPandit" TextMode="MultiLine" runat="server" Width="220px" class="form-control"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                runat="server" ControlToValidate="txtAddPandit" CssClass="style3" 
                ErrorMessage="*FieldCannot be Empty" 
                style="font-style: italic; font-weight: bold"></asp:RequiredFieldValidator></td></tr>
    <tr><td class="style14"><strong>New Password</strong></td><td class="style4">
        <asp:TextBox ID="txtPassPandit" runat="server" Height="30px" Width="220px" 
            class="form-control" TextMode="Password"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                runat="server" ControlToValidate="txtPassPandit" CssClass="style3" 
                ErrorMessage="*Field Cannot be Empty" 
                style="font-style: italic; font-weight: bold"></asp:RequiredFieldValidator></td></tr>
    <tr><td class="style14"><strong><span class="style7">Confirm New Password</span></strong><b><span 
            class="style7">:</span></b></td>
        <td class="style4"><asp:TextBox ID="TxtConfPass" runat="server" Height="30px" 
                Width="220px" class="form-control" TextMode="Password" /></td>
        <td class="style3">
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ControlToCompare="txtPassPandit" ControlToValidate="TxtConfPass" 
                ErrorMessage="*Password Does Not Match" 
                style="font-weight: 700; font-style: italic; " CssClass="style4"></asp:CompareValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="TxtConfPass" CssClass="style3" 
                ErrorMessage="*Field Cannot be Empty" 
                style="font-style: italic; font-weight: bold"></asp:RequiredFieldValidator></td></tr>
   <tr><td class="style14"><strong>Profile Picture:</strong></td>
       <td class="style4"><asp:FileUpload ID="PanditProfile" runat="server" Height="30px" 
               Width="220px"  class="form-control" /></td>
       <td class="style3">
           &nbsp;</td></tr>
   <tr>
        <td class="style11" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="RegPanditBtn" runat="server" class="btn btn-primary" 
                Height="44px" OnClick="RegPanditBtn_Click" style="font-weight: 700" 
                Text="Done" Width="102px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ResetBtn" runat="server" class="btn btn-primary" Height="44px" 
                style="font-weight: 700" Text="Cancel" Width="102px" 
                onclick="ResetBtn_Click" CausesValidation="False" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="LogoutBtn" Text="Log Out" 
                runat="server"  OnClick="LogoutBtn_Click" Height="44px" style="font-weight: 700" 
                Width="102px" class="btn btn-primary" CausesValidation="False"/>
       </td>
       <td class="style12"></td></tr>
      
    </table>
    </asp:Panel>
    </td></tr>
    </table>
    </div>
    </form>
</body>
</html>
