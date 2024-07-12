<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                         <form id="Form1" runat="server">          
                         <div class="row">
                            <div class="col-lg-5">
                                <div class="card">
                                    <div class="card-header"> <i class="fas fa-sign-in-alt"></i> &nbsp
                                        <asp:Label ID="Label6" runat="server" Text="Login Section" Font-Bold="True" Font-Size="Large" ForeColor="#2a1578"></asp:Label></div>
                                    <div class="card-body">
                                        <br/>
                                   
                                       <div class="card" id="admin-login-card">
            <div class="card-header">
            <i class="fa fa-users" style="color: #000000; text-decoration: blink; font-weight: bold"></i>&nbsp;&nbsp;<span id="ContentPlaceHolder1_Label2" style="color:Black;font-size:Larger;font-weight:bold;"> LOGIN </span>
           </div>
          
           <%--<span id="ContentPlaceHolder1_Label1" style="color:Red;font-weight:bold;">--%><%--This login is only for Institute authorities</span>
           --%>
           <div class="card-body">
             
                  
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">User Type:</label>
                  <asp:DropDownList ID="ddltype" runat="server" class="form-control">
                      <asp:ListItem>Select Type</asp:ListItem>
                      <asp:ListItem>User</asp:ListItem>
                      <asp:ListItem>Agent</asp:ListItem>
                      <asp:ListItem>Admin</asp:ListItem>

                  </asp:DropDownList>  
               <%--<select name="ctl00$ContentPlaceHolder1$ddlType" id="ContentPlaceHolder1_ddlType" class="form-control">
	<option value="Select Type">Select Type</option>
	<option value="User">User</option>
	<option value="Agent">Agent</option>
	<option value="Admin">Admin</option>

</select>--%>
                    


                   
                </div>
                  
                  <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Username:</label>
 <%--               <input name="ctl00$ContentPlaceHolder1$txtUserName" type="text" id="ContentPlaceHolder1_txtUserName" class="form-control">--%>
                      <asp:TextBox ID="txtuser" runat="server"  class="form-control" placeholder="Your Username"></asp:TextBox>
                </div>
                <div class="form-group">
                <label for="cc-payment" class="control-label mb-1">Password :</label>
<%--                <input name="ctl00$ContentPlaceHolder1$txtPassword" type="password" id="ContentPlaceHolder1_txtPassword" class="form-control">--%>
                    <asp:TextBox ID="txtpwd" runat="server"  class="form-control" placeholder="your Password:" TextMode="Password"></asp:TextBox>
                </div>
                <div class="row">
                   <div class="col-12">
                    <%--<input type="submit" name="ctl00$ContentPlaceHolder1$btnLogin" value="Login" id="ContentPlaceHolder1_btnLogin" class="btn btn-lg btn-primary btn-block">--%>
                       <asp:Button runat="server"  id="btnlogin"  class="btn btn-lg btn-primary btn-block" Text="Login" OnClick="btnlogin_Click" />
                   </div>                     
               </div>    
           </div>
       </div>
                                </div>
                            </div>
                            </div>

                 <%--  first form end--%>

                             <div class="col-lg-7">
                                <div class="card">
                                    <div class="card-header"> 
                                        <i class="fas fa-address-card""></i>&nbsp <asp:Label ID="Label5" runat="server"  Text="Services Available" Font-Bold="True" ForeColor="#2a1578" Font-Size="Large"></asp:Label>
                                    </div>
                                    <div class="card-body"> 
                                <div class="form-group">
                                
                           <asp:Image ID="Image5" runat="server" ImageUrl="~/images/pancard1.jpg" Width="45px" Height="25px" />    <asp:Label ID="lblpan" runat="server"  Text ="PAN Card" Font-Size="Larger" ForeColor="black" Font-Bold="True" Font-Names="Calisto MT"></asp:Label> 
                                    <br /> 
                           <asp:Image ID="Image1" runat="server" ImageUrl="~/images/adharcard.png" Width="45px" Height="30px" />   <asp:Label ID="lbladhar" runat="server" Text="ADHAR Card" Font-Size="Larger" ForeColor="black" Font-Bold="True" Font-Names="Calisto MT"></asp:Label>
                                    <br /> 
                           <asp:Image ID="Image2" runat="server" ImageUrl="~/images/ATM.png" Width="55px" Height="30px" />         <asp:Label ID="lblatm" runat="server" Text="ATM Card" Font-Size="Larger" ForeColor="black" Font-Bold="True" Font-Names="Calisto MT"></asp:Label> 
                                    <br />
                           <asp:Image ID="Image3" runat="server" ImageUrl="~/images/ca.jpg" Width="55px" Height="30px" />          <asp:Label ID="lblca" runat="server" Text="CA Certification" Font-Size="Larger" ForeColor="black" Font-Bold="True" Font-Names="Calisto MT"></asp:Label> 
                                    <br />
                           <asp:Image ID="Image4" runat="server" ImageUrl="~/images/pf.png" Width="65px" Height="30px" />          <asp:Label ID="lblpf" runat="server" Text="PF & EF Registration" Font-Size="Larger" ForeColor="black" Font-Bold="True" Font-Names="Calisto MT"></asp:Label> 
                             <p>
                <hr color="Orange" />    
                </p>  
                      


                                    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both">

                                    <table style="width:75%; ">
                <asp:Repeater ID="Repeater1" runat="server" >
                    <HeaderTemplate>


                    </HeaderTemplate>
                    <ItemTemplate>

                      <tr>

                        <td class="auto-style6">&nbsp;<br />

                                     <img src="images/icon/newicon.gif" /><asp:HyperLink ID="HyperLink4" runat="server" Text='<%# Eval("message") %>' Font-Size="Large" ForeColor="#FF0066"    Target="_blank" NavigateUrl='<%#  Eval("path") %>' ></asp:HyperLink><br /></td></tr>
                    </ItemTemplate>
                    </asp:Repeater>
                                        </table>

</asp:Panel>
                                    <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VMV_ADMISSIONConnectionString %>" SelectCommand="  SqlDataSource1.SelectCommand = "SELECT * FROM [NoticeData] order by desc " ></asp:SqlDataSource>
           --%>



              
                                

                             </div>


                             </div>
                            </div>

                                   <div class="card">
                                   
                                    <div class="card-body"> 
                            
                             </div>
                            </div>
                           </div>
                            <div class="col-lg-6">
                            </div>
                            <div class="col-lg-6">
                            </div>          
<asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                         </div>
    </form>
                         </span>
</asp:Content>

