<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ApplicationList.aspx.cs" Inherits="Admin_Apploication_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
<div class="panel panel-blue" style="background:#fff;">
                                            <div class="panel-body pan">
                                                <form id="Form1" runat="server" class="form-horizontal">
                                                
                                                <div class="panel panel-blue" style="background:#FFF;">
                            <div class="panel-heading" style="color: #000080">View Application List</div>
                            <div class="panel-body">
                                <br />
                                <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Width="100%" Height="550">
                               
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="SqlDataGetService" 
                                    ForeColor="Black" GridLines="Horizontal" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                      

                                        <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                                        <asp:BoundField DataField="customer_name" HeaderText="Customer Name" 
                                            SortExpression="customer_name" />
                                        <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" 
                                            SortExpression="mobile_no" />
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
                                        <asp:BoundField DataField="email_id" HeaderText="Email ID" SortExpression="email_id" />
                                        <asp:BoundField DataField="services" HeaderText="Services" SortExpression="services" />
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
                                        
                                        <asp:BoundField DataField="payment_mode" HeaderText="Payment Mode" SortExpression="payment_mode" />
                                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date"/>
                                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                                        
                                        <asp:TemplateField HeaderText="Coustomer Photo">
                                          <ItemTemplate>
        <img src='../User/Document/user_photo/<%#Eval("photo")%>' height="80px" width="85px" />
                                 </ItemTemplate>
                                             
            </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Select">
                                          <ItemTemplate>
             <asp:HyperLink ID="View1" Text="Select" Class="btn btn-info" runat="server"
                 NavigateUrl='<%#"~/Admin/ApplicationStatus.aspx?id=" + Server.UrlEncode(Eval("id").ToString())%>' />

                     
           
              </ItemTemplate>
             </asp:TemplateField>
                                      
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                                    </asp:Panel>
                                <asp:SqlDataSource ID="SqlDataGetService" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" 
                                    SelectCommand="SELECT [id], [customer_name], [mobile_no], [email_id], [services], [payment_mode], [date], [status], [photo] FROM [Service_RequestData]">
                                </asp:SqlDataSource>
                                     </div>
                                   </div>
                                 </div>
                                      </form>
                                     </div>
                                    </div>
</asp:Content>

