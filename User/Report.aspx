<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="User_demoaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="Form1"  runat="server">
    <section class="panel">
    <div class="tabs-custom">
       
        <ul class="nav nav-tabs">
            
            <li class="">
                <a href="#" data-toggle="tab" aria-expanded="false"><i class="fas fa-list-ul"></i> Wallet List</a>
            </li>
           
            
            <li class="">
                <a href="#" data-toggle="tab" aria-expanded="false"><i class="far fa-edit"></i> Pending Amount</a>
            </li>
            
                            <li class="active">
                    <a href="#" data-toggle="tab" aria-expanded="true"><i class="far fa-edit"></i> Add Amount</a>
                </li>
             
                    </ul>
            
        <div class="tab-content">
            <div id="list" class="tab-pane">
                <div class="mb-md">
                    <table class="table table-bordered table-hover table-condensed mb-none table-export dataTable" id="DataTables_Table_0">
                        <thead>
                            <tr>
                                <th width="50">Sl</th>
                                <th>User ID</th>
                                <th>Email</th>
                                <th>Balance</th>
                                <th>Status</th>
                                                            </tr>
                        </thead>
                        <tbody>
                                                            <tr>
                                    <td>1</td>
                                    <td>santanusharma3@gmail.com</td>
                                    <td>santanusharma3@gmail.com</td>
                                    <td>
                                        6253                                    </td>
                                    <td>ACTIVE</td>
                                    <td class="min-w-c">
                                                                            </td>
                                </tr>
                                                    </tbody>
                    </table>
                </div>
            </div>
            <div id="list33" class="tab-pane">
                <!--  Pending Wallet Amount -->
                <div class="mb-md">
                    <table class="table table-bordered table-hover table-condensed mb-none table-export">
                        <thead>
                            <tr>
                                <th width="50">Sl</th>
                                <th>Amount</th>
                                <th>Payment Type</th>
                                <th>Schreen Short</th>
                                <th>Status</th>
                                                            </tr>
                        </thead>
                        <tbody>
                                                    </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-pane active" id="create">
               
                
                <div class="row">
                    <div class="col-md-6">
                        
                             <div>  
                        <div class="form-group mt-md">
                            <label class="col-md-5 control-label">Payment Method <span class="required">*</span></label>
                            <div class="col-md-7"> 
                                <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control">
                                    <asp:ListItem>-CHOOSE-</asp:ListItem>
                                    <asp:ListItem>Scaner</asp:ListItem>
                                    <asp:ListItem>PhonPay</asp:ListItem>
                                </asp:DropDownList>
                                </div>
                                <span class="error"></span>
                            </div>
                       </div>
                        <div class="form-group mt-md">
                            <label class="col-md-3 control-label">Amount <span class="required">*</span></label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="amount" value="" required="">
                                <span class="error"></span>
                            </div>
                        </div>
                        <div class="form-group mt-md">
                            <label class="col-md-5 control-label">Screenshot <span class="required">*</span></label>
                            <div class="col-md-7">
                                <input type="file" class="form-control" name="sshort" value="" required="">
                                <span class="error"></span>
                            </div>
                        </div>
                        <footer class="panel-footer mt-lg">
                            <div class="row">
                                <div class="col-md-2 col-md-offset-3">
                                    <button type="submit" class="btn btn-default btn-block" name="submit" value="save">
                                        <i class="fas fa-plus-circle"></i> Save                                    </button>
                                </div>
                            </div>
                        </footer>
                        </form>                    </div>
                                
                   
                                    </div>
            </div>
            
            
            <script>
                function getInfo(id) {
                    $.ajax({
                        type: "POST",
                        url: "/custom/getPaymentInfo.php",
                        data: "id="+id,
                        success: function(res){ 
                            $("#itispaymentinfo").html(``+res); 
                        }
                    });
                }
            </script>
            
            <!--  payment setting -->
            <div class="tab-pane " id="createp">
                <form action="https://crm-admin.gstfirstcenter.com/branch/manageWallet" class="form-horizontal form-bordered validate" enctype="multipart/form-data" method="post" accept-charset="utf-8">
                                                                                                                         <input type="hidden" name="school_csrf_name" value="69e0bae688dd61451e50c0f2a0845121">
                <div class="form-group mt-md">
                    <label class="col-md-3 control-label">Mobile Number <span class="required">*</span></label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="amount" value="" required="">
                        <span class="error"></span>
                    </div>
                </div>
                <div class="form-group mt-md">
                    <label class="col-md-3 control-label">Payment Type <span class="required">*</span></label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="ptype" value="" required="">
                        <span class="error"></span>
                    </div>
                </div>
                <div class="form-group mt-md">
                    <label class="col-md-3 control-label">QR CODE <span class="required">*</span></label>
                    <div class="col-md-6">
                        <input type="file" class="form-control" name="sshort" value="" required="">
                        <span class="error"></span>
                    </div>
                </div>
                <footer class="panel-footer mt-lg">
                    <div class="row">
                        <div class="col-md-2 col-md-offset-3">
                            <button type="submit" class="btn btn-default btn-block" name="submit" value="save">
                                <i class="fas fa-plus-circle"></i> Save                            </button>
                        </div>
                    </div>
                </footer>
                </form>            </div>
            <div id="createpp" class="tab-pane ">
                <!--  Pending Wallet Amount -->
                <div class="mb-md">
                    <table class="table table-bordered table-hover table-condensed mb-none table-export">
                        <thead>
                            <tr>
                                <th width="50">Sl</th>
                                <th>Mobile Number</th>
                                <th>Payment Type</th>
                                <th>QR CODE</th>
                                <th>Status</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                                                            <tr>
                                    <td>1</td>
                                    <td>8882946926</td>
                                    <td>Scaner</td>
                                    <td>
                                        <img src="/uploads/app_image/11.WhatsApp Image 2022-09-27 at 3.58.33 PM.jpeg" width="300">
                                    </td>
                                    <td>
                                        Active
                                    </td>
                                    <td><a href="https://crm-admin.gstfirstcenter.com/branch/delete_data_payment/11" class="btn btn-danger icon btn-circle" onclick="return confirm('Are you sure ?')">
                                            <i class="fas fa-trash-alt"></i>
                                        </a> </td>
                                </tr>
                                                            <tr>
                                    <td>2</td>
                                    <td>8882946926</td>
                                    <td>Phonepe</td>
                                    <td>
                                        <img src="/uploads/app_image/12.WhatsApp Image 2022-09-27 at 3.58.33 PM.jpeg" width="300">
                                    </td>
                                    <td>
                                        Active
                                    </td>
                                    <td><a href="https://crm-admin.gstfirstcenter.com/branch/delete_data_payment/12" class="btn btn-danger icon btn-circle" onclick="return confirm('Are you sure ?')">
                                            <i class="fas fa-trash-alt"></i>
                                        </a> </td>
                                </tr>
                                                    </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
         </form>
</asp:Content>