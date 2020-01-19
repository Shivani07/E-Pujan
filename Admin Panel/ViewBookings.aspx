<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewBookings.aspx.cs" Inherits="Admin_Panel_ViewBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> View Bookings Details</h3>
                    
                    <br />
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Bookings Details</li>
						<li><i class="fa fa-file-text-o"></i>View Bookings</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             View Bookings
                          </header>
                          <br />
                          <div class="panel-body">
                          <div class="form-group">
                          &nbsp;&nbsp;
                          <br />
                          <asp:Label ID="LblRecord" runat="server" />
                          <br /><br />
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                     DataKeyNames="BookId" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="PanditId" HeaderText="PanditId" 
                                             SortExpression="PanditId" />
                                         <asp:BoundField DataField="UserId" HeaderText="UserId" 
                                             SortExpression="UserId" />
                                         <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" 
                                             SortExpression="BookingDate" />
                                         <asp:BoundField DataField="BookId" HeaderText="BookId" 
                                             SortExpression="BookId" InsertVisible="False" ReadOnly="True" />
                                     </Columns>
                                 </asp:GridView>
                                 <br />
                                 <br />
                    <br />
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                     ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                     SelectCommand="SELECT * FROM [Tbl_BookPandit]">
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





