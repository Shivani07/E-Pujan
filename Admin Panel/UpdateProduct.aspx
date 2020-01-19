<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateProduct.aspx.cs" Inherits="Admin_Panel_UpdateProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Update Product</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Product Details</li>
						<li><i class="fa fa-file-text-o"></i>Update Product</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Update Product
                          </header>
                     
                      </section>
                     
             
                          </div>
                      </div>
                 <div>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                         DataSourceID="ProductSqlDataSource" Width="1111px" DataKeyNames="S_id" 
                         BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                         CellPadding="4" CellSpacing="2" ForeColor="Black" AllowPaging="True">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="S_name" HeaderText="S_name" 
                          SortExpression="S_name" />
                      <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                          SortExpression="Quantity" />
                      <asp:BoundField DataField="Entry_date" HeaderText="Entry_date" 
                          SortExpression="Entry_date" />
                 
                      <asp:BoundField DataField="S_Price" HeaderText="S_Price" 
                          SortExpression="S_Price" />
                      
                      <asp:BoundField DataField="C_Price" HeaderText="C_Price" 
                          SortExpression="C_Price" />
                      <asp:BoundField DataField="CategName" HeaderText="CategName" 
                          SortExpression="CategName" />
                      <asp:BoundField DataField="S_id" HeaderText="S_id" InsertVisible="False" 
                          ReadOnly="True" SortExpression="S_id" />
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
    
      <asp:SqlDataSource ID="ProductSqlDataSource" runat="server" 
          ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
          
                         SelectCommand="SELECT Tbl_Samagri.S_name, Tbl_Samagri.Quantity, Tbl_Samagri.Entry_date, Tbl_Price.S_Price, Tbl_Price.C_Price, Tbl_Category.CategName, Tbl_Samagri.S_id, Tbl_Samagri.CategId FROM Tbl_Samagri INNER JOIN Tbl_Price ON Tbl_Samagri.S_id = Tbl_Price.S_id INNER JOIN Tbl_Category ON Tbl_Samagri.CategId = Tbl_Category.CategId" 
                         DeleteCommand="DELETE FROM Tbl_Samagri FROM Tbl_Samagri INNER JOIN Tbl_Category ON Tbl_Samagri.CategId = Tbl_Category.CategId INNER JOIN Tbl_Price ON Tbl_Samagri.S_id = Tbl_Price.S_id INNER JOIN Tbl_img ON Tbl_Samagri.S_id = Tbl_img.S_id INNER JOIN Tbl_Price AS Tbl_Price_1 ON Tbl_Samagri.S_id = Tbl_Price_1.S_id WHERE (Tbl_Samagri.S_id = @S_id)" 
                         InsertCommand="INSERT INTO [Tbl_Samagri] ([S_name], [Quantity], [Entry_date], [CategId]) VALUES (@S_name, @Quantity, @Entry_date, @S_Description, @CategId)" 
                         
                         
                         
                         UpdateCommand="UPDATE Tbl_Samagri SET S_name = @S_name, Quantity = @Quantity, Entry_date = @Entry_date FROM Tbl_Samagri INNER JOIN Tbl_Category ON Tbl_Samagri.CategId = Tbl_Category.CategId INNER JOIN Tbl_Price ON Tbl_Samagri.S_id = Tbl_Price.S_id WHERE (Tbl_Samagri.S_id = @S_id)">
          <DeleteParameters>
              <asp:Parameter Name="S_id" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="S_name" Type="String" />
              <asp:Parameter Name="Quantity" Type="String" />
              <asp:Parameter Name="Entry_date" Type="DateTime" />
              
              <asp:Parameter Name="S_Description" />
              
              <asp:Parameter Name="CategId" Type="Int32" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="S_name" Type="String" />
              <asp:Parameter Name="Quantity" Type="String" />
              <asp:Parameter Name="Entry_date" Type="DateTime" />
              
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

