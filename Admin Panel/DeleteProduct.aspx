<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="DeleteProduct.aspx.cs" Inherits="Admin_Panel_DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Delete Product</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Product Details</li>
						<li><i class="fa fa-file-text-o"></i>Delete Product</li>
					</ol>
				</div>
			</div>
                 <div>
                
                     <asp:Panel ID="Panel2" runat="server">
                     <asp:GridView ID="ProdGrid" runat="server" AutoGenerateColumns="False"  
                         DataKeyNames="S_id" DataSourceID="ProdSqlDataSource" Width="1111px" 
                             AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" 
                             BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                             ForeColor="Black">
                         <Columns>
                             <asp:CommandField ShowDeleteButton="True" />
                             <asp:BoundField DataField="S_id" HeaderText="S_id" ReadOnly="True" 
                                 SortExpression="S_id" InsertVisible="False" />
                             <asp:BoundField DataField="S_name" HeaderText="S_name" 
                                 SortExpression="S_name" />
                             <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                 SortExpression="Quantity" />
                             <asp:BoundField DataField="Entry_date" HeaderText="Entry_date" 
                                 SortExpression="Entry_date" />
                             <asp:BoundField DataField="S_Description" HeaderText="S_Description" 
                                 SortExpression="S_Description" />
                             <asp:BoundField DataField="CategId" HeaderText="CategId" 
                                 SortExpression="CategId" />
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
    </asp:Panel>
                    <asp:SqlDataSource ID="ProdSqlDataSource" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                         SelectCommand="SELECT * FROM [Tbl_Samagri]" 
                         DeleteCommand="DELETE FROM [Tbl_Samagri] WHERE [S_id] = @S_id" 
                         InsertCommand="INSERT INTO [Tbl_Samagri] ([S_name], [Quantity], [Entry_date], [S_Description], [CategId]) VALUES (@S_name, @Quantity, @Entry_date, @S_Description, @CategId)" 
                         
                         UpdateCommand="UPDATE [Tbl_Samagri] SET [S_name] = @S_name, [Quantity] = @Quantity, [Entry_date] = @Entry_date, [S_Description] = @S_Description, [CategId] = @CategId WHERE [S_id] = @S_id">
                        <DeleteParameters>
                            <asp:Parameter Name="S_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="S_name" Type="String" />
                            <asp:Parameter Name="Quantity" Type="String" />
                            <asp:Parameter Name="Entry_date" Type="DateTime" />
                            <asp:Parameter Name="S_Description" Type="String" />
                            <asp:Parameter Name="CategId" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="S_name" Type="String" />
                            <asp:Parameter Name="Quantity" Type="String" />
                            <asp:Parameter Name="Entry_date" Type="DateTime" />
                            <asp:Parameter Name="S_Description" Type="String" />
                            <asp:Parameter Name="CategId" Type="Int32" />
                            <asp:Parameter Name="S_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>   
              
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
  </asp:Content>