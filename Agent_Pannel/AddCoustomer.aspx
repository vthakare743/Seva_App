<%@ Page Title="" Language="C#" MasterPageFile="~/Agent_Pannel/AgentMasterPage.master" AutoEventWireup="true" CodeFile="AddCoustomer.aspx.cs" Inherits="Agent_Pannel_AddCoustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

     <form id="Form1" runat="server" class="form-horizontal">
                                                                           
                                
<section class="panel">
    <div class="tabs-custom">
       <%-- <ul class="nav nav-tabs">
            <li class="">
                <a href="#" data-toggle="tab" aria-expanded="false"><i class="fas fa-list-ul"></i> Service List</a>
            </li>
            <li class="active">
                <a href="#" data-toggle="tab" aria-expanded="true"><i class="far fa-edit"></i> Assign Service</a>
            </li>
        </ul>--%>
        <div class="tab-content">
            <div id="list" class="tab-pane">
                <div class="mb-md">
                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6 mb-xs"><div class="dt-buttons btn-group">               <a class="btn btn-default buttons-copy buttons-html5" tabindex="0" aria-controls="DataTables_Table_0" href="#" title="Copy"><span><i class="far fa-copy"></i></span></a> <a class="btn btn-default buttons-excel buttons-html5" tabindex="0" aria-controls="DataTables_Table_0" href="#" title="Excel"><span><i class="fa fa-file-excel"></i></span></a> <a class="btn btn-default buttons-csv buttons-html5" tabindex="0" aria-controls="DataTables_Table_0" href="#" title="CSV"><span><i class="fa fa-file-alt"></i></span></a> <a class="btn btn-default buttons-pdf buttons-html5" tabindex="0" aria-controls="DataTables_Table_0" href="#" title="PDF"><span><i class="fa fa-file-pdf"></i></span></a> <a class="btn btn-default buttons-print" tabindex="0" aria-controls="DataTables_Table_0" href="#" title="Print"><span><i class="fa fa-print"></i></span></a> <a class="btn btn-default buttons-collection buttons-colvis" tabindex="0" aria-controls="DataTables_Table_0" href="#" title="Columns"><span><i class="fas fa-columns"></i></span></a> </div></div><div class="col-sm-6"><div id="DataTables_Table_0_filter" class="dataTables_filter"><label><input type="search" class="form-control pull-right" placeholder="Search..." aria-controls="DataTables_Table_0"></label></div></div></div><div class="table-responsive"><table class="table table-bordered table-hover table-condensed mb-none table-export dataTable no-footer" id="DataTables_Table_0" role="grid">
                        <thead>
                            <tr role="row"><th width="50" class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Sl: activate to sort column descending" style="width: 50px;">Sl</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Customer Name: activate to sort column ascending" style="width: 62.0938px;">Customer Name</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Ref.No: activate to sort column ascending" style="width: 53.25px;">Ref.No</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Service ID: activate to sort column ascending" style="width: 75.1875px;">Service ID</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Amount: activate to sort column ascending" style="width: 47.7031px;">Amount</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Commission: activate to sort column ascending" style="width: 73.5px;">Commission</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Pan ID: activate to sort column ascending" style="width: 24.3438px;">Pan ID</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Payment Status: activate to sort column ascending" style="width: 71.5625px;">Payment Status</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Service Status: activate to sort column ascending" style="width: 48.7812px;">Service Status</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Assigned By: activate to sort column ascending" style="width: 58.4375px;">Assigned By</th><th class="no-sort sorting_disabled" rowspan="1" colspan="1" aria-label="Action" style="width: 104.047px;">Action</th></tr>
                        </thead>
                        
                    </table></div><div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="DataTables_Table_0_previous"><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0"><i class="fa fa-chevron-left"></i></a></li><li class="paginate_button active"><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button next disabled" id="DataTables_Table_0_next"><a href="#" aria-controls="DataTables_Table_0" data-dt-idx="2" tabindex="0"><i class="fa fa-chevron-right"></i></a></li></ul></div></div>
                </div>
            </div>

                &nbsp;&nbsp;

                <div class="panel-heading" style="color: #000080; font-size: large;">&nbsp;&nbsp;&nbsp; <strong style="color: #FF6600; background-color: #FFFF99;">Add Customer</strong></div>
            <br />
                <div class="row">
                    <div class="form-group mt-md col-md-12">
                        <label class="col-md-3 control-label">Customer <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                          
                            <asp:TextBox ID="txtcustomer" runat="server" tabindex="4" class="form-control" placeholder="Customer Name" style="text-transform: uppercase;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Customer Name!!!</asp:RequiredFieldValidator>
                 <%--<span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;display:none;">Enter First Name</span>

                     <span id="ContentPlaceHolder1_RegularExpressionValidator3" style="color:Red;display:none;">First Name must be alphabets</span>--%>
                 </div>

                        </div>
                         <div class="form-group mt-md col-md-12">
                        <label class="col-md-3 control-label">Mobile Number <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                          
                            <asp:TextBox ID="txtno" runat="server" tabindex="4" class="form-control" placeholder="Mobile;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Mobile Number!!!</asp:RequiredFieldValidator>
                

                        </div>


                    </div>
                      <div class="form-group mt-md col-md-12">
                        <label class="col-md-3 control-label">Email ID <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                          
                            <asp:TextBox ID="txtmail" runat="server" tabindex="4" class="form-control" placeholder="Email;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Enter Email ID!!!</asp:RequiredFieldValidator>
                

                        </div>


                    </div>
                     <div class="form-group mt-md col-md-12">
                        <label class="col-md-3 control-label">Date <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                          
                           <asp:TextBox ID="txtdate" runat="server" class="form-control" 
                                                placeholder=" Date:" TextMode="Date"></asp:TextBox>
                                            
                

                        </div>


                    </div>
                    
                    <div class="form-group mt-md col-md-12">
                        <label class="col-md-3 control-label">Service <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                             <asp:DropDownList ID="ddlservices" runat="server" class="form-control">
                      <asp:ListItem>Select Type</asp:ListItem>
                      <asp:ListItem>PAN CARD   COST RS 250 Commission RS 160</asp:ListItem>
                      <asp:ListItem>PAN and TAN   COST RS 500 Commission RS 250</asp:ListItem>
                      <asp:ListItem>ADHAR CARD COST RS 250 Commission RS 160</asp:ListItem>
                      <asp:ListItem>ADHAR CARD COST RS 500 Commission RS 250</asp:ListItem>
                      <asp:ListItem>CA Certification of Balance Sheet (1 Cr and above)  COST RS 20000 Commission RS 2000</asp:ListItem>
                      <asp:ListItem>CA Certification of Balance Sheet (20 Lacs to 50 Lacs)  COST RS 11000 Commission RS 1200</asp:ListItem>
                      <asp:ListItem>CA Certification of Balance Sheet (50 Lacs to 75 Lacs)  COST RS 15000 Commission RS 1500</asp:ListItem>
                      <asp:ListItem>CA Certification of Balance Sheet (75 Lacs to 1 Cr)  COST RS 17500 Commission RS 1800</asp:ListItem>
                      <asp:ListItem>CA Certification of Balance Sheet(upto 20 Lacs)  COST RS 8000 Commission RS 1000</asp:ListItem>
                      <asp:ListItem>CA Certification of CMA report  COST RS 4500 Commission RS 450</asp:ListItem>
                      <asp:ListItem>CA certification of itr computation (income upto 20 lacs)  COST RS 3000 Commission RS 900</asp:ListItem>
                      <asp:ListItem>PF &amp; ESI Registration   COST RS 4000 Commission RS 2000</asp:ListItem>
                      <asp:ListItem>PF Monthly Filing(Upto 50 employees)   COST RS 3000 Commission RS 1500</asp:ListItem>
                      <asp:ListItem>Income Tax Audit(Above 1 Crore Upto 2 Crore)   COST RS 14000 Commission RS 2800</asp:ListItem>


                                  </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Select Service !!!</asp:RequiredFieldValidator>
                           
                            <span class="error"></span>
                        </div>
                    </div>


                   <%-- <div class="form-group mt-md col-md-6">--%>
                       <%-- <div class="row">--%>
                            <%--<div class="col-md-12">--%>
                                 <div class="form-group mt-md col-md-6">
                        <label class="col-md-4 control-label">Aadhar Card <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUadhar" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                      </div>
                    </div>


               
                         <div class="form-group mt-md col-md-6">
                        <label class="col-md-4 control-label">Votar ID Card <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUvotar" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                      </div>
                    </div>
                    <div class="form-group mt-md col-md-6">
                        <label class="col-md-3 control-label">Pan Card <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
        
                            <span class="error"></span>
                        </div>
                        <div class="col-md-3"></div>
                        <div class="col-md-9">
                            <asp:FileUpload ID="FUpan" class="form-control" runat="server" />
                            <span class="error"></span>
                        </div>
                    </div>
                    <div class="form-group mt-md col-md-6">
                        <label class="col-md-3 control-label">Banking <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUbank" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                        </div>
                    <div class="form-group mt-md col-md-6">
                        <label class="col-md-4 control-label">Ration Card <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUration" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                      </div>
                    </div>

                    <div class="form-group mt-md col-md-6">
                        <label class="col-md-3 control-label">Passport <span class="required" aria-required="true" style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUpassport" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                    </div>
                     <div class="form-group mt-md col-md-6">
                        <label class="col-md-4 control-label">Driving License <span class="required" aria-required="true"style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUlicense" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                    </div>
                     <div class="form-group mt-md col-md-6">
                        <label class="col-md-5 control-label">TC/Leaving Certificate <span class="required" aria-required="true"style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUtc" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                    </div>

                    <div class="form-group mt-md col-md-6">
                        <label class="col-md-3 control-label">Photo <span class="required" aria-required="true"style="color: #FF0000">*</span></label>
                        <div class="col-md-9">
                              <asp:FileUpload ID="FUphoto" class="form-control" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                         ControlToValidate="txtcustomer" Display="Dynamic" 
                                         ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"  SetFocusOnError="True">Choose File !!!</asp:RequiredFieldValidator>

                            <span class="error"></span>
                        </div>
                    </div>


                    <div class="form-group mt-md col-md-6">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="col-md-4 control-label">Payment Mode <span class="required" aria-required="true"style="color: #FF0000">*</span></label>
                                <div class="col-md-9">
                                     <asp:TextBox ID="txtpaymode" runat="server"  class="form-control"></asp:TextBox>
                                    <span class="error"></span>
                                </div>
                            </div>
                        </div>
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

                    <div class="form-group mt-md col-md-6">
                        <label class="col-md-3 control-label">Others <span class="required" aria-required="true"></span></label>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtothers" runat="server"  class="form-control"></asp:TextBox>
                            <span class="error"></span>
                        </div>
                    </div>
                    <div class="form-group mt-md col-md-6">
                        <label class="col-md-4 control-label">Service Note. <span class="required" aria-required="true"></span></label>
                        <div class="col-md-9">
                             <asp:TextBox ID="snote" runat="server"  class="form-control"></asp:TextBox>
                            <span class="error"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Service name</th>
                                    <th>Qty</th>
                                    <th>Price</th>
                                </tr>

                            </thead>
                            <tbody id="tbl">
                                 
                            </tbody>
                        </table>
                    </div>
                </div>
                <footer class="panel-footer mt-lg">
                    <div class="row">
                        <div class="col-md-2 col-md-offset-2">
                            
                        <asp:Button ID="btnsave" runat="server" Text="Save" class="btn btn-lg btn-primary btn-block" OnClick="btnsave_Click"  />
                        </div>
                       
                       <div class="col-md-2 col-md-offset-2">
                      <asp:Button ID="btnpay" runat="server" Text="Save&Pay" class="btn btn-lg btn-success btn-block" Width="144px" Font-Italic="True" />
          
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                      <asp:Button ID="btnwallet" runat="server" Text="Save&Wallet" class="btn btn-lg btn-warning btn-block" Width="144px" Font-Italic="True" ForeColor="White" />
          
                        </div>
                    </div>
                </footer>
          <%--  <div>
                <asp:RadioButtonList ID="rblsave" runat="server" OnSelectedIndexChanged="rblsave_SelectedIndexChanged">
                    <asp:ListItem>Save</asp:ListItem>
                    <asp:ListItem>Save & Pay</asp:ListItem>
                    <asp:ListItem>Save & Wallet</asp:ListItem>
                </asp:RadioButtonList>
            </div>--%>
            </div>
     
                            </div>
       
</section>
       <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>

                                                   
          </form>
        </div>                                  
         
</asp:Content>

