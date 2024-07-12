<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ViewServiceStatus.aspx.cs" Inherits="User_Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<div class="panel panel-blue" style="background:#fff;">
                                            <div class="panel-body pan">
                                                <form id="Form1" runat="server" class="form-horizontal">
                                                
                                                <div class="panel panel-blue" style="background:#FFF;">
                            <div class="panel-heading" style="color: #000080"> Show Service Status</div>
                            <div class="panel-body">
                                <br />
                                <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Width="100%" Height="550">
                               
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="SqlDataGetService" 
                                    ForeColor="#333333" GridLines="None" CssClass="table">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                      

                                        <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                                        <asp:BoundField DataField="customer_name" HeaderText="CUSTOMER NAME" 
                                            SortExpression="customer_name" />
                                        <asp:BoundField DataField="services" HeaderText="SERVICES" 
                                            SortExpression="services" />
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
                                        <asp:BoundField DataField="date" HeaderText="DATE" SortExpression="date" />
                                        <asp:BoundField DataField="status" HeaderText="STATUS" SortExpression="status" />
                                         <asp:TemplateField HeaderText="VIEW">

        <ItemTemplate>
            <asp:HyperLink ID="view" runat="server" Text="View"  Class="btn btn-info" ForeColor="White" NavigateUrl='<%#"~/User/ViewDocument.aspx?id="+Server.UrlEncode(Eval("id").ToString())%>'/>
                                
              </ItemTemplate>
             </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">

        <ItemTemplate>
            <asp:HyperLink ID="Edit" class="btn btn-success" runat="server" BackColor="#6666ff" ForeColor="White" Width="50px" Text="Edit"  NavigateUrl='<%#"~/User/EditCustomer.aspx?id="+Server.UrlEncode(Eval("id").ToString())%>' /> 
            
                   </ItemTemplate>
             </asp:TemplateField>
                                        
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                                    </asp:Panel>
                                <asp:SqlDataSource ID="SqlDataGetService" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Service_RequestData]">
                                </asp:SqlDataSource>
                                     </div>
                                   </div>
                                 </div>
                                      </form>
                                     </div>
                                    </div>
                            </div>                                                                                      
                                              
</asp:Content>




