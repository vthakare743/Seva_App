<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AgentRegistratuon.aspx.cs" Inherits="AgentRegistratuon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
      <div class="col-md-9">
       <div class="card" id="admin-login-card">
           <br>
          
           
                <center></center>
               
                 
               
             <div class="card-header">

             
              <center>
                      
                  <h3 style="color: #FFFFFF; background-color: #0000FF;">Agent Registration Form</h3></center>
           </div>

           <div class="card-body">
             

                 <div class="row">
     <div class="col-md-3"></div>
    <div class="col-md-7">
                  <%--<div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Registration No.</label>
                   <input name="ctl00$ContentPlaceHolder1$txtRegistrationNo" type="text" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$txtRegistrationNo\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtRegistrationNo" tabindex="1" class="form-control" autocomplete="off" placeholder="Enter Registration Number">
                      <span id="ContentPlaceHolder1_RequiredFieldValidator5" style="color:Red;display:none;">Enter Registration Number</span>

           


                  </div>
                  <div class="form-group">
                <label for="cc-payment" class="control-label mb-1"> Select Course.</label>
                   <select name="ctl00$ContentPlaceHolder1$ddlCourse" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$ddlCourse\',\'\')', 0)" id="ContentPlaceHolder1_ddlCourse" tabindex="2" class="form-control">
		<option selected="selected" value="B.A. / B.Sc. (Three or Four year Honours Degree Programme)">B.A. / B.Sc. (Three or Four year Honours Degree Programme)</option>
		<option value="M.A. / M.Sc. ( Two Year Degree Programme )">M.A. / M.Sc. ( Two Year Degree Programme )</option>

	</select>
                      
               <span id="ContentPlaceHolder1_RequiredFieldValidator6" style="color:Red;display:none;">Select Course</span>
                  </div>

                 <div class="form-group">
                <label for="cc-payment" class="control-label mb-1"> Select Year</label>  &nbsp; <span id="ContentPlaceHolder1_Label1" style="color:Red;">F.Y. (First Year)  S.Y. (Second Year)</span>
                   <select name="ctl00$ContentPlaceHolder1$ddlYear" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$ddlYear\',\'\')', 0)" id="ContentPlaceHolder1_ddlYear" tabindex="3" class="form-control">
		<option selected="selected" value="F.Y.">F.Y.</option>

	</select>
                     
               <span id="ContentPlaceHolder1_RequiredFieldValidator4" style="color:Red;display:none;">Select Year</span>
                  </div>--%>

                 <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Enter First Name</label>
<%--                 <input name="ctl00$ContentPlaceHolder1$txtfirstName" type="text" id="ContentPlaceHolder1_txtfirstName" tabindex="4" class="form-control" placeholder="First Name" style="text-transform: uppercase;">--%>
                     </br>
                     <asp:TextBox ID="txtfirstname" runat="server" tabindex="4" class="form-control" placeholder="First Name" style="text-transform: uppercase;"></asp:TextBox>
                 <span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;display:none;">Enter First Name</span>

                     <span id="ContentPlaceHolder1_RegularExpressionValidator3" style="color:Red;display:none;">First Name must be alphabets</span>
                 </div>

                  <div class="form-group">
                <label for="cc-payment" class="control-label mb-1"> Enter Middle Name</label>
     <%--            <input name="ctl00$ContentPlaceHolder1$txtSecondName" type="text" id="ContentPlaceHolder1_txtSecondName" tabindex="5" class="form-control" placeholder="Middle Name" style="text-transform: uppercase;">--%>
                       <asp:TextBox ID="txtmname" runat="server" tabindex="4" class="form-control" placeholder=" Middle Name" style="text-transform: uppercase;"></asp:TextBox>
                <span id="ContentPlaceHolder1_RequiredFieldValidator2" style="color:Red;display:none;">Enter Middle Name</span>

                      <span id="ContentPlaceHolder1_RegularExpressionValidator1" style="color:Red;display:none;">Middle Name must be alphabets</span>
                       </div>

                  <div class="form-group">
                <label for="cc-payment" class="control-label mb-1"> Enter Last  Name</label>
                <%-- <input name="ctl00$ContentPlaceHolder1$txtLastName" type="text" id="ContentPlaceHolder1_txtLastName" tabindex="6" class="form-control" placeholder="Last  Name" style="text-transform: uppercase;">--%>
                      </br>
                      <asp:TextBox ID="txtlastname" runat="server" tabindex="6" class="form-control" placeholder="Last Name" style="text-transform: uppercase;"></asp:TextBox>
                 <span id="ContentPlaceHolder1_RequiredFieldValidator3" style="color:Red;display:none;">Enter Last Name</span>

                       <span id="ContentPlaceHolder1_RegularExpressionValidator2" style="color:Red;display:none;">Last Name must be alphabets</span>
                       </div>

                  
                 
                 <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Mobile No</label>
                 <%--input name="ctl00$ContentPlaceHolder1$txtMobileNO" type="text" maxlength="10" id="ContentPlaceHolder1_txtMobileNO" tabindex="6" class="form-control" placeholder="Enter Your Mobile No">--%>
                     </br>
                     <asp:TextBox ID="txtno" runat="server" maxlength="10" tabindex="6" class="form-control" placeholder="Enter Your Mobile No"></asp:TextBox>
                 <span id="ContentPlaceHolder1_RequiredFieldValidator7" style="color:Red;display:none;">Enter Mobile Number</span>

                      <span id="ContentPlaceHolder1_RegularExpressionValidator6" style="color:Red;display:none;">Mobile no. must be in proper format</span>
                 </div>

                 <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Email ID.</label>
   <%--              <input name="ctl00$ContentPlaceHolder1$txtEmail" type="text" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$txtEmail\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtEmail" tabindex="7" class="form-control" placeholder="Enter Your Email" autocomplete="off">--%>
                     </br>
                     <asp:TextBox ID="txtemail" runat="server" tabindex="7" class="form-control" placeholder="Enter Your Email" autocomplete="off"></asp:TextBox>
                <span id="ContentPlaceHolder1_RequiredFieldValidator8" style="color:Red;display:none;">Enter Email</span>

                      <span id="ContentPlaceHolder1_RegularExpressionValidator5" style="color:Red;display:none;">Email must be in proper format</span>   
                      </div>

            <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Date.</label>
              
                     <asp:TextBox ID="txtdate" runat="server" tabindex="7" class="form-control" placeholder=" Date:" TextMode="Date" autocomplete="off"></asp:TextBox>
                <span id="Span3" style="color:Red;display:none;">Enter Email</span>

                      <span id="Span4" style="color:Red;display:none;">date must be in proper format</span>   
                      </div>
        
        
                 
                 
                 <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">User Name</label>
                 <%--<input name="ctl00$ContentPlaceHolder1$txtuser" type="password" id="ContentPlaceHolder1_txtPwd" tabindex="8" class="form-control" placeholder="Enter UserID" autocomplete="off">--%>
                     </br>
                      <asp:TextBox ID="txtagent" runat="server" tabindex="8" class="form-control" placeholder="Enter UserID" autocomplete="off"></asp:TextBox>
                 <span id="ContentPlaceHolder1_RequiredFieldValidator9" style="color:Red;display:none;">Enter User Name</span>

                      <span id="ContentPlaceHolder1_RegularExpressionValidator4" style="color:#FF3300;display:none;">User name must be in proper format</span>
                 </div>
                 
                 <div class="form-group">
                <label for="cc-payment" class="control-label mb-1"> Password</label>
<%--                 <input name="ctl00$ContentPlaceHolder1$txtPwd" type="password" id="ContentPlaceHolder1_txtConfirm" tabindex="9" class="form-control" placeholder="Enter Password">--%>
                     </br>
                       <asp:TextBox ID="txtpwd" runat="server"  tabindex="9" class="form-control" placeholder="Enter Password"></asp:TextBox>
                   <span id="Span2" style="color:Red;display:none;">Enter Password</span>
                       <span id="Span1" style="color:#FF3300;display:none;">Must contain at least 1 lower case letter, 1 upper case letter,1 digit and 1 special character</span>
                 </div>
                 

                <div>
                    <span id="ContentPlaceHolder1_lblsusess" style="color:Red;font-size:Larger;"></span>
                </div>

               <div>
                    <label class="check-box">					                      
                      <input id="ContentPlaceHolder1_chkCondition" type="checkbox" name="ctl00$ContentPlaceHolder1$chkCondition" tabindex="10">&nbsp;I Accept term &amp; condition <a href="termsAndCondition.aspx"> Click Here</a> 
                    </label>
                </div>

        </div>
                     <div class="col-md-2"></div>
                     </div>
                <div class="row">
                    <div class="col-4"></div>
                   <div class="col-4">
                     <asp:Button runat="server"  id="btnsubmit" style="font-weight:bold;" Text="Submit" class="btn btn-lg btn-primary btn-block" OnClick="btnsubmit_Click" ForeColor="White"/>
                   </div>
                   <div class="col-4"></div>
                   <%-- <span id="btnsubmit" style="color:#CC0066;font-weight:bold;"></span>--%>
                                        
                    &nbsp;
                                        
               </div>    
       
                     </div>

             
           </div>
       </div>
      </form>
     
</asp:Content>

