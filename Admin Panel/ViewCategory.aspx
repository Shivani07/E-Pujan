<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewCategory.aspx.cs" Inherits="Admin_Panel_ViewCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Add Category Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="ViewProduct.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Category Details</li>
						<li><i class="fa fa-file-text-o"></i>View Category</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             View Category
                          </header>
                          <br />
                          <div class="panel-body">
                          <div class="form-group">
                                      
                                 <asp:Label ID="LblRecord" runat="server" />
                             
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
