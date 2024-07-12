<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SearchApplication.aspx.cs" Inherits="Admin_SearchApllication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <form id="form1" runat="server" class="form-vertical">
                                 
                       <div class="panel panel-blue" style="background:#FFF;">
                          
  
 
          
    <div class="panel panel-danger">
                        <div class="panel-heading" style="color: #FF3300"><i class="fa fa-search iconsearch"></i>
                          Search Application List
                        </div>
                       
                                <div class="card-body">

                   <div class="row">

                                   <div class=" col-md-3">
                                    <div class="form-group">
                                         <div class="row-gx-5"> 
                               <asp:Label ID="Label4" runat="server" Text="Search By" Font-Size="Medium" ForeColor="Black"></asp:Label> 

                                    <asp:DropDownList ID="ddlSelect" runat="server" class="form-control" >
                                                 <asp:ListItem >Select</asp:ListItem>
                                                 <asp:ListItem >customer Name</asp:ListItem>
                                                 <asp:ListItem >Services</asp:ListItem>
                                       
                                   
                                  </asp:DropDownList>
                                        </div>
                                      </div>
                                       </div>
                         <div class=" col-md-3">
                              <div class="form-group row">

                              <%-- <%#DataBinder.Eval(Container,"DataItem.college") %>--%>
                                       <asp:Label ID="Label6" runat="server" Text=" Enter Text" Font-Size="Medium" ForeColor="Black"></asp:Label>
             
                                    <asp:TextBox ID="txtText" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                              </div>
                            
                         
                     
                               <div class="col-md-3">
                                   <div class="form-group row">
                                        <div class="form-check mx-sm-2">

                                     <asp:Label ID="Label7" runat="server" Text="Search By"  Font-Size="Medium" ForeColor="Black"></asp:Label>

                                    
                                       </br>
                                       <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-warning mb-2" OnClick="btnSearch_Click"   />
                                      <%--  <%#DataBinder.Eval(Container,"DataItem.date") %>--%>
                                      </div>
                                   </div>            
                        </div>
            </div>
            
         </div>
                     
                      <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading" style="color: #FF3300">
                       View Application List
                       </div>
            <div class="panel-body">
                
<asp:Panel ID="Panel1" runat="server" Width="90%" Height="300px" ScrollBars="Auto">   

                        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="982px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                <asp:BoundField DataField="customer_name" HeaderText="customer_name" SortExpression="customer_name" />
                                <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                                <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                                <asp:BoundField DataField="services" HeaderText="services" SortExpression="services" />
                                <asp:BoundField DataField="payment_mode" HeaderText="payment_mode" SortExpression="payment_mode" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>--%>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" SelectCommand="SELECT [id], [customer_name], [mobile_no], [email_id], [services], [payment_mode], [date], [status] FROM [Service_RequestData]"></asp:SqlDataSource>--%>
      
    <div style="color: #000000">  
        <asp:Repeater ID="RepeatInformation" runat="server" DataSourceID="SqlDataSource1" >  
            <HeaderTemplate> 
                 <table class="table table-hover table table-striped">
               <tr class="table-danger">
            
                        <b>  
                       <td>ID</td>  
                       <td> Customer Name </td>     
                       <td> Mobile No </td>  
                       <td> Email ID </td>  
                       <td> services </td>  
                       <td> Payment Mode </td>      
                       <td> Date </td>
                       <td> Status</td>
                            
                           </b>  
                    </tr>      
                     
            </HeaderTemplate>  
            <ItemTemplate>  
                 <tr class="table-bordered">
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.id")%>  
                    </td>
                    
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.customer_name")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.mobile_no")%>  
                    </td>  
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.email_id")%>  
                    </td> 
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.services")%>  
                    </td> 
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.payment_mode")%>  
                    </td> 
                      <td>  
                        <%#DataBinder.Eval(Container,"DataItem.date")%>  
                    </td> 
                      <td>  
                        <%#DataBinder.Eval(Container,"DataItem.status")%>  
                    </td> 
                </tr>  
            </ItemTemplate>  
            <%--<AlternatingItemTemplate>  
                <tr>  
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.id")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.customer_name")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.mobile_no")%>  
                    </td>  
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.email_id")%>  
                    </td> 
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.services")%>  
                    </td> 
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.payment_mode")%>  
                    </td> 
                      <td>  
                        <%#DataBinder.Eval(Container,"DataItem.date")%>  
                    </td> 
                      <td>  
                        <%#DataBinder.Eval(Container,"DataItem.status")%>  
                    </td> 
                </tr>  
            </AlternatingItemTemplate>  --%>
             
            <FooterTemplate>  
           </table>
            </FooterTemplate>  
        </asp:Repeater>  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" SelectCommand="SELECT [id], [customer_name], [mobile_no], [email_id], [services], [payment_mode], [date], [status] FROM [Service_RequestData]"></asp:SqlDataSource>
    </div>  
     
            </asp:Panel>
                </div>
            </div>
        </div>
    </div>
          
    </form>
</asp:Content>

