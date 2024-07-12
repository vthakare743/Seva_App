<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="DemoPopup.aspx.cs" Inherits="User_DemoPopup" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <style type="text/css">
  .modalPopup
  {
            background-color: #FFFFFF;
            width: 600px;
            border: 3px solid #0DA9D0;
            height: 450px;
          text-align: center;
    border-radius: 5px;
    position: static;
    margin: 20px auto;
    display: inline-block;
    vertical-align: middle;
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
   
   
        <p>
            <br />
        </p>
        <p>
            Model&nbsp;&nbsp; Popup&nbsp; Message
        </p>
        <p>
      
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#0033CC" Font-Bold="True" Font-Italic="True" ForeColor="White" Height="35px" Text="Submite" Width="114px" OnClick="Button1_Click" />
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblpopup" runat="server" Text="Label"></asp:Label>
            &nbsp;</p>
        
        
       <%--<asp:ModalPopupExtender ID="ModalPopupExtender1"mpe" PopupControlID="Panel1" targetControlID="lblpopup“ CancelControlID="btnclose" runat="server"></asp:Modal>--%>
        
        <asp:ModalPopupExtender ID="mpe" PopupControlID="Panel1"  TargetControlID="lblpopup" PopupDragHandleControlID="headerdiv" CancelControlID="btnclose" runat="server"></asp:ModalPopupExtender>
        
        <asp:Panel ID="Panel1"  Cssclass="modalPopup"  runat="server">
            <div id ="headerdiv" class="header" >
                <asp:Image ID="Image11" runat="server" ImageUrl="~/User/Document/user_photo/user_photo_17.jpg" />
            </div>
            <div id ="divdetails"></div>
            <div id="footerdiv" class="footer">
                <asp:Button ID="btnclose" runat="server"  Text="X" /></div>
         </asp:Panel>
            
    </form>

   

</asp:Content>

