<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="EditCustomer.aspx.cs" Inherits="User_EditCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
      <div class="col-md-10">
       <div class="card" >
           <br>
          
           
                <center></center>
               
                 
               
             <div class="card-header">

             
              <center>
                      
                  <h3 style="color: #FFFFFF; background-color: #FF9933;">Edit Profile</h3></center>
           </div>

           <div class="card-body">
             

                 <div class="row">
     <div class="col-md-3"></div>
    <div class="col-md-10">
                
        
                <div class="form-group">
                                            <label class="control-label" for="inputCustomerName">Customer:</label>
                                            <asp:TextBox ID="txtcustomer" runat="server" class="form-control" 
                                                placeholder=" Customer Name:"></asp:TextBox>
                                            
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txtcustomer" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationExpression="[a-zA-Z ]*$">Enter Customer Name</asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                        ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtcustomer" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter Customer Name</asp:RequiredFieldValidator>
                                                &nbsp;
                                        </div>
       </div>
                      <div class="col-md-10">
                
        
                <div class="form-group">
                                            <label class="control-label" for="inputCustomerName">Mobile Number:</label>
                                            <asp:TextBox ID="txtno" runat="server" class="form-control" 
                                                placeholder=" Mobile:"></asp:TextBox>
                                            
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txtcustomer" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationExpression="[a-zA-Z ]*$">Enter Mobile Number</asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                        ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtcustomer" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter Mobile Number</asp:RequiredFieldValidator>
                                                &nbsp;
                                        </div>
       </div>
                      <div class="col-md-10">
                
        
                <div class="form-group">
                                            <label class="control-label" for="inputCustomerName">Email ID:</label>
                                            <asp:TextBox ID="txtmail" runat="server" class="form-control" 
                                                placeholder=" Email:"></asp:TextBox>
                                            
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txtcustomer" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationExpression="[a-zA-Z ]*$">Enter Email ID</asp:RegularExpressionValidator><asp:RequiredFieldValidator
                                                        ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtcustomer" 
                                                    Display="Dynamic" ForeColor="Red" SetFocusOnError="True">Enter Email ID</asp:RequiredFieldValidator>
                                                &nbsp;
                                        </div>
       </div>
      
                     <div class="col-md-9"></div>
                     
                <div class="row"> </div>
                    <div class="col-9"></div>
                   <div class="col-9">
               <asp:Button ID="btnUpdate" runat="server" Text="Update" width="100px" Class="btn btn-info" OnClick="btnUpdate_Click" />
                                        <br />
                   </div>
                   <div class="col-4">
                      
        </div>                                
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
   </div>    
               </div>
               </div>
          </div>
      

        
      <div class="col-md-10">
       <div class="card" >
           <br>
          
           
                <center></center>
               
                 
               
             <div class="card-header">

             
              <center>
                      
                  <h3 style="color: #FFFFFF; background-color: #FF9933;">Documents</h3></center>
           </div>

           <div class="card-body">
             
               <div>
                 <div class="row">
    
    <div class="col-md-10"> </div>
            

     <div class="form-group mt-md col-md-9">
       <label class="col-md-9 control-label">Aadhar Card <span class="required" aria-required="true" style="color: #FF0000">*</span></label> 
         <asp:Image ID="imgadhar" runat="server" Height="150px" Width="160px" />                   
                             
                             <div class="col-md-9">
                              <asp:FileUpload ID="FUadhar" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>
                            <span class="error"></span>
                                 </div>
                      </div>
                     
       
                  
                         <div class="form-group mt-md col-md-9">
                        <label class="col-md-9 control-label">Votar ID Card <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                              <asp:Image ID="imgvotar" runat="server" Height="150px" Width="160px" />
                            
                             <div class="col-md-9">
                              <asp:FileUpload ID="FUvotar" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                      </div>
                  </div>
                     
                    <div class="form-group mt-md col-md-9">
                        <label class="col-md-9 control-label">Pan Card <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                          <asp:Image ID="imgpan" runat="server" Height="150px" Width="160px" />
                        <div class="col-md-9">
                            <asp:FileUpload ID="FUpan" class="form-control" runat="server" />
                            <span class="error"></span>
                        </div>
                    </div>
                    <div class="form-group mt-md col-md-9">
                        <label class="col-md-9 control-label">Banking <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                          <asp:Image ID="imgbank" runat="server" Height="150px" Width="160px" />
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUbank" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                        </div>
                    <div class="form-group mt-md col-md-9">
                        <label class="col-md-9 control-label">Ration Card <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                          <asp:Image ID="imgration" runat="server" Height="150px" Width="160px" />
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUration" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                      </div>
                    </div>

                    <div class="form-group mt-md col-md-9">
                        <label class="col-md-9 control-label">Passport <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                          <asp:Image ID="imgpassort" runat="server" Height="150px" Width="160px" />
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUpassport" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                    </div>
                     <div class="form-group mt-md col-md-9">
                        <label class="col-md-9 control-label">Driving License <span class="required" aria-required="true"style="color: #FF0000">*</span></label>
                           <asp:Image ID="imglicense" runat="server" Height="150px" Width="160px" />
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUlicense" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                    </div>
                     <div class="form-group mt-md col-md-9">
                        <label class="col-md-9 control-label">TC/Leaving Certificate <span class="required" aria-required="true"style="color: #FF0000">*</span></label>
                           <asp:Image ID="imgtc" runat="server" Height="150px" Width="160px" />
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUtc" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                    </div>

                    <div class="form-group mt-md col-md-9">
                        <label class="col-md-9 control-label">Photo <span class="required" aria-required="true"style="color: #FF0000">*</span></label>
                          <asp:Image ID="imgphoto" runat="server" Height="150px" Width="160px" />
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUphoto" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
</div>
                    
                <div>
                    <span id="ContentPlaceHolder1_lblsusess" style="color:Red;font-size:Larger;"></span>
                
         </div>
                           </div>
                      
                        
      
                     <div class="col-md-9"></div>
                     
                <div class="row"> </div>
                    <div class="col-9"></div>
                   <div class="col-9">
               <asp:Button ID="btnupload" runat="server" Text="Upload" width="100px" Class="btn btn-info" OnClick="btnupload_Click" />
                                        <br />
                   </div>
                   <div class="col-4">
              </div>
                 <asp:HiddenField ID="hfuadhar" runat="server" />
                    <asp:HiddenField ID="hfuvotar" runat="server" />
                    <asp:HiddenField ID="hfupan" runat="server" />
                    <asp:HiddenField ID="hfubank" runat="server" />
                    <asp:HiddenField ID="hfuration" runat="server" />
                    <asp:HiddenField ID="hfupass" runat="server" />
                    <asp:HiddenField ID="hfulicense" runat="server" />
                    <asp:HiddenField ID="hfutc" runat="server" />
                    <asp:HiddenField ID="hfuphot" runat="server" />        
        </div>                                
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
   </div>    
    </div>             
              
      </form>
</asp:Content>

