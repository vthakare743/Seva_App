<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ServiceList.aspx.cs" Inherits="User_ServiceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="panel">
	<div class="tabs-custom">
		<%--<ul class="nav nav-tabs">
		    
		   	<li class="active">
				<a href="#list" data-toggle="tab"><i class="fas fa-list-ul"></i> Service List</a>
			</li>
			<li class="">
				<a href="#create2" data-toggle="tab"><i class="far fa-edit"></i> Assign Service Document</a>
			</li>
			
		</ul>--%>
        
                      <form id="Form1" runat="server" class="form-vertical">
                                                
                       <div class="panel panel-blue" style="background:#FFF;">
                            <div class="panel-heading" style="color: #000080"> View All Dacument</div>
                
		<div class="tab-content">
			<div class="tab-pane active" id="edit"></div>
				
				   <div class="form-group mt-md">
						<label class="col-md-3 control-label">Id Proof
						(--CHOOSE-)<span class="required" aria-required="true">*</span></label>
						<div class="col-md-6">
						
					<div class="col-md-6">
						
					<img src='Document/<%#Eval("id_proof_photo")%>' style="max-height:50px">
														
					<a href="Document/id_proof.png" download=""> Download </a>
                        </div>
					</div> 
						</div>
					
					
					
					
					
					<div class="form-group mt-md">
					
					<label class="col-md-3 control-label">Address Proof ()  <span class="required" aria-required="true">*</span></label>
						<div class="col-md-6">
						
					<div class="col-md-6">
						
							<img src='Document/<%#Eval("address_proof_photo")%>' style="max-height:50px">
							
							  <a href="Document/id proof.png" download=""> Download </a>
							
						</div> 
						</div>
					
					</div>
					
					
					<div class="form-group mt-md">
					
					<label class="col-md-3 control-label">Pan Card  <span class="required" aria-required="true">*</span></label>
						<div class="col-md-6">
						
					<div class="col-md-6">
						
							<img src='Document/<%#Eval("pan_card_photo")%>' style="max-height:50px">
							
							<a href="Document/id proof.png" download=""> Download </a>
						</div>
							
							
						</div>
					
					</div>
					
					
					
					
					<div class="form-group mt-md">
					
					<label class="col-md-3 control-label">Banking   <span class="required" aria-required="true">*</span></label>
						<div class="col-md-6">
						
					<div class="col-md-6">
						
					   	<img src='Document/<%#Eval("bank_id_photo")%>' style="max-height:50px">
							
					       <a href="Document/id proof.png" download=""> Download </a>
						</div>
							
							
						</div>
					
					</div>
					
					
					
					<div class="form-group mt-md">
					
					<label class="col-md-3 control-label">Ration card   <span class="required" aria-required="true">*</span></label>
						<div class="col-md-6">
						
					<div class="col-md-6">
						
							<img src='Document/<%#Eval("ration_card_photo")%>' style="max-height:50px">
							
							
					       <a href="Document/id proof.png" download=""> Download </a>
						</div>
							
							
						</div>
					
					</div>
					
					
					<div class="form-group mt-md">
					
					<label class="col-md-3 control-label">Passport   <span class="required" aria-required="true">*</span></label>
						<div class="col-md-6">
						
					<div class="col-md-6">
						
							<img src='Document/<%#Eval("passport_photo")%>' style="max-height:50px">
							 
						 <a href="Document/id proof.png" download=""> Download </a>
						</div>
							
							
						</div>
					
					</div>
					
					
					<div class="form-group mt-md">
					
					<label class="col-md-3 control-label">Photo    <span class="required" aria-required="true">*</span></label>
						<div class="col-md-6">
						
					<div class="col-md-6">
						
							<img src='Document/<%#Eval("photo")%>' style="max-height:50px">
							
							<a href="Document/id proof.png" download=""> Download </a>
                       
						</div>
							</div>
							</div>
						</div>
					</div>
                  			
				
				 </form>
				</div>
     
        
</section>
  
</asp:Content>

