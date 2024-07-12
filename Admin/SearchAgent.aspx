<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SearchAgent.aspx.cs" Inherits="Admin_SearchAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" class="form-vertical">
                                 
                       <div class="panel panel-blue" style="background:#FFF;">
                          
  
 
          
    <div class="panel panel-danger">
                        <div class="panel-heading" style="color: #800000"><i class="fa fa-search iconsearch"></i>
                          Search Agent List
                        </div>
                       
                                <div class="card-body">

                   <div class="row">

                                   <div class=" col-md-3">
                                    <div class="form-group">
                                         <div class="row-gx-5"> 
                               <asp:Label ID="Label4" runat="server" Text="Search By" Font-Size="Medium" ForeColor="Black"></asp:Label> 

                                    <asp:DropDownList ID="ddlSelect" runat="server" class="form-control" >
                                                 <asp:ListItem >Select</asp:ListItem>
                                                 <asp:ListItem >Agent Name</asp:ListItem>
                                                 <asp:ListItem >Mobile No</asp:ListItem>
                                       
                                   
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
                                       <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-warning mb-2" OnClick="btnSearch_Click"    />
                                      <%--  <%#DataBinder.Eval(Container,"DataItem.date") %>--%>
                                      </div>
                                   </div>            
                        </div>
            </div>
            
         </div>
                     
                      <div class="col-md-0 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading" style="color: #800000">
                       View Agent List
                       </div>
            <div class="panel-body">
                
<asp:Panel ID="Panel1" runat="server" Width="90%" Height="300px" ScrollBars="Auto">   

                       <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="982px" DataKeyNames="aid" CellSpacing="6">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="aid" HeaderText="A_id" SortExpression="aid" ReadOnly="True" />
                                <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                                <asp:BoundField DataField="middle_name" HeaderText="Middle Name" SortExpression="middle_name" />
                                <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                                <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" SortExpression="mobile_no" />
                                <asp:BoundField DataField="email_id" HeaderText="Email-ID" SortExpression="email_id" />
                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" SelectCommand="SELECT [aid], [first_name], [middle_name], [last_name], [mobile_no], [email_id], [date] FROM [AgentRegistration]"></asp:SqlDataSource>--%>

    <div style="color: #000000">  
        <asp:Repeater ID="RepeatInformation" runat="server" DataSourceID="SqlDataSource1" >  
            <HeaderTemplate> 
                 <table class="table table-hover table table-striped">
               <tr class="table-danger">
            
                        <b>  
                       <td>A_id</td>  
                       <td> First Name</td>     
                       <td> Middle Name</td>
                       <td> Last Name </td> 
                       <td> Mobile No</td>
                       <td> Email ID </td>  
                       <td> Date</td>  
                           </b>  
                    </tr>      
                     
            </HeaderTemplate>  
            <ItemTemplate>  
                 <tr class="table-bordered">
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.aid")%>  
                    </td>
                    
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.first_name")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.middle_name")%>  
                    </td>  
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.last_name")%>  
                    </td> 
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.mobile_no")%>  
                    </td> 
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.email_id")%>  
                    </td> 
                      <td>  
                        <%#DataBinder.Eval(Container,"DataItem.date")%>  
                    </td> 
                     
                </tr>  
            </ItemTemplate>  
            
            <FooterTemplate>  
           </table>
            </FooterTemplate>  
        </asp:Repeater>  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" SelectCommand="SELECT [aid], [first_name], [middle_name], [last_name], [mobile_no], [email_id], [date] FROM [AgentRegistration]"></asp:SqlDataSource>
    </div>  
            </asp:Panel>
                </div>
            </div>
        </div>
    </div>
           </form>
</asp:Content>

