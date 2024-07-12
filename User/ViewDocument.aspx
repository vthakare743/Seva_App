<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ViewDocument.aspx.cs" Inherits="User_servicelistDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <form id="form1" runat="server" class="form-vertical">
                                 
                       <div class="panel panel-blue" style="background:#FFF;">
                            <div class="panel-heading" style="color: #000080; font-weight: bold;"> View All Document</div>
  
   <div class="col-lg-2">
            </div>
         <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Width="100%" Height="550">     
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
         <HeaderTemplate>
           <table class="table table-hover table table-striped">
              <%-- <tr class="table-danger">
                   <td >Customer ID </td>
                   <td >Coustomer Name </td>
                   <td >Aadhar Card </td>
                   <td> Votar card</td>
                   <td>Pan Card</td>
                   <td>Bank PassBook</td>
                   <td>Ration card</td>
                   <td>passport_photo</td>
                   <td>Driving License</td>
                   <td>TC/Leaving Certificate</td>
                   <td>photo</td>
                 
              </tr>--%>
             
             </HeaderTemplate>
               <ItemTemplate>
                  
                   <div style="max-height:50px">
                   <tr class="table-bordered">
                       <tr>
                <td style="font-size: medium;  color: #3366FF">Customer ID </td>
                        <td>
                  <%#Eval("id") %>
                </td>
                       </tr>
                     <tr>
                <td style="font-size: medium;  color:  #3366FF">Customer Name</td>
                         <td>
                  <%#Eval("customer_name") %>
               </td>
                          </tr>
                       <tr>
               <td style="font-size: medium;  color: #3366FF">Aadhar Card</td>
                 <td>
                   <img src='Document/adhar_card/<%#Eval("aadhar_card_photo")%>' style="max-height:85px"max-width:"85px">
                    <td><a href='Document/adhar_card/<%#Eval("aadhar_card_photo")%>'  download=""> Download </a></td>
                </td>
                          
                           </tr>
                       <tr>
                   <td style="font-size: medium;  color: #3366FF"> Votar card</td>
                <td>
                     <img src='Document/voter_id_card/<%#Eval("votar_card_photo")%>'  style="max-height:75px"max-width:"75px">
                     <td><a href='Document/voter_id_card/<%#Eval("votar_card_photo")%>'   download=""> Download </a></td>
                </td>
                           </tr>
                      <tr>
                  <td style="font-size: medium;  color: #3366FF">Pan Card</td>
                <td>
                  <img src='Document/pan_card/<%#Eval("pan_card_photo") %>'  style="max-height:75px"max-width:"75px">
                     <td><a href='Document/pan_card/<%#Eval("pan_card_photo") %>'  download=""> Download </a></td>
                </td>
                          </tr>
                      <tr>
                   <td style="font-size: medium;  color: #3366FF">Bank PassBook</td>
                <td>
                    <img src='Document/Bank_id/<%#Eval("bank_id_photo")%>' style="max-height:75px"max-width:"75px">
                     <td><a href='Document/Bank_id/<%#Eval("bank_id_photo")%>'  download=""> Download </a></td>
                </td>
                          </tr>
                        <tr>
                 <td style="font-size: medium;  color: #3366FF">Ration card</td>
                <td>
                   <img src='Document/Ration_card/<%#Eval("ration_card_photo") %>'  style="max-height:75px"max-width:"75px">
                     <td><a href='Document/Ration_card/<%#Eval("ration_card_photo") %>' download=""> Download </a></td>
                </td>
                            </tr>
                        <tr>
                 <td style="font-size: medium;  color: #3366FF">passport_photo</td>
                 
                <td>
                    <img src='Document/passport/<%#Eval("passport_photo")%>'  style="max-height:65px"max-width:"65px">
                     <td><a href='Document/passport/<%#Eval("passport_photo")%>'  download=""> Download </a></td>
                </td>
                            </tr>
                        <tr>
                    <td style="font-size: medium;  color: #3366FF">Driving License</td>

                     <td>
                  <img src='Document/driving_license/<%#Eval("driving_license_photo")%>'  style="max-height:100px"max-width:"100px">
                         <td><a href='Document/driving_license/<%#Eval("driving_license_photo")%>'   download=""> Download </a></td>
                </td>
                            </tr>
                        <tr>
                    <td style="font-size: medium;  color: #3366FF">TC/Leaving Certificate</td>
                     <td>
                  <img src='Document/TC/<%#Eval("tc_photo")%>'  style="max-height:75px"max-width:"100px">
                           <td><a href='Document/TC/<%#Eval("tc_photo")%>'   download=""> Download </a></td>
                </td>
                            </tr>
                       <tr>
                    <td style="font-size: medium;  color: #3366FF">photo</td>
                        <td>
                  <img src='Document/user_photo/<%#Eval("photo")%>' style="max-height:75px"max-width:"75px">
                           <td><a href='Document/user_photo/<%#Eval("photo")%>'  download=""> Download </a></td>   
                </td>
                   </tr>
                   </tr>
                   </div>
               </ItemTemplate>
            <FooterTemplate>
           </table> 
            </FooterTemplate>
             </asp:Repeater>     
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SERVICES_DBConnectionString %>" SelectCommand="SELECT [aadhar_card_photo], [votar_card_photo], [pan_card_photo], [bank_id_photo], [ration_card_photo], [passport_photo], [driving_license_photo], [tc_photo], [photo], [customer_name], [id] FROM [Service_RequestData]"></asp:SqlDataSource>
    </asp:Panel>

       </div>
    </form>
 

</asp:Content>
