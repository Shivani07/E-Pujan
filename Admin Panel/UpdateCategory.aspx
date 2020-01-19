<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateCategory.aspx.cs" Inherits="Admin_Panel_UpdateCategory" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Update/Delete Category</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Category</li>
						<li><i class="fa fa-file-text-o"></i>Update/Delete Category</li>
					</ol>
				</div>
			</div>
                 <div>
                
   <asp:Panel ID="Panel2" runat="server">
                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                         DataKeyNames="CategId" DataSourceID="CategSqlDataSource" 
                         BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                         CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CategId" HeaderText="CategId" InsertVisible="False" 
                                 ReadOnly="True" SortExpression="CategId" />
            <asp:BoundField DataField="CategName" HeaderText="CategName" 
                                 SortExpression="CategName" />
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
                     <asp:SqlDataSource ID="CategSqlDataSource" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                         DeleteCommand="DELETE FROM [Tbl_Category] WHERE [CategId] = @CategId" 
                         InsertCommand="INSERT INTO [Tbl_Category] ([CategName]) VALUES (@CategName)" 
                         SelectCommand="SELECT * FROM [Tbl_Category]" 
                         
                         UpdateCommand="UPDATE [Tbl_Category] SET [CategName] = @CategName WHERE [CategId] = @CategId">
                         <DeleteParameters>
                             <asp:Parameter Name="CategId" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="CategName" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="CategName" Type="String" />
                             <asp:Parameter Name="CategId" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource> 
    </asp:Panel>
                    
                </div>   
              
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
  </asp:Content>