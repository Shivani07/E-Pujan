<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewSupplier.aspx.cs" Inherits="Admin_Panel_ViewSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> View Supplier Order Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Supplier Order Details</li>
						<li><i class="fa fa-file-text-o"></i>View Supplier Order</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             View Supplier Order
                          </header>
                          <br />
                            <div class="panel-body">
                            <div class="form-group">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                         DataSourceID="SqlDataSource1" Width="1081px" 
                         BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                         CellPadding="4" CellSpacing="2" ForeColor="Black" AllowPaging="True" 
                         DataKeyNames="SupId">
                  <Columns>
                      <asp:BoundField DataField="SupId" HeaderText="SupId" InsertVisible="False" 
                          ReadOnly="True" SortExpression="SupId" />
                      <asp:BoundField DataField="SupName" HeaderText="SupName" 
                          SortExpression="SupName" />
                      <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                      <asp:BoundField DataField="OfficeContact" HeaderText="OfficeContact" 
                          SortExpression="OfficeContact" />
                      <asp:BoundField DataField="MobilePhone" HeaderText="MobilePhone" 
                          SortExpression="MobilePhone" />
                      <asp:BoundField DataField="Address" HeaderText="Address" 
                          SortExpression="Address" />
                  </Columns>
                  <FooterStyle BackColor="#CCCCCC" />
                  <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                  <RowStyle BackColor="White" />
                  <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#808080" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#383838" />
      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                         SelectCommand="SELECT Tbl_Supplier.SupId, Tbl_Supplier.SupName, Tbl_SupplierDetails.Email, Tbl_SupplierDetails.OfficeContact, Tbl_SupplierDetails.MobilePhone, Tbl_SupplierDetails.Address FROM Tbl_Supplier INNER JOIN Tbl_SupplierDetails ON Tbl_Supplier.SupId = Tbl_SupplierDetails.SupId"></asp:SqlDataSource>
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

