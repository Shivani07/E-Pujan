<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateDeleteSupplier.aspx.cs" Inherits="Admin_Panel_UpdateDeleteSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Update/Delete Supplier</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Supplier Details</li>
						<li><i class="fa fa-file-text-o"></i>Update/Delete Supplier</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Update/Delete Supplier
                          </header>
                      </section>
                          </div>
                      </div>
                 <div>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                         DataSourceID="SqlDataSource1" Width="1081px" 
                         BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                         CellPadding="4" CellSpacing="2" ForeColor="Black" AllowPaging="True" 
                         DataKeyNames="SupId">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                         DeleteCommand="DELETE FROM Tbl_Supplier FROM Tbl_Supplier INNER JOIN Tbl_SupplierDetails ON Tbl_Supplier.SupId = Tbl_SupplierDetails.SupId" 
                         SelectCommand="SELECT FROM Tbl_Supplier INNER JOIN Tbl_SupplierDetails ON Tbl_Supplier.SupId = Tbl_SupplierDetails.SupId" 
                         UpdateCommand="UPDATE Tbl_Supplier SET FROM Tbl_Supplier INNER JOIN Tbl_Supplier AS Tbl_Supplier_1 ON Tbl_Supplier.SupId = Tbl_Supplier_1.SupId INNER JOIN Tbl_SupplierDetails ON Tbl_Supplier.SupId = Tbl_SupplierDetails.SupId AND Tbl_Supplier_1.SupId = Tbl_SupplierDetails.SupId">
                     </asp:SqlDataSource>
    
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                         
                         SelectCommand="SELECT Tbl_Supplier.SupId, Tbl_Supplier.SupName, Tbl_SupplierDetails.Email, Tbl_SupplierDetails.OfficeContact, Tbl_SupplierDetails.MobilePhone, Tbl_SupplierDetails.Address FROM Tbl_Supplier INNER JOIN Tbl_SupplierDetails ON Tbl_Supplier.SupId = Tbl_SupplierDetails.SupId" 
                         DeleteCommand="DELETE FROM Tbl_Supplier FROM Tbl_Supplier INNER JOIN Tbl_SupplierDetails ON Tbl_Supplier.SupId = Tbl_SupplierDetails.SupId" 
                         UpdateCommand="UPDATE Tbl_Supplier SET SupName = @supName FROM Tbl_Supplier INNER JOIN Tbl_SupplierDetails ON Tbl_Supplier.SupId = Tbl_SupplierDetails.SupId">
                         <UpdateParameters>
                             <asp:Parameter Name="supName" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                </div>   
              
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
</asp:Content>



