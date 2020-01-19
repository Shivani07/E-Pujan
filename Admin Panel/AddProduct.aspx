<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_Panel_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="container" class="">
<section id="main-content">
   <section class="wrapper">
        <div class="row">
		<div class="col-lg-12">
			<h3 class="page-header"><i class="fa fa-file-text-o"></i> Add Product Details</h3>
				<ol class="breadcrumb">
					<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
					<li><i class="icon_document_alt"></i>Product Details</li>
					<li><i class="fa fa-file-text-o"></i>Add Product</li>
				</ol>
			</div>
			</div>
            <div class="row">
            <div class="col-lg-12">
               <section class="panel">
                    <header class="panel-heading">Add Product</header>
                 <br />
                     <div class="panel-body">
                      <div class="form-group">
                          <label class="col-sm-2 control-label">Product Name</label>
                       <div class="col-sm-10">
                       <asp:TextBox ID="t2" runat="server" Width="273px" class="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="t2" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator></div>
                        </div> <br /><br />
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Category</label>
                                <div class="col-sm-10">
                                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
                                     DataSourceID="SqlDataSource1" DataTextField="CategName" 
                                     DataValueField="CategName" Width="273px"></asp:DropDownList>   
                                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                       ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                                       SelectCommand="SELECT [CategName] FROM [Tbl_Category]"></asp:SqlDataSource>
                                      </div>
                                  </div><br />&nbsp;<br /><br />
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Quantity</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="t10" runat="server" Width="273px" class="form-control"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                              ControlToValidate="t10" ErrorMessage="*Field Cannot be Empty" 
                               Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>
                  </div><br /><br />
                  <div class="form-group">
                      <label class="col-sm-2 control-label">Product Image</label>
                           <div class="col-sm-10">
                               <asp:FileUpload ID="f1" runat="server" Width="273px"  />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="f1" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                                ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </div>
                  </div><br /><br />
                  <asp:Button ID="Button1" runat="server" Text="Submit" 
                  onclick="Button1_Click" class="btn btn-primary"></asp:Button>
                  <asp:Button ID="Button2" runat="server" Text="Reset" 
                   onclick="Button2_Click" class="btn btn-primary" 
                   CausesValidation="False"></asp:Button>
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


