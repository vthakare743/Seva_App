<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ChooseServices.aspx.cs" Inherits="User_ChooseServices" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   <form  runat="server">
       <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

    <style type="text/css">
 
  .modalPopup
  {
            background-color: #FFFFFF;
            width: 600px;
            border: 3px solid #0DA9D0;
            height: 450px;
          
 }

 .modalPopup.header
  {
            background-color: #2FBDF1;
            height: 30px;
            color: white;
            line-height: 30px;
            text-align: center;
            font-weight: bold;
 }

        .modalPopup .footer {
            padding: 3px;

 }
        .modalPopup button {
            height: 23px;
            color: white;
            line-height: 23px;
            text-align: center;
            font-weight: bold;
            cursor: pointer;
            background-color: red;
            border: 1px solid #5C5C5C;
  }
    </style>
   
    <section role="main" class="content-body">
				<header class="page-header">
					<a class="page-title-icon" href="https://crm-admin.gstfirstcenter.com/dashboard"><i class="fas fa-home"></i></a>
					<h2>Dashboard</h2>
				</header>
			</section>	
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
                <div class="row">
                    <!--
				    
				    
				    <div class="form-group mt-md col-md-6">
						<label class="col-md-3 control-label">Date Of Billing <span class="required">*</span></label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="date_billing" value="" />
							<span class="error"></span>
						</div>
					</div>
					
					
					<div class="form-group mt-md col-md-6" >
						<label class="col-md-3 control-label">Ref No. <span class="required">*</span></label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="ref_no" value="" />
							<span class="error"></span>
						</div>
					</div> -->
                </div>
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
                           <%-- <select name="service" class="form-control-lg" onchange="getSerValue(this.value)">
                                                                    <option value="8">Accounting - Package 2 ( Up to 50L turnover) P.M  COST RS 2500 Commission RS 1251</option>
                                                                    <option value="9">Accounting - Package 3 ( Up to 1 Cr turnover) P.M  COST RS 3000 Commission RS 1500</option>
                                                                    <option value="10">Accounting - Package 4 ( Up to 1.5 Cr turnover) P.M  COST RS 5800 Commission RS 2900</option>
                                                                    <option value="11">Accounting Package (Upto 5 Crore) P.M  COST RS 9800 Commission RS 4900</option>
                                                                    <option value="12">ADT 1 (Incl. Govt Fees)- Auditor Appointment  COST RS 4500 Commission RS 1000</option>
                                                                    <option value="13">Advance Tax Payment  COST RS 1000 Commission RS 500</option>
                                                                    <option value="14">Alteration/Addition in Company (With Certification of CA/CS/CMA) excl. Govt Fees  COST RS 3000 Commission RS 750</option>
                                                                    <option value="15">Amendment or Correction in Any Application  COST RS 1000 Commission RS 500</option>
                                                                    <option value="16">Ammendment in registered society  COST RS 4300 Commission RS 1500</option>
                                                                    <option value="17">Appointment and resignation of the Directors in Company/LLP (With Certification of CA/CS/CMA) excl. Govt. Fees  COST RS 3000 Commission RS 750</option>
                                                                    <option value="18">Balance Sheet &amp; Profit Loss Account  COST RS 1300 Commission RS 650</option>
                                                                    <option value="19">CA Certification (Bank Verification Purpose)  COST RS 20000 Commission RS 2000</option>
                                                                    <option value="20">CA Certification of Balance Sheet (1 Cr and above)  COST RS 20000 Commission RS 2000</option>
                                                                    <option value="21">CA Certification of Balance Sheet (20 Lacs to 50 Lacs)  COST RS 11000 Commission RS 1200</option>
                                                                    <option value="22">CA Certification of Balance Sheet (50 Lacs to 75 Lacs)  COST RS 15000 Commission RS 1500</option>
                                                                    <option value="23">CA Certification of Balance Sheet (75 Lacs to 1 Cr)  COST RS 17500 Commission RS 1800</option>
                                                                    <option value="24">CA Certification of Balance Sheet(upto 20 Lacs)  COST RS 8000 Commission RS 1000</option>
                                                                    <option value="25">CA Certification of CMA report  COST RS 4500 Commission RS 450</option>
                                                                    <option value="26">CA certification of itr computation (income upto 20 lacs)  COST RS 3000 Commission RS 900</option>
                                                                    <option value="27">Charitable Trust Registration i.e Public Trust (Delhi)  COST RS 12500 Commission RS 5000</option>
                                                                    <option value="28">CMA Report  COST RS 2500 Commission RS 1200</option>
                                                                    <option value="29">Computation of Income tax return  COST RS 500 Commission RS 250</option>
                                                                    <option value="30">Digital certificate (Temporary)  COST RS 1000 Commission RS 500</option>
                                                                    <option value="31">Digital Signature Certificate- Class 2(1 Year- combo)  Individual   COST RS 3000 Commission RS 2500</option>
                                                                    <option value="32">Digital Signature Certificate- Class 2(1 Year- signature)  Company  COST RS 3500 Commission RS 3000</option>
                                                                    <option value="33">Digital Signature Certificate- Class 2(1 Year- signature)  Individual  COST RS 800 Commission RS 250</option>
                                                                    <option value="34">Digital Signature Certificate- Class 2(2 Year- combo) Individual  COST RS 1500 Commission RS 300</option>
                                                                    <option value="35">Digital Signature Certificate- Class 2(2 Year- signature)  Company  COST RS 1300 Commission RS 300</option>
                                                                    <option value="36">Digital Signature Certificate- Class 2(2 Year- signature) Individual  COST RS 2100 Commission RS 700</option>
                                                                    <option value="37">Digital Signature Certificate- Class 3(1 Year- combo)  company  COST RS 3100 Commission RS 650</option>
                                                                    <option value="38">Digital Signature Certificate- Class 3(1 Year- combo)  Individual  COST RS 3100 Commission RS 650</option>
                                                                    <option value="39">Digital Signature Certificate- Class 3(1 Year- signature) Company  COST RS 2300 Commission RS 500</option>
                                                                    <option value="40">Digital Signature Certificate- Class 3(1 Year- signature)  Individual  COST RS 2300 Commission RS 500</option>
                                                                    <option value="41">Digital Signature Certificate- Class 3(2 Year- combo) Company  COST RS 3300 Commission RS 600</option>
                                                                    <option value="42">Digital Signature Certificate- Class 3(2 Year- combo)  Individual  COST RS 3300 Commission RS 600</option>
                                                                    <option value="43">Digital Signature Certificate- Class 3(2 Year- signature) Company  COST RS 2300 Commission RS 500</option>
                                                                    <option value="44">Digital Signature Certificate- Class 3(2 Year- signature)  Individual  COST RS 2300 Commission RS 500</option>
                                                                    <option value="45">DIN (application charge + govt fee ) (CS/CA Certification Required)  COST RS 2100 Commission RS 500</option>
                                                                    <option value="46">DIR-3 KYC (Director KYC)  COST RS 3000 Commission RS 500</option>
                                                                    <option value="47">DPT-3 (Return of Deposits by Companies)  COST RS 4000 Commission RS 500</option>
                                                                    <option value="48">DSC DGFT ( 1 YEAR) individual   COST RS 2000 Commission RS 1000</option>
                                                                    <option value="49">DSC DGFT ( 2 YEAR) COMPANY  COST RS 2400 Commission RS 1200</option>
                                                                    <option value="50">DSC DGFT ( 2 YEAR) individual   COST RS 2200 Commission RS 1100</option>
                                                                    <option value="51">DSC Token with courier charges   COST RS 300 Commission RS 150</option>
                                                                    <option value="52">E-way - (Pack -100) One Quarter  COST RS 4200 Commission RS 2100</option>
                                                                    <option value="53">E-way - (Pack -15) One Month  COST RS 700 Commission RS 250</option>
                                                                    <option value="54">E-way - (Pack -5) One Month  COST RS 250 Commission RS 125</option>
                                                                    <option value="55">E-way Bill - Registration   COST RS 150 Commission RS 100</option>
                                                                    <option value="56">E-way Bill- Single   COST RS 100 Commission RS 50</option>
                                                                    <option value="57">Employee Registartion/Addition in Existing PF   COST RS 2000 Commission RS 1000</option>
                                                                    <option value="58">ESI Monthly Filing(Upto 50 Employees)   COST RS 3000 Commission RS 1500</option>
                                                                    <option value="59">FSSAI Licence    COST RS 18000 Commission RS 5000</option>
                                                                    <option value="60">FSSAI Registration (Including Govt. Fees)   COST RS 5500 Commission RS 1000</option>
                                                                    <option value="61">GeM Registration  COST RS 1500 Commission RS 750</option>
                                                                    <option value="62">GST Annual Return (GSTR 9/9A)  COST RS 7000 Commission RS 2500</option>
                                                                    <option value="63">GST Audit( Upto 2 Crore)  COST RS 15000 Commission RS 2500</option>
                                                                    <option value="64">GST Audit(Above 2 Crore Upto 5 Crore)  COST RS 25000 Commission RS 4000</option>
                                                                    <option value="65">GST Audit (Above 5 Crores upto 10 Crores)  COST RS 26000 Commission RS 5000</option>
                                                                    <option value="66">GST E-Commerece Return (GSTR 8)  COST RS 900 Commission RS 450</option>
                                                                    <option value="67">GST Final Return (GSTR 10)  COST RS 3000 Commission RS 1000</option>
                                                                    <option value="68">GST Reconciliation Statement (Upto 3 Months)  COST RS 1000 Commission RS 500</option>
                                                                    <option value="69">GST Registration + Certificate  COST RS 1500 Commission RS 750</option>
                                                                    <option value="70">GST Modification of Application (Any Part)  COST RS 500 Commission RS 250</option>
                                                                    <option value="71">GST Return Filing (Composition Scheme) Quaterly  COST RS 500 Commission RS 250</option>
                                                                    <option value="72">GST Return Filing GSTR-3B- NIL  COST RS 500 Commission RS 250</option>
                                                                    <option value="73">GST Return Filing GSTR-3B  COST RS 500 Commission RS 250</option>
                                                                    <option value="74">GST Return Filling GSTR-1 (Invoices Upto 01 to 20)  COST RS 500 Commission RS 250</option>
                                                                    <option value="75">GST Return Filling GSTR-1 (Invoices Upto 20 to 50)  COST RS 1000 Commission RS 500</option>
                                                                    <option value="76">GST Return Filling GSTR-1 (Invoices Upto 50 to 100)  COST RS 1500 Commission RS 750</option>
                                                                    <option value="77">GST Return Filling GSTR-1 (Invoices More than 100)  COST RS 2200 Commission RS 1100</option>
                                                                    <option value="78">GST Return Filing – Yearly Package ( 4 GSTR 1 &amp; 12 GSTR 3B) : 16 RETURNS (upto 20 Invoices each month)  COST RS 6000 Commission RS 3000</option>
                                                                    <option value="79">GST Return Filing – Half - Yearly Package (2 GSTR 1s &amp; 6  GSTR 3Bs) : 8 RETURNS (upto 20 Invoices each month)  COST RS 3500 Commission RS 1700</option>
                                                                    <option value="80">GST Return Filing – Yearly Package ( 12 GSTR 1 &amp; 12  GSTR 3B) : 24 RETURNS (upto 20 Invoices each month)  COST RS 9000 Commission RS 4500</option>
                                                                    <option value="81">GST Return Filing – Half - Yearly Package (GSTR 1 &amp; 3B).  12 RETURNS (Upto 20 Invoices each Month)  COST RS 7000 Commission RS 3500</option>
                                                                    <option value="82">GST Surrender/Cancellation 500  COST RS 1000 Commission RS 500</option>
                                                                    <option value="83">GST Return - GSTR 7  COST RS 500 Commission RS 250</option>
                                                                    <option value="84">IEC AMMENDMENT   COST RS 1500 Commission RS 750</option>
                                                                    <option value="85">IEC Registration Including Govt Fees.(Company)- DSC  Exclude  COST RS 2500 Commission RS 1200</option>
                                                                    <option value="86">IEC Registration Including Govt Fees.(Partnership)- DSC  Exclude  COST RS 2500 Commission RS 1000</option>
                                                                    <option value="87">IEC Registration Including Govt Fees.(Propertorship)- DSC Exclude  COST RS 2500 Commission RS 1000</option>
                                                                    <option value="88">INC-20A-Commencement of business W/ CA-CS Certification  COST RS 3000 Commission RS 500</option>
                                                                    <option value="89">INC-20A-Commencement of business W/ CA-CS Certification  COST RS 3000 Commission RS 500</option>
                                                                    <option value="90">INC-20 A (ACTIVE Tagging)   COST RS 3000 Commission RS 500</option>
                                                                    <option value="91">Change of Registered Office of Company within the Same State - Same ROC (INC-22) Including Preperation of all  Documentation &amp; CA-CS Certification  COST RS 6000 Commission RS 1000</option>
                                                                    <option value="92">Change of Registered Office of Company outside the State - Different ROC (INC-22) Including Preparation of all Documentation &amp; CA-CS Certification  COST RS 50000 Commission RS 10000</option>
                                                                    <option value="93">Income Tax Audit(Above 1 Crore Upto 2 Crore)   COST RS 14000 Commission RS 2800</option>
                                                                    <option value="94">Income Tax Audit(Above 2 Crore Upto 5 Crore)  COST RS 18500 Commission RS 3800</option>
                                                                    <option value="95">Income Tax Audit(Above 5 Crore Upto 10 Crore)   COST RS 27000 Commission RS 5300</option>
                                                                    <option value="96">Income Tax Audit(Upto 1 Crore)   COST RS 7500 Commission RS 1500</option>
                                                                    <option value="97">ITR (Form 10E)   COST RS 3000 Commission RS 500</option>
                                                                    <option value="98">ITR 1 (For Salried Person &amp; Other Income)  COST RS 2000 Commission RS 500</option>
                                                                    <option value="99">ITR 4 (Business or Profession Income on Presumption)   COST RS 1500 Commission RS 350</option>
                                                                    <option value="100">ITR Correction   COST RS 1500 Commission RS 500</option>
                                                                    <option value="101">ITR-2 (For Individual &amp; HUF have income from Other  than Salary &amp; Business or Profession)   COST RS 3000 Commission RS 500</option>
                                                                    <option value="102">ITR-3 (For Individuals &amp; HUF Having Income from  Business of Profession)  COST RS 3000 Commission RS 600</option>
                                                                    <option value="103">ITR-5 (For LLP &amp; Partnership Firm)  COST RS 3500 Commission RS 750</option>
                                                                    <option value="104">ITR-7 (Income Tax Return for Trust Society or Section 8  Company)  COST RS 3800 Commission RS 900</option>
                                                                    <option value="105">LLP Formation   COST RS 9500 Commission RS 3000</option>
                                                                    <option value="106">LOGO designing   COST RS 3000 Commission RS 1500</option>
                                                                    <option value="107">LUT File   COST RS 800 Commission RS 400</option>
                                                                    <option value="108">MSME Amendment   COST RS 400 Commission RS 200</option>
                                                                    <option value="109">NGO registration Section 8 Company with 80G &amp; 10AA  Registration   COST RS 28500 Commission RS 7500</option>
                                                                    <option value="110">80G &amp; 10AA Registration   COST RS 16500 Commission RS 5000</option>
                                                                    <option value="111">One person company-Andhra Pradesh (Upto 1 Lac  Capital)   COST RS 16000 Commission RS 4000</option>
                                                                    <option value="112">One person company-Andman &amp; Nicobar (Upto 1 Lac  Capital)   COST RS 10000 Commission RS 4000</option>
                                                                    <option value="113">One person company-Arunachal Pradesh (Upto 1 Lac  Capital)   COST RS 10000 Commission RS 4000</option>
                                                                    <option value="114">One person company-Assam (Upto 1 Lac Capital)   COST RS 10000 Commission RS 4000</option>
                                                                    <option value="115">One person company-Bihar (Upto 1 Lac Capital)   COST RS 10000 Commission RS 4000</option>
                                                                    <option value="116">One person company-Chandigarh (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="117">One person company-Chattisgarh (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="118">One person company-Dadra &amp; Nagar Haveli (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="119">One person company-Daman &amp; Diu (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="120">One person company-Delhi(Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="121">One person company-Goa (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="122">One person company-Gujarat (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="123">One person company-Haryana (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="124">One person company-Himachal Pradesh (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="125">One person company-Jammu &amp; Kashmir (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="126">One person company-Jharkhand (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="127">One person company-Karnataka (Upto 1 Lac Capital)   COST RS 12000 Commission RS 4000</option>
                                                                    <option value="128">One person company-Kerala (Upto 1 Lac Capital)   COST RS 13000 Commission RS 4000</option>
                                                                    <option value="129">One person company-Lakshdeep (Upto 1 Lac Capital)   COST RS 10000 Commission RS 4000</option>
                                                                    <option value="130">One person company-Maharashtra (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="131">One person company-Manipur (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="132">One person company-Meghalya (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="133">One person company-Mizoram (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="134">One person company-Nagaland (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="135">One person company-Orissa (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="136">One person company-puducherry (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="137">One person company-Punjab (Upto 1 Lac Capital)   COST RS 20000 Commission RS 4000</option>
                                                                    <option value="138">One person company-Rajasthan (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="139">One person company-Tamil Nadu (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="140">One person company-Telangana (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="141">One person company-Tripura (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="142">One person company-Uttar Pradesh (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="143">One person company-Uttrakhand (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="144">One person company-West Bengal (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="145">PAN and TAN   COST RS 500 Commission RS 250</option>
                                                                    <option value="146">PAN CARD   COST RS 250 Commission RS 160</option>
                                                                    <option value="147">Partnership Deed Only   COST RS 1000 Commission RS 500</option>
                                                                    <option value="148">Partnership Firm Formation Inlucding Documents  Preperation, PAN, GST &amp; MSME  COST RS 3000 Commission RS 1500</option>
                                                                    <option value="149">PF &amp; ESI Registration   COST RS 4000 Commission RS 2000</option>
                                                                    <option value="150">PF Monthly Filing(Upto 50 employees)   COST RS 3000 Commission RS 1500</option>
                                                                    <option value="151">Private Limited Company-Andhra Pradesh (Upto 1 Lac Capital)   COST RS 16000 Commission RS 4000</option>
                                                                    <option value="152">Private Limited Company-Andman &amp; Nicobar (Upto 1  Lac Capital)   COST RS 10000 Commission RS 4000</option>
                                                                    <option value="153">Private Limited Company-Arunachal Pradesh (Upto 1 Lac  Capital)  COST RS 11000 Commission RS 4000</option>
                                                                    <option value="154">Private Limited Company-Assam (Upto 1 Lac Capital)  COST RS 16000 Commission RS 4000</option>
                                                                    <option value="155">Private Limited Company-Bihar (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="156">Private Limited Company-Chandigarh (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="157">Private Limited Company-Chattisgarh (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="158">Private Limited Company-Dadra &amp; Nagar Haveli (Upto 1  Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="159">Private Limited Company-Daman &amp; Diu (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="160">Private Limited Company-Delhi (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="161">Private Limited Company-Goa (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="162">Private Limited Company-Gujarat (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="163">Private Limited Company-Haryana (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="164">Private Limited Company-Himachal Pradesh (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="165">Private Limited Company-Jammu &amp; Kashmir (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="166">Private Limited Company-Jharkhand (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="167">Private Limited Company-Karnataka (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="168">Private Limited Company-Kerala (Upto 1 Lac Capital)  COST RS 14000 Commission RS 4000</option>
                                                                    <option value="169">Private Limited Company-Lakshdeep (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="170">Private Limited Company-Madhya Pradesh (Upto 1 Lac  Capital)  COST RS 18000 Commission RS 4000</option>
                                                                    <option value="171">Private Limited Company-Maharasthra (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="172">Private Limited Company-Manipur (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="173">Private Limited Company-Meghalya (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="174">Private Limited Company-Mizoram (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="175">Private Limited Company-Nagaland (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="176">Private Limited Company-Orissa (Upto 1 Lac Capital)  COST RS 16000 Commission RS 4000</option>
                                                                    <option value="177">Private Limited Company-Puducherry (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="178">Private Limited Company-Punjab (Upto 1 Lac Capital)  COST RS 20000 Commission RS 4000</option>
                                                                    <option value="179">Private Limited Company-Rajasthan (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="180">Private Limited Company-Tamil Nadu (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="181">Private Limited Company-Telangana (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="182">Private Limited Company-Tripura (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="183">Private Limited Company-Uttar Pradesh (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="184">Private Limited Company-Uttrakhand (Upto 1 Lac Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="185">Private Limited Company-West Bangal (Upto 1 Lac  Capital)  COST RS 10000 Commission RS 4000</option>
                                                                    <option value="186">Registration Under Shop &amp; Establishment Act  COST RS 2000 Commission RS 1000</option>
                                                                    <option value="187">Registration Under Shop &amp; Establishment Act-  Uttarpradesh  COST RS 3000 Commission RS 1500</option>
                                                                    <option value="188">ROC-E FILING (MGT-7 &amp; AOC-4) (Excluding Govt. Fees &amp;  CA-CS Certification)  COST RS 2000 Commission RS 1000</option>
                                                                    <option value="189">RUN FORM (including government fees) 1400 700  COST RS 1400 Commission RS 700</option>
                                                                    <option value="190">Society Registration (Delhi)   COST RS 13000 Commission RS 4000</option>
                                                                    <option value="191">Statement of Net Worth of Individual with CA  Certification  COST RS 5500 Commission RS 1500</option>
                                                                    <option value="192">Statutory Audit (Above 3 Crore Upto 10 Crore Turnover Along With AOC-4 &amp; MGT-7)  COST RS 25000 Commission RS 5000</option>
                                                                    <option value="193">Statutory Audit (Upto 3 Crore Turnover Along With AOC-  4 &amp; MGT-7)  COST RS 18000 Commission RS 5000</option>
                                                                    <option value="194">TAN Registration   COST RS 250 Commission RS 100</option>
                                                                    <option value="195">TDS challan Submission  COST RS 150 Commission RS 80</option>
                                                                    <option value="196">TDS Return (Quarterly)   COST RS 1200 Commission RS 600</option>
                                                                    <option value="197">Trademark Registration - Individual (Incl. Gov. Fee Rs.  4500)  COST RS 9000 Commission RS 2000</option>
                                                                    <option value="198">Trademark Registration - Other Than Individual (Gov.  Fee of Rs. 9000)   COST RS 14000 Commission RS 2000</option>
                                                                    <option value="199">Trust Audit  COST RS 7500 Commission RS 3800</option>
                                                                    <option value="200">Udyog Aadhar (MSME )   COST RS 500 Commission RS 200</option>
                                                                    <option value="201">Winding up of LLP   COST RS 18000 Commission RS 5000</option>
                                                                    <option value="202">Mudra Loan- Processing ( Project Report)   COST RS 6500 Commission RS 2000</option>
                                                                    <option value="203">ISO Certification (UK &amp; others)   COST RS 11000 Commission RS 3000</option>
                                                                    <option value="204">ISO Certification (Dubai)   COST RS 19000 Commission RS 5000</option>
                                                                    <option value="205">Secretarial Audit (Depends on Case to Case Basis)   COST RS 25000 Commission RS 10000</option>
                                                                    <option value="206">Project File  COST RS 5000 Commission RS 1000</option>
                                                            </select>--%>
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
                            
                        <asp:Button ID="btnsave" runat="server" Text="Save" class="btn btn-lg btn-primary btn-block" OnClick="btnsave_Click" Width="144px" Font-Italic="True" />
                        </div>
                         <asp:Label ID="lblpopup" runat="server"></asp:Label>
                        
                          
                         <asp:ModalPopupExtender ID="mpe" PopupControlID="Panel1" TargetControlID="lblpopup" PopupDragHandleControlID="headerdiv" CancelControlID="btnclose" runat="server"></asp:ModalPopupExtender>
         
        <asp:Panel ID="Panel1" Cssclass="modalPopup" aline="center" runat="server">
            <div id ="headerdiv" class="header">
            
            <div id ="divdetails" style="color: #000080; font-size: large; font-weight: bold">&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Congratulations&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Image ID="Image11" runat="server" ImageUrl="~/User/Photos/right.png" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Data has been saved successfully </div>
            <div id="footerdiv" class="footer">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclose" runat="server" aline="center" BackColor="#CC0000" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" ForeColor="White" Height="33px" Text="Close" Width="69px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </div>
          
         </asp:Panel>







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
        
</section>
       <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
          </form>
</asp:Content>

