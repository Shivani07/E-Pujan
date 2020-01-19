<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin Panel/AdminMasterPage.master" CodeFile="Category.aspx.cs" Inherits="Admin_Panel_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Add Category Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Category Details</li>
						<li><i class="fa fa-file-text-o"></i>Add Category</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Add Category
                          </header>
                          <br />
                          <div class="panel-body">
                          <div class="form-group">
                                      <label class="col-sm-2 control-label">Category Name</label>
                                      <div class="col-sm-10">
                                      <asp:TextBox ID="t1" runat="server" Width="273px" class="form-control"></asp:TextBox>     
                                      </div>
                                      </div>
                                      <br />
                                        <br />
                                         <br />
                                       <br />
                                     <asp:Button ID="Button1" runat="server" Text="Submit" 
                                      onclick="Button1_Click" class="btn btn-primary"></asp:Button>
                                 
                                        &nbsp;
                                     <asp:Button ID="RstBtn" runat="server" Text="Reset" 
                                      onclick="RstBtn_Click" class="btn btn-primary"></asp:Button>
                                 
                                        </div>
                               </section>
                          </div>
                      </div>
              </section>
      </section>
 </section>
</asp:Content>