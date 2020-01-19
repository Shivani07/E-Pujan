<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditAdminProfile.aspx.cs" Inherits="Admin_Panel_EditAdminProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header" style="font-style: normal"><i class="fa fa-file-text-o"></i> Edit Admin Login Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Admin Login Details</li>
						<li style="font-style: normal"><i class="fa fa-file-text-o"></i>Admin Login</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Admin Login
                          </header>
                          <br />
                          <div class="panel-body">
                          
                          <div class="form-group">
                                      <label class="col-sm-2 control-label">Name</label>
                                      <div class="col-sm-10">
                                      <asp:TextBox ID="nmeTxt" runat="server" Width="273px" class="form-control"></asp:TextBox>
                                        
                                          
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                              ControlToValidate="nmeTxt" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                                              ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        
                                          
                                      </div>
                                      </div>
                                      <br />
                                        <br />
                                     
                                      
                                  <br />
                               
                                    &nbsp;
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Password</label>
                                      <div class="col-sm-10">
                                           <asp:TextBox ID="passTxt" runat="server" Width="273px" class="form-control"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                               ControlToValidate="passTxt" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                                               ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                      </div>
                                  </div>
                                  <br />
                                    <br />
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Confirm Password</label>
                                      <div class="col-sm-10">
                                          <asp:TextBox ID="confrmTxt" runat="server" Width="273px" class="form-control"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                              ControlToValidate="confrmTxt" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                                              ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                           <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                              ControlToCompare="passTxt" ControlToValidate="confrmTxt" ErrorMessage="CompareValidator" 
                                              Font-Italic="True" ForeColor="#CC0000">*Password doesnt match</asp:CompareValidator>
                                          </div>
                                  </div>
                                  <br />
                                    <br />
                         
                                  
                                  
                                  <br />
                                    <br />
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Image</label>
                                      <div class="col-sm-10">
                                                <asp:FileUpload ID="ImgFile" runat="server" Width="273px"  />
                                    </div>
                                     </div>
                                     <br />
                                       <br />
                                     <asp:Button ID="UpdateBtn" runat="server" Text="Update" 
                                      onclick="Button1_Click" class="btn btn-primary"></asp:Button>
                                 
                              
                                     &nbsp;
                                 
                              
                                     <asp:Button ID="RstBtn" runat="server" Text="Reset" 
                                      onclick="Button2_Click" class="btn btn-primary"></asp:Button>
                                 
                              &nbsp;
                                 
                              <asp:Button ID="CancelBtn" runat="server" Text="Cancel" 
                                      onclick="Button2_Click" class="btn btn-primary"></asp:Button>
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

