<%@ Page Title="Add a Kit" Language="C#" MasterPageFile="~/Admin Panel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddKit.aspx.cs" Inherits="Admin_Panel_AddKit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="container" class="">
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Add Bundle Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Dashboard.aspx">Home</a></li>
						<li><i class="icon_document_alt"></i>Product Details</li>
						<li><i class="fa fa-file-text-o"></i>Add Kit Items</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Add Kit/Bundle
                          </header>
                          <br />
                          <div class="panel-body">
                          
                          <div class="form-group">
                              <label class="col-sm-2 control-label">Kit Name</label>
                              <div class="col-sm-10">
                              <asp:TextBox ID="t2" runat="server" Width="273px" class="form-control"></asp:TextBox>   
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                               ControlToValidate="t2" ErrorMessage="*Field Cannot be Empty" Font-Italic="True" 
                                               ForeColor="#CC0000"></asp:RequiredFieldValidator>
                              </div>
                              </div>
                              <br />
                              <br />
                              <div class="form-group">
                                <label class="col-sm-2 control-label">Select Items from store</label>
                                <div class="col-sm-10">
                                    <%-- <asp:CheckBox ID="CheckBox1" runat="server" Text="item" 
                                        AutoPostBack="true" oncheckedchanged="CheckBox1_CheckedChanged"/>
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="item2" AutoPostBack="true" oncheckedchanged="CheckBox1_CheckedChanged"/>
                                    <asp:CheckBox ID="CheckBox3" runat="server" Text="item3" AutoPostBack="true" oncheckedchanged="CheckBox1_CheckedChanged"/>
                                    <br />--%>
                                    <%--<asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                                              DataSourceID="SqlDataSource1" DataTextField="S_name" DataValueField="S_name"></asp:CheckBoxList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                              SelectCommand="SELECT [S_name] FROM [Tbl_Samagri]"></asp:SqlDataSource>--%>
                                   <table><tr><td></td><td></td><td>List of Selected Items</td></tr>
                                        <tr><td>
                                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                                                DataSourceID="SqlDataSource1" DataTextField="S_name" DataValueField="S_name" 
                                            onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" Height="21px" 
                                                Width="170px"></asp:CheckBoxList></td>
                                       
                                           <td> <asp:Panel ID="Panel2" runat="server" Width="66px">
                                            </asp:Panel>
                                            </td>
                                            <td><asp:ListBox ID="ListBox1" runat="server" Height="194px" Width="212px" 
                                        Enabled="False" ToolTip="Selected items">
                                    </asp:ListBox>
                                            </td></tr>
                                    </table>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:epujadbConnectionString %>" 
                                        
                                        
                                        SelectCommand="SELECT { fn CONCAT(S_name,Quantity) } AS S_name FROM Tbl_Samagri"></asp:SqlDataSource>
                                    <br />
                                    <asp:Button ID="Done" runat="server" Text="Done" onclick="Done_Click" 
                                        CausesValidation="False" />
                                    <br />
                                    <br />
                                    <%--<asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" 
                                        Width="249px"></asp:TextBox>--%>
                                    
                                    <br />
                                    <asp:Panel ID="Panel1" runat="server">
                                    </asp:Panel>         
                                </div>
                            </div>
                            <br />
                            <br />
                                &nbsp;
            
                            <div class="form-group">
                                      <label class="col-sm-2 control-label">Total Price</label>
                                      <div class="col-sm-10">
                                          <asp:TextBox ID="t6" runat="server" Width="273px" class="form-control" 
                                              Enabled="False"></asp:TextBox>
                                      </div>
                             </div>
                                  <br />
                                  <br />
                         <div class="form-group">
                                      <label class="col-sm-2 control-label">Stock</label>
                                      <div class="col-sm-10">
                                          <asp:TextBox ID="stk" runat="server" Width="273px" class="form-control"></asp:TextBox>
                                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                               ControlToValidate="stk" ErrorMessage="*Should be number only" Font-Italic="True" 
                                               ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                                      </div>
                             </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Product Image</label>
                                      <div class="col-sm-10">
                                                <asp:FileUpload ID="f1" runat="server" Width="273px"  />
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                              ControlToValidate="f1" ErrorMessage="*Field Cannot be Empty" 
                                              Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                      </div>
                                  </div>
                                     <br />
                                     <br />
                                     <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" class="btn btn-primary"></asp:Button>
                                 
                              
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

