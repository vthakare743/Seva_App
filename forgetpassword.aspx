<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="Form1"  method="post" novalidate="novalidate" runat="server">
<div class="row">
   
    <div class="col-md-9">
       <div class="card" id="admin-login-card">
          
           <div class="card-header">
              <i class="fa fa-users" style="color: #000000;  font-weight: bold"></i>&nbsp&nbsp<asp:Label ID="Label1" runat="server" Text="Forgot Password" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
           </div>
           <div class="card-body">
             <form >
                  
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Registration No:</label>
                <asp:TextBox ID="txtRegistrationNo" runat="server"   class="form-control" ></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtRegistrationNo" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red" Display="Dynamic" SetFocusOnError="True" 
                    ValidationGroup="B">Enter Registration Number</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Mobile Number :</label>
                
                <asp:TextBox ID="txtMobile" runat="server"  class="form-control" MaxLength="10"></asp:TextBox>
            
                     
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtMobile" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                    ValidationExpression="\d{10}" SetFocusOnError="True" ValidationGroup="B">Mobile no. must be in proper format</asp:RegularExpressionValidator>

                </div>

                 <div class="form-group">
                     <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">OR</label>
                         </div>
                 </div>
                  <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Email ID:</label>
                
               <asp:TextBox ID="txtEmail" runat="server"  class="form-control" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="B">Email must be in proper format</asp:RegularExpressionValidator>
                </div>


                <div class="row">
                   <div  class="col-12">
                    <asp:Button ID="btnLogin" runat="server" Text="Submit" class="btn btn-lg btn-primary btn-block" ValidationGroup="B"  />
                   </div>   
                                      
               </div>    
                 <br />
                 <asp:Label ID="lblmsg" runat="server" Font-Bold="True" 
                        ForeColor="#FF3300"></asp:Label>
             </form>
           </div>
       </div>
    </div>
   
    </div>
        
    </form>














</asp:Content>

