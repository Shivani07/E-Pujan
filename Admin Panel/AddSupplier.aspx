<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSupplier.aspx.cs" Inherits="Admin_Panel_AddSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Add Supplier Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Supplier Details</li>
						<li><i class="fa fa-file-text-o"></i>Add Supplier</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Add Supplier
                          </header>
                          <br />
                          <div class="panel-body">
                                      <br />
                                      <br />
                                      <div class="form-group">
                                        <label class="col-sm-2 control-label">Supplier Name</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="t2" runat="server" Width="273px" class="form-control"></asp:TextBox>
                                        
                                          
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                              ControlToValidate="t2" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                                              ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        </div>
                                      </div>
                                      <br />
                                      <br />
                                      <div class="form-group">
                                        <label class="col-sm-2 control-label">Supplier Office Contact No.</label>
                                        <div class="col-sm-10">
                                        <asp:TextBox ID="t3" runat="server" Width="273px" class="form-control"></asp:TextBox>
                                           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                               ControlToValidate="t3" ErrorMessage="*Should be number only" Font-Italic="True" 
                                               ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                        </div>
                                      </div>
                                      <br />
                                      <br />
                                       <div class="form-group">
                                        <label class="col-sm-2 control-label">Supplier Mobile Contact No.</label>
                                        <div class="col-sm-10">
                                        <asp:TextBox ID="t4" runat="server" Width="273px" class="form-control"></asp:TextBox>
                                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                               ControlToValidate="t4" ErrorMessage="*Should be number only" Font-Italic="True" 
                                               ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                               ControlToValidate="t4" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                                               ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        </div>
                                      </div>
                                      <br />
                                      <br />
                                  <br />
                                  <br />
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Address</label>
                                      <div class="col-sm-10">
                                      <asp:TextBox ID="t5" runat="server" Width="273px" class="form-control" 
                                              Height="103px" TextMode="MultiLine"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                              ControlToValidate="t2" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                                              ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                      </div>
                                  </div><br /><br />  &nbsp;
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">E-Mail</label>
                                      <div class="col-sm-10">
                                           <asp:TextBox ID="t6" runat="server" Width="273px" class="form-control"></asp:TextBox>
                                           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                               ControlToValidate="t6" ErrorMessage="*Format is wrong" Font-Italic="True" 
                                               ForeColor="#CC0000" SetFocusOnError="True" 
                                               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                              ControlToValidate="t6" ErrorMessage="*Field Cannot be Empty" 
                                              Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                      </div>
                                  </div><br /><br /><br /><br />
                                     <asp:Button ID="Button1" runat="server" Text="Submit" 
                                      onclick="Button1_Click" class="btn btn-primary"></asp:Button>&nbsp;&nbsp;
                                     <asp:Button ID="RstBtn" runat="server" Text="Reset" 
                                      onclick="RstBtn_Click" class="btn btn-primary" CausesValidation="False"></asp:Button>
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                              SelectCommand="SELECT * FROM [Tbl_SupplierDetails]"></asp:SqlDataSource>
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




