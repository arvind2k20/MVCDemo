<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
   <div>
       <asp:GridView ID="grdresources" runat="server" AutoGenerateColumns="False" DataKeyNames="ResourceID,ContactID,SiteID" OnRowCancelingEdit="grdresources_RowCancelingEdit" 
           OnRowEditing="grdresources_RowEditing" OnRowUpdating="grdresources_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
           <Columns>
              <asp:BoundField DataField="First_Name" HeaderText="Resource FirstName" />            
               <asp:BoundField DataField="SurName" HeaderText="Resource Surename" />            
               <asp:BoundField DataField="Address1" HeaderText="Resource Address1" />            
               <asp:BoundField DataField="Address2" HeaderText="Resource Address2" />            
               <asp:BoundField DataField="Address3" HeaderText="Resource Address3" />     
               <asp:BoundField DataField="PhoneNumber" HeaderText="Resource PhoneNumber" />                   
            <asp:CommandField ShowEditButton="true" />  
            <%--<asp:CommandField ShowDeleteButton="true" />--%>
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
   </div>
</asp:Content>


