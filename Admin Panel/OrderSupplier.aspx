<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="OrderSupplier.aspx.cs" Inherits="Admin_Panel_OrderSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Order to Supplier</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Order Management</li>
						<li><i class="fa fa-file-text-o"></i>Give Order</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Add Kit/Bundle
                          </header>
                          <br />
                          <div class="panel-body">
                          <div class="form-group">
                                <label class="col-sm-2 control-label">Items:</label>
                                <div class="col-sm-10">
                                   
                                   <table style="height: 300px; width: 1044px;">
                                        <tr><td style="width: 86px; height: 66px"><asp:Label ID="Label1" runat="server">Select Items:</asp:Label></td>
                                            <td style="width: 81px; height: 66px"><asp:Label ID="Label6" runat="server" 
                                                    Text="Quantity:" style="font-weight: 700"></asp:Label></td>
                                            <td style="width: 118px; height: 66px">
                                                <asp:Label ID="Label7" runat="server" Text="CP" Font-Bold="True" 
                                                    ForeColor="Black"></asp:Label>
                                            </td>
                                            <td style="width: 166px; height: 66px">
                                                <asp:Label ID="Label8" runat="server" Text="SP" Font-Bold="True" 
                                                    ForeColor="Black"></asp:Label>
                                            </td>
                                            <td style="width: 176px; height: 66px;"><asp:Label ID="Label2" runat="server" CssClass="ui-priority-primary" style="color: #000000">Enter Quantity:</asp:Label></td>
                                            <td style="height: 66px"><asp:Label ID="Label3" runat="server" CssClass="ui-priority-primary" style="color: #000000">Selected Items:</asp:Label></td>
                                            <td style="height: 66px; width: 65px;"><asp:Label ID="Label9" runat="server" 
                                                    CssClass="ui-priority-primary" style="color: #000000">CP:</asp:Label></td>
                                            <td style="height: 66px; width: 59px;"><asp:Label ID="Label10" runat="server" 
                                                    CssClass="ui-priority-primary" style="color: #000000">SP</asp:Label></td>
                                            <td style="height: 66px; width: 91px;"><asp:Label ID="Label4" runat="server" CssClass="ui-priority-primary" style="color: #000000">Quantity:</asp:Label></td>
                                        </tr>
                                        <tr><td style="height: 198px; width: 86px;"><asp:CheckBoxList ID="CheckBoxList1" 
                                                runat="server" DataSourceID="SqlDataSource1" DataTextField="S_name" DataValueField="S_name" 
                                                 onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" Height="34px" 
                                                Width="234px"></asp:CheckBoxList></td>
                                            <td style="height: 198px; width: 81px;">
                                                <asp:Panel ID="Panel3" runat="server" Height="165px" Width="86px">
                                                </asp:Panel>
                                            </td>
                                            <td style="height: 198px; width: 118px;">
                                                <asp:Panel ID="Panel4" runat="server" Height="164px" Width="69px">
                                                </asp:Panel>

                                            </td>
                                            <td style="height: 198px; width: 166px;">
                                                <asp:Panel ID="Panel5" runat="server" Height="168px" Width="52px">
                                                </asp:Panel>

                                            </td>
                                            <td style="width: 176px; height: 198px;"> 
                                                <asp:Panel ID="Panel2" 
                                                    runat="server" Width="67px" Height="166px"></asp:Panel></td>
                                            <td style="height: 198px"><asp:ListBox ID="ListBox1" runat="server" Height="194px" 
                                                    Width="107px" Enabled="False"></asp:ListBox></td>
                                            <td style="height: 198px; width: 65px;"><asp:ListBox ID="ListBox3" runat="server" 
                                                    Height="194px" Width="70px" Enabled="False"></asp:ListBox></td>
                                            <td style="height: 198px; width: 59px;"><asp:ListBox ID="ListBox4" runat="server" 
                                                    Height="194px" Width="64px" Enabled="False" style="margin-left: 0px"></asp:ListBox></td>
                                            <td style="height: 198px; width: 91px;"><asp:ListBox ID="ListBox2" runat="server" 
                                                    Height="194px" Width="112px" Enabled="False" style="margin-left: 0px"></asp:ListBox></td>
                                        </tr>
                                        <tr><td class="tab-right" style="height: 30px; width: 86px;"></td>
                                            <td class="tab-right" style="height: 30px; width: 81px;">&nbsp;</td>
                                            <td class="tab-right" style="height: 30px; width: 118px;">&nbsp;</td>
                                            <td class="tab-right" style="height: 30px; width: 166px;">&nbsp;</td>
                                            <td style="width: 176px; height: 30px;"> </td>
                                            <td class="tab-right" style="height: 30px"></td>
                                            <td class="tab-right" style="height: 30px; width: 65px;">
                                                <asp:Label ID="Label12" runat="server" Text="Total CP:"></asp:Label>
                                                <asp:TextBox ID="TextBox4" runat="server" Width="76px" Height="19px"></asp:TextBox>
                                            </td>
                                            <td class="tab-right" style="height: 30px; width: 59px;">
                                                <asp:Label ID="Label11" runat="server" Text="Total SP:"></asp:Label>
                                                <asp:TextBox ID="TextBox3" runat="server" Width="76px" Height="20px"></asp:TextBox>
                                            </td>
                                            <td class="tab-right" style="height: 30px; width: 91px;">
                                                <asp:Label ID="Label5" runat="server" Text="Total Quantity:"></asp:Label>
&nbsp;
                                                <asp:TextBox ID="TextBox2" runat="server" Width="112px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                        SelectCommand="SELECT [S_name] FROM [Tbl_Samagri]"></asp:SqlDataSource>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="Done" runat="server" Text="Done" onclick="Done_Click" />
                                    <br />
                                    <br />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Select Supplier</label>
                                     <div class="col-sm-10">
                                            <asp:DropDownList ID="DropDownList1" runat="server"  
                                                DataSourceID="SqlDataSource2" DataTextField="SupName" DataValueField="SupName" 
                                                Height="35px" Width="213px" AutoPostBack="True" 
                                                onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                                SelectCommand="SELECT [SupName] FROM [Tbl_Supplier]"></asp:SqlDataSource>
                                     </div>
                             </div>
                            <br />
                            <br />
                                &nbsp;
            
                            <div class="form-group">
                                     <table>
                                     <tr>
                                     <td><asp:Label runat="server">Email:</asp:Label></td>
                                     <td><asp:Label runat="server">Office Contact:</asp:Label></td>
                                     <td><asp:Label runat="server">Mobile Contact:</asp:Label></td>
                                     <td><asp:Label runat="server">Address:</asp:Label></td>
                                     </tr>
                                     <tr>
                                     <td>
                                          <asp:TextBox ID="email" runat="server" Width="250px" class="form-control"></asp:TextBox>
                                      </td>
                                      <td>
                                          <asp:TextBox ID="OffNo" runat="server" Width="250px" class="form-control"></asp:TextBox>
                                      </td>
                                      <td>
                                          <asp:TextBox ID="MobNo" runat="server" Width="250px" class="form-control"></asp:TextBox>
                                      </td>
                                      <td>
                                          <asp:TextBox ID="Addr" runat="server" Width="250px" class="form-control"></asp:TextBox>
                                      </td>
                                      </tr>
                                      </table>
                             </div>
                                  <br />
                                  <br />
                                     <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" class="btn btn-primary"></asp:Button>
                                     <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" class="btn btn-primary"></asp:Button>
                          </div>
                      </section>
                    </div>
                </div>
                 
              
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
</asp:Content>

