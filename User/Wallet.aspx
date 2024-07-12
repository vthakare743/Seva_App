<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Wallet.aspx.cs" Inherits="User_Wallet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="Form1"  method="post" novalidate="novalidate" runat="server">
<div class="row">
   
    <div class="col-md-6">
       <div class="card" id="admin-login-card">
          
           <div class="card-header">
              <i class="fa fa-folder-open" style="color: #000000;  font-weight: bold"></i>&nbsp&nbsp<asp:Label ID="Label1" runat="server" Text="Manage Wallet" Font-Bold="True" Font-Size="Large" ForeColor="#FF9900"></asp:Label>
           </div>
           <div class="card-body">
             <form>
                  
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Payment Method:<span class="required" style="color: #FF0000">*</span></label>
            
                    <asp:DropDownList ID="ddlpay" runat="server"  class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem>-CHOOSE-</asp:ListItem>
                                    <asp:ListItem>Scanner</asp:ListItem>
                                    <asp:ListItem>PhonePe</asp:ListItem>
                                </asp:DropDownList>
                                <span class="error"></span>
                </div>
                 
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Amount <span class="required"style="color: #FF0000">*</span></label>
                
                <asp:TextBox ID="txtamount" runat="server"  class="form-control" MaxLength="10"></asp:TextBox>
            
                     
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtamount" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                    ValidationExpression="\d{10}" SetFocusOnError="True" ValidationGroup="B">Please fill out this field</asp:RegularExpressionValidator>

                </div>

                 
                  <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Screenshot <span class="required"style="color: #FF0000">*</span></label>
                <div>
                      <asp:FileUpload ID="FUss" runat="server" />
                    </div>
                </div>


                <div class="row">
                   <div  class="col-12">
                    <asp:Button ID="btnLogin" runat="server" Text="Save" class="btn btn-lg btn btn-warning btn-block" ValidationGroup="B"  />
                   </div>
                    
              
                 <br />
                 <asp:Label ID="lblmsg" runat="server" Font-Bold="True" 
                        ForeColor="#FF3300"></asp:Label>
             </form>
           </div>
       </div>
    </div>
   
    </div>
        
    
      
    
      
           
           
   
    <div class="col-md-6">
       <div class="card" id="Div1">
           <div>
                <asp:Panel ID="Panel" runat="server" ScrollBars="Both" Width="100%" Height="550">
                <div class="card-body">
           <form>
            
                
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Mobile Number <span class="required"style="color: #FF0000">*</span></label>
                
                <asp:TextBox ID="txtno" runat="server"  class="form-control" MaxLength="10"></asp:TextBox>
            
                     
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtno" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                    ValidationExpression="\d{10}" SetFocusOnError="True" ValidationGroup="B">Please fill out this field</asp:RegularExpressionValidator>

                </div>
                     
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Payment Type <span class="required"style="color: #FF0000">*</span></label>
                
                <asp:TextBox ID="txtpay" runat="server"  class="form-control" MaxLength="10"></asp:TextBox>
            
                     
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtpay" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                    ValidationExpression="\d{10}" SetFocusOnError="True" ValidationGroup="B">Please fill out this field</asp:RegularExpressionValidator>

                </div>
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">QR Code <span class="required"style="color: #FF0000">*</span></label>
                <%--<div>
                      <asp:FileUpload ID="FUqr" runat="server" />
                    </div>--%>
                </div>
                        <span class="error"></span>
                   <img src="Photos/QR-Code.png" />
               </form>
                     
                    </div>
                    </asp:Panel>
           </div>
       </div>
  </div>
   
         </form>
</asp:Content>

