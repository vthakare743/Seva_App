<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ApplicationStatus.aspx.cs" Inherits="Admin_ApplicationStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<div class="panel panel-blue" style="background:#fff;">
                                            <div class="panel-body pan">
                                                <form id="Form1" runat="server" class="form-horizontal">
                                                
                                                <div class="panel panel-blue" style="background:#FFF;">
                            <div class="panel-heading" style="color: #000080">View Application Status</div>
                           
                            <div class="panel-body" style="border: thin groove #CC99FF; color: #333333;">
                                <br />
                          
                           
                             <div class="form-group">
                                            <label class="control-label" for="inputUserame">&nbsp;&nbsp; Coustomer Name:</label>
                                            <asp:TextBox ID="txtcustomer" runat="server" class="form-control" 
                                                placeholder=" Coustomer Name:" ReadOnly="True"></asp:TextBox>
                                             </div>
                                               
                                                
                            <div class="form-group">
                                            <label class="control-label" for="inputCarBrand">&nbsp;&nbsp; Mobile No:</label>
                                            <asp:TextBox ID="txtno" runat="server" class="form-control" 
                                                placeholder=" Mobile No:" ReadOnly="True"></asp:TextBox>
                                              </div>
                                              
                            <div class="form-group">
                                            <label class="control-label" for="inputCarModel">&nbsp;&nbsp; Email ID:</label>
                                            <asp:TextBox ID="txtmail" runat="server" class="form-control" 
                                                placeholder=" Email ID:" ReadOnly="True"></asp:TextBox>
                                               </div>
                               
                            
                            <div class="form-group">
                                             <label class="control-label" for="inputCarNumber">&nbsp;&nbsp; Services:</label>
                                            <asp:TextBox ID="txtservice" runat="server" class="form-control" 
                                                placeholder=" Services:" ReadOnly="True"></asp:TextBox>
                                             </div>
                                       
                            <div class="form-group">
                                            <label class="control-label" for="inputAssignWorker">&nbsp;&nbsp; Date:</label>
                                            <asp:TextBox ID="txtdate" runat="server" class="form-control" 
                                                placeholder=" Date:" ReadOnly="True"></asp:TextBox>
                                            </div>

                                     <div class="form-group">
                                            <label class="control-label" for="inputAssignWorker">&nbsp;&nbsp; Status:</label>
                                            <asp:TextBox ID="txtstatus" runat="server" class="form-control" 
                                                placeholder=" Status:" ReadOnly="True"></asp:TextBox>
                                            </div>
                                         
                                      </div>    
                          
                               
                    
     
  <%--  <asp:DetailsView ID="DetailsView1" runat="server" Height="100px" Width="120px" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical" CellSpacing="4" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
            <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
            <asp:BoundField DataField="services" HeaderText="services" SortExpression="services" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="payment_mode" HeaderText="payment_mode" SortExpression="payment_mode" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:DetailsView>--%>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" SelectCommand="SELECT [id], [customer_name], [mobile_no], [email_id], [services], [date], [payment_mode], [status] FROM [Service_RequestData]"></asp:SqlDataSource>
   <br />
                                                    <br />
    <div class="row">
       <%-- <div class="col-lg-4">
            </div>--%>
         <div class="col-lg-4">
              
           

             <div class="control-group">
				    <label class="control-label" for="Status" style="color: #FF6600">&nbsp;&nbsp; Status:</label>
				     <asp:DropDownList ID="ddlStatus" runat="server" class="form-control" Width="275px" >
                                                 <asp:ListItem >Select</asp:ListItem>
                                                 <asp:ListItem >Pending</asp:ListItem>
                                                 <asp:ListItem >Done</asp:ListItem>
                                   
                                  </asp:DropDownList>
                 <br/>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-secondary" OnClick="btnSubmit_Click"  />
                </div> 
                     
      </div>
    
 </div>
                                                    </div>
                                                    
                                              
                
         <div class="col-lg-4">
             <asp:Label ID="lblmsg" runat="server" Font-Size="Large"></asp:Label>
            </div>
                                                  
           </form>
            </div> 

         </div>
       </div>
       

</asp:Content>

