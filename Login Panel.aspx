<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login Panel.aspx.cs" Inherits="Login_Pannel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
<div class="page-content">
                    <div id="tab-general">
                        <div class="row mbl">
                            <div class="col-lg-12" style="width: 55%; ">
                            
                           
                            <div class="panel panel-orange">
                                            <div class="panel-heading">
                                                 Login Panel</div>
                                            <div class="panel-body pan">
                                                <form action="#">
                                                <div class="form-body pal">
                                                   
                                                    <div class="form-group">
                                                        <div class="input-icon right">
                                                            <i class="fa fa-envelope"></i>
                                                            <%--<input id="inputEmail" type="text" placeholder="Email address" class="form-control" />--%>
                                                            <asp:TextBox ID="txtusername" runat="server" placeholder="UserName" class="form-control" ></asp:TextBox>

                                                            </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="input-icon right">
                                                            <i class="fa fa-lock"></i>
                                                           <%-- <input id="inputPassword" type="password" placeholder="Password" class="form-control" />--%>
                                                          <asp:TextBox ID="txtpwd" runat="server" placeholder="Password" class="form-control" TextMode="Password" ></asp:TextBox>
                                                            </div>

                                                            <div align="right">
                                                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3366CC" 
                                                            NavigateUrl="~/ForgotPwdEmail.aspx" Font-Bold="True">Forgot Password</asp:HyperLink>
                                                            </div>
                                                    </div>
                                                   
                                                    <br />
                                                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                        ForeColor="#0000CC"></asp:Label>
                                               </div>
                                                <div class="form-actions text-right pal">
                                                    <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-primary"/> 
                                                       
                                                </div>
                                                </form>
                                            </div>
                                        </div>

                            
                           
                            </div>
                            </div>
                            </div>
</form>
</asp:Content>

