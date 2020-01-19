<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewOrders.aspx.cs" Inherits="Admin_Panel_ViewOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> View Order Details</h3>
                    
                    <br />
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Order Details</li>
						<li><i class="fa fa-file-text-o"></i>View Orders</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             View Order
                          </header>
                          <br />
                          <div class="panel-body">
                          <div class="form-group">
                          &nbsp;&nbsp;
                          <br />
                          <asp:Label ID="LblRecord" runat="server" />
                          <br /><br />
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                     DataKeyNames="Order_id" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="Order_id" HeaderText="Order_id" InsertVisible="False" 
                                             ReadOnly="True" SortExpression="Order_id" />
                                         <asp:BoundField DataField="User_id" HeaderText="User_id" 
                                             SortExpression="User_id" />
                                         <asp:BoundField DataField="Total_qty" HeaderText="Total_qty" 
                                             SortExpression="Total_qty" />
                                         <asp:BoundField DataField="Total_price" HeaderText="Total_price" 
                                             SortExpression="Total_price" />
                                     </Columns>
                                 </asp:GridView>
                                 <br />
                                 <br />
                                 <table>
                        <td style="width: 272px"><asp:TextBox ID="SearchTb" placeholder="Enter Text" runat="server" Width="273px" class="form-control"></asp:TextBox></td>    
                        <td><asp:Button ID="SearchButton" runat="server" Text="Search" onclick="SearchButton_Click" class="btn btn-primary"></asp:Button>
                         </td><td>
                                 &nbsp;</td>
                    </table>
                    <br />
                                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                  DataSourceID="SqlDataSource2">
                                     <Columns>
                                         <asp:BoundField DataField="Order_id" HeaderText="Order_id" 
                                             SortExpression="Order_id" />
                                         <asp:BoundField DataField="prod_id" HeaderText="prod_id" 
                                             SortExpression="prod_id" />
                                         <asp:BoundField DataField="prod_qty" HeaderText="prod_qty" 
                                             SortExpression="prod_qty" />
                                         <asp:BoundField DataField="Order_date" HeaderText="Order_date" 
                                             SortExpression="Order_date" />
                                     </Columns>
                              </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                  SelectCommand="SELECT * FROM [Tbl_OrderDetails] WHERE ([Order_id] = @Order_id)">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="SearchTb" Name="Order_id" PropertyName="Text" 
                                             Type="Int32" />
                                     </SelectParameters>
                              </asp:SqlDataSource>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                     ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                     SelectCommand="SELECT * FROM [Tbl_Order]">
                                 </asp:SqlDataSource>
                             
                             </div> 
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



