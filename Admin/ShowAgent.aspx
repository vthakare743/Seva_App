<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowAgent.aspx.cs" Inherits="Admin_ShowAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
<div class="panel panel-blue" style="background:#fff;">
                                            <div class="panel-body pan">
                                                <form id="Form1" runat="server" class="form-horizontal">
                                                
                                                <div class="panel panel-blue" style="background:#FFF;">
                            <div class="panel-heading" ></div>
                                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="AddAgent.aspx"  class="btn btn-primary" style="left: inherit; top: inherit;"> <span class="fas fa-plus-circle"></span>Add Agent</a>
 <%-- <a href="#"  Type="button" class="btn btn-warning" style="left: inherit; top: inherit;"> <span class="bi bi-printer"></span>Print</a>--%>
                                                    &nbsp;
                                                    <asp:Button ID="btnp" class="btn btn-warning" runat="server" Text="Print" OnClientClick="javascript:window.print();" />
                                
            <%-- <asp:HyperLink ID="add"  Text="Add Agent" class="fas fa-plus-circle" runat="server" 
                 NavigateUrl='<%#"~/Admin/AddAgent.aspx?aid=" + Server.UrlEncode(Eval("aid").ToString())%>' />--%>
                                                   
                
                     

                            <div class="panel-body">
                                <br />
                                <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Width="100%" Height="550">
                               
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="3" DataSourceID="SqlDataGetService" GridLines="Horizontal" CssClass="table" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                    <Columns>
                                      

                                        <asp:BoundField DataField="aid" HeaderText="ID" SortExpression="aid" />
                                        <asp:BoundField DataField="first_name" HeaderText="First Name" 
                                            SortExpression="first_name" />
                                        <asp:BoundField DataField="middle_name" HeaderText="Middle Name" 
                                            SortExpression="middle_name" />
                                       <%-- <asp:BoundField DataField="id_proof" HeaderText="id_proof" 
                                            SortExpression="id_proof" />
                                        <asp:BoundField DataField="id_proof_photo" HeaderText="id_proof_photo" 
                                            SortExpression="id_proof_photo" />
                                        <asp:BoundField DataField="address_proof" HeaderText="address_proof" 
                                            SortExpression="address_proof" />
                                        <asp:BoundField DataField="address_proof_photo" HeaderText="address_proof_photo" SortExpression="address_proof_photo" />
                                        <asp:BoundField DataField="pan_card" HeaderText="pan_card" SortExpression="pan_card" />
                                        <asp:BoundField DataField="pan_card_photo" HeaderText="pan_card_photo" SortExpression="pan_card_photo" />
                                        <asp:BoundField DataField="bank_id_photo" HeaderText="bank_id_photo" SortExpression="bank_id_photo" />
                                        <asp:BoundField DataField="purchase_bill_photo" HeaderText="purchase_bill_photo" SortExpression="purchase_bill_photo" />
                                        <asp:BoundField DataField="sales_bill_photo" HeaderText="sales_bill_photo" SortExpression="sales_bill_photo" />
                                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                                        <asp:BoundField DataField="payment_mode" HeaderText="payment_mode" SortExpression="payment_mode" />
                                        <asp:BoundField DataField="others" HeaderText="others" SortExpression="others" />
                                        <asp:BoundField DataField="service_note" HeaderText="service_note" SortExpression="service_note" />--%>
                                        <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                                        <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" SortExpression="mobile_no" />
                                      <%--   <asp:TemplateField HeaderText="VIEW">--%>

      <%--  <ItemTemplate>
            <asp:HyperLink ID="view" runat="server" Text="View"  Class="btn btn-info" ForeColor="White" NavigateUrl='<%#"~/User/ViewDocument.aspx?id="+Server.UrlEncode(Eval("id").ToString())%>'/>
                                
              </ItemTemplate>
             </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">

        <ItemTemplate>
            <asp:HyperLink ID="Edit" class="btn btn-success" runat="server" BackColor="#6666ff" ForeColor="White" Width="50px" Text="Edit"  NavigateUrl='<%#"~/User/EditCustomer.aspx?id="+Server.UrlEncode(Eval("id").ToString())%>' /> 
            
                   </ItemTemplate>
             </asp:TemplateField>--%>
                                        
                                        <asp:BoundField DataField="email_id" HeaderText="Email Id" SortExpression="email_id" />
                                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date"/>
                                         <asp:TemplateField HeaderText="Select">

        <ItemTemplate>
             <asp:HyperLink ID="View1" Text="Select" Class="btn btn-info" runat="server"
                 NavigateUrl='<%#"~/Admin/EditAgent.aspx?aid=" + Server.UrlEncode(Eval("aid").ToString())%>' />

                     
           
              </ItemTemplate>
             </asp:TemplateField>
                                          <%--<asp:TemplateField HeaderText="Add Agent">

        <ItemTemplate>
             <asp:HyperLink ID="add"  Text="Add Agent" class="fas fa-plus-circle" runat="server" 
                 NavigateUrl='<%#"~/Admin/AddAgent.aspx?aid=" + Server.UrlEncode(Eval("aid").ToString())%>' />
           

                     
           
              </ItemTemplate>
             </asp:TemplateField>--%>
               </Columns>
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                </asp:GridView>
                                    </asp:Panel>
                                <asp:SqlDataSource ID="SqlDataGetService" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" 
                                    SelectCommand="SELECT [aid], [first_name], [middle_name], [last_name], [mobile_no], [email_id], [date] FROM [AgentRegistration]">
                                </asp:SqlDataSource>
                                     </div>
                                   </div>
                                 </div>
                                      </form>
                                     </div>
                                    </div>
</asp:Content>

