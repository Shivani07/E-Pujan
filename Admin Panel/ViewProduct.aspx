<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="Admin_Panel_ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> View Product Details</h3>
                    <table>
                        <td style="width: 272px"><asp:TextBox ID="SearchTb" placeholder="Enter Text" runat="server" Width="273px" class="form-control"></asp:TextBox></td>    
                        <td><asp:Button ID="SearchButton" runat="server" Text="Search" onclick="SearchButton_Click" class="btn btn-primary"></asp:Button>
                         </td><td>
                                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                     Text="View All" Width="129px" class="btn btn-primary"/>
                        </td>
                    </table>
                    <br />
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Product Details</li>
						<li><i class="fa fa-file-text-o"></i>View Product</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             View Product
                          </header>
                          <br />
                          <div class="panel-body">
                          <div class="form-group">
                          &nbsp;&nbsp;
                          <br />
                          <asp:Label ID="LblRecord" runat="server" />
                          <br /><br />
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                     DataKeyNames="S_id" DataSourceID="SqlDataSource1" Visible="False">
                                     <Columns>
                                         <asp:BoundField DataField="S_id" HeaderText="S_id" InsertVisible="False" 
                                             ReadOnly="True" SortExpression="S_id" />
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
                                     </Columns>
                                 </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                     ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                     DeleteCommand="DELETE FROM [Tbl_Samagri] WHERE [S_id] = @S_id" 
                                     InsertCommand="INSERT INTO [Tbl_Samagri] ([S_name], [Quantity], [Entry_date], [CategId]) VALUES (@S_name, @Quantity, @Entry_date, @CategId)" 
                                     SelectCommand="SELECT Tbl_Samagri.S_id, Tbl_Samagri.S_name, Tbl_Samagri.Quantity, Tbl_Samagri.Entry_date, Tbl_Price.S_Price, Tbl_Price.C_Price, Tbl_Category.CategName FROM Tbl_Samagri INNER JOIN Tbl_Price ON Tbl_Samagri.S_id = Tbl_Price.S_id INNER JOIN Tbl_Category ON Tbl_Samagri.CategId = Tbl_Category.CategId WHERE (Tbl_Samagri.S_name LIKE '%' + @S_name + '%')" 
                                     
                                  UpdateCommand="UPDATE [Tbl_Samagri] SET [S_name] = @S_name, [Quantity] = @Quantity, [Entry_date] = @Entry_date, [CategId] = @CategId WHERE [S_id] = @S_id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="S_id" Type="Int32" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="S_name" Type="String" />
                                         <asp:Parameter Name="Quantity" Type="String" />
                                         <asp:Parameter Name="Entry_date" Type="DateTime" />
                                         <asp:Parameter Name="CategId" Type="Int32" />
                                     </InsertParameters>
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="SearchTb" Name="S_name" PropertyName="Text" 
                                             Type="String" />
                                     </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="S_name" Type="String" />
                                         <asp:Parameter Name="Quantity" Type="String" />
                                         <asp:Parameter Name="Entry_date" Type="DateTime" />
                                         <asp:Parameter Name="CategId" Type="Int32" />
                                         <asp:Parameter Name="S_id" Type="Int32" />
                                     </UpdateParameters>
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



