<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditAgent.aspx.cs" Inherits="Admin_EditAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="Form1" runat="server">
      <div class="col-md-9">
       <div class="card" >
           <br>
          
           
                <center></center>
               
                 
               
             <div class="card-header">

             
              <center>
                      
                  <h3 style="color: #FFFFFF; background-color: #0000FF;">Edit Profile</h3></center>
           </div>

           <div class="card-body">
             

                 <div class="row">
     <div class="col-md-3"></div>
    <div class="col-md-10">
                
        
                <div class="form-group">
                                            <label class="control-label" for="inputFirstName">First Name:</label>
                                            <asp:TextBox ID="txtfirstname" runat="server" class="form-control" 
                                                placeholder=" First Name:"></asp:TextBox>
                                            
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txtfirstname" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationExpression="[a-zA-Z ]*$">Enter First Name</asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                        ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtfirstname" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter First Name</asp:RequiredFieldValidator>
                                                &nbsp;
                                        </div>
         <div class="form-group">
                                             <label class="control-label" for="inputAddress">Middle Name:</label>
                                            <asp:TextBox ID="txtmname" runat="server" class="form-control" 
                                                placeholder=" Middle Name:"></asp:TextBox>
                                           
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmname" 
                                                    ForeColor="Red" SetFocusOnError="True">Enter Middle Name</asp:RequiredFieldValidator>
                                                &nbsp;
                                        </div>
                 
                  <div class="form-group">
                                             <label class="control-label" for="inputLastName">Last Name:</label>
                                            <asp:TextBox ID="txtlastname" runat="server" class="form-control" 
                                                placeholder=" Last Name:"></asp:TextBox>
                                           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txtlastname" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationExpression="[a-zA-Z ]*$">Enter Last Name</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator
                                                        ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtlastname" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter Last Name</asp:RequiredFieldValidator>
                                                &nbsp;
                                        </div>

                  
                 
                 <div class="form-group">
                                              <label class="control-label" for="inputMobileNumber">Mobile Number:</label>   
                                                <asp:TextBox ID="txtno" runat="server" class="form-control" placeholder=" Mobile:"></asp:TextBox>
                                                
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                                        ErrorMessage="RegularExpressionValidator" ControlToValidate="txtno" 
                                                        Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                        ValidationExpression="\d{10}">Enter Mobile Number</asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                            ID="RequiredFieldValidator6" runat="server" 
                                                        ErrorMessage="RequiredFieldValidator" ControlToValidate="txtno" 
                                                        Display="Dynamic" ForeColor="Red">Enter Mobile Number</asp:RequiredFieldValidator>
                                                    &nbsp;
                                              
                                        </div>

                 <div class="form-group">
                                        <label class="control-label" for="inputEmailId">Email Id:</label>    
                                     <asp:TextBox ID="txtemail" runat="server" class="form-control"  
                                         placeholder=" Email:"></asp:TextBox>
                                    
                                         <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                             ErrorMessage="RegularExpressionValidator" ControlToValidate="txtemail" 
                                             ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*" 
                                             Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter proper email id</asp:RegularExpressionValidator>--%><asp:RequiredFieldValidator
                                                 ID="RequiredFieldValidator5" runat="server" 
                                             ErrorMessage="RequiredFieldValidator" ControlToValidate="txtemail" 
                                             Display="Dynamic" ForeColor="Red">Enter Email ID</asp:RequiredFieldValidator>&nbsp; 
                                        </div>
                 
                
          
                <div>
                    <span id="ContentPlaceHolder1_lblsusess" style="color:Red;font-size:Larger;"></span>
                
         </div>
              <%-- <div>
                    <label class="check-box">					                      
                      <input id="ContentPlaceHolder1_chkCondition" type="checkbox" name="ctl00$ContentPlaceHolder1$chkCondition" tabindex="10">&nbsp;I Accept term &amp; condition <a href="termsAndCondition.aspx"> Click Here</a> 
                    </label>
                </div>--%>
          
        </div>
      
                     <div class="col-md-9"></div>
                     
                <div class="row"> </div>
                    <div class="col-9"></div>
                   <div class="col-9">
              <asp:Button ID="btnUpdate" runat="server" Text="Update"  Class="btn btn-warning" OnClick="btnUpdate_Click"  />
                             <asp:Button ID="btnDelete" runat="server" Text="Delete"  Class="btn btn-danger" OnClick="btnDelete_Click"  />
                                        <br />
                   </div>
                   <div class="col-4">
                      
        </div>                                
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
   </div>    
               </div>
               </div>
          </div>
      </form>
</asp:Content>

