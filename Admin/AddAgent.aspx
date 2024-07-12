<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddAgent.aspx.cs" Inherits="Admin_AddAgent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="Form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
   
        <style type="text/css">
 
  .modalPopup
  {
            background-color: #FFFFFF;
            width: 600px;
            border: 3px solid #0DA9D0;
            height: 450px;
           
               
 }

 .modalPopup.header
  {
            background-color: #2FBDF1;
            height: 30px;
            color: white;
            line-height: 30px;
            text-align: center;
            font-weight: bold;
        
 }

        .modalPopup .footer {
            padding: 3px;

 }
        .modalPopup button {
            height: 23px;
            color: white;
            line-height: 23px;
            text-align: center;
            font-weight: bold;
            cursor: pointer;
            background-color: red;
            border: 1px solid #5C5C5C;
  }
    </style>
      <div class="col-md-9">
       <div class="card" >
           <br>
          
                
             <div class="card-header">

             
              <center>
                      
                  <h3 style="color: #FFFFFF; background-color: #0000FF;">Add Agent</h3></center>
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
         <div class="form-group">
                                        <label class="control-label" for="inputEmailId">Date Id:</label>    
                                     <asp:TextBox ID="txtdate" runat="server" class="form-control"  TextMode="Date"
                                         placeholder=" date:"></asp:TextBox>
                                    
                                         <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                             ErrorMessage="RegularExpressionValidator" ControlToValidate="txtemail" 
                                             ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*" 
                                             Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter proper email id</asp:RegularExpressionValidator>--%><asp:RequiredFieldValidator
                                                 ID="RequiredFieldValidator4" runat="server" 
                                             ErrorMessage="RequiredFieldValidator" ControlToValidate="txtdate" 
                                             Display="Dynamic" ForeColor="Red">Enter Date</asp:RequiredFieldValidator>&nbsp; 
                                        </div>
         <div class="form-group">
                                        <label class="control-label" for="inputEmailId">Agent Name:</label>    
                                     <asp:TextBox ID="txtagent" runat="server" class="form-control"  
                                         placeholder=" Agent Name:"></asp:TextBox>
                                    
                                         <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                             ErrorMessage="RegularExpressionValidator" ControlToValidate="txtemail" 
                                             ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*" 
                                             Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter proper email id</asp:RegularExpressionValidator>--%><asp:RequiredFieldValidator
                                                 ID="RequiredFieldValidator7" runat="server" 
                                             ErrorMessage="RequiredFieldValidator" ControlToValidate="txtagent" 
                                             Display="Dynamic" ForeColor="Red">Enter Agent Name</asp:RequiredFieldValidator>&nbsp; 
                                        </div>
         <div class="form-group">
                                        <label class="control-label" for="inputEmailId">Password:</label>    
                                     <asp:TextBox ID="txtpwd" runat="server" class="form-control"  
                                         placeholder=" password:"></asp:TextBox>
                                    
                                         <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                             ErrorMessage="RegularExpressionValidator" ControlToValidate="txtemail" 
                                             ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*" 
                                             Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter proper email id</asp:RegularExpressionValidator>--%><asp:RequiredFieldValidator
                                                 ID="RequiredFieldValidator8" runat="server" 
                                             ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpwd" 
                                             Display="Dynamic" ForeColor="Red">Enter Password</asp:RequiredFieldValidator>&nbsp; 
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
               <asp:Button ID="btnadd" runat="server" Text="Add" width="100px" Class="btn btn-info" OnClick="btnadd_Click" />
                                        <br />
                   </div>
                   <div class="col-4">
                      
        </div>            
                                        
                       <asp:Label ID="lblpopup" runat="server"></asp:Label>
                   
                    
                        <asp:ModalPopupExtender ID="mpe" PopupControlID="Panel1" TargetControlID="lblpopup" PopupDragHandleControlID="headerdiv" CancelControlID="btnclose" runat="server"></asp:ModalPopupExtender>
         
        <asp:Panel ID="Panel1" Cssclass="modalPopup" aline="center" runat="server">
            <div id ="headerdiv" class="header">
            
            <div id ="divdetails" style="color: #000080; font-size: large; font-weight: bold">&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Congratulations&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Image ID="Image11" runat="server" ImageUrl="~/User/Photos/right.png" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Data has been saved successfully </div>
            <div id="footerdiv" class="footer">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclose" runat="server" aline="center" BackColor="#CC0000" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" ForeColor="White" Height="33px" Text="Close" Width="69px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </div>
          
         </asp:Panel>
                         
   </div>    
               </div>
               </div>
          </div>
      </form>
</asp:Content>

