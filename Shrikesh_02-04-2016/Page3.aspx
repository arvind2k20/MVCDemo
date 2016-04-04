<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page3.aspx.cs" Inherits="Page3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function visibilityposition() {
           
            document.getElementById('<%= tdassdesc.ClientID %>').style.visibility = "hidden";           
            document.getElementById('<%= txtassetdesc.ClientID %>').style.visibility = "hidden";           

            document.getElementById('<%= tdposition.ClientID %>').style.visibility = "hidden";
            document.getElementById('<%= txtposition.ClientID %>').style.visibility = "hidden";           
            
            document.getElementById('<%= tdgroup.ClientID %>').style.visibility = "hidden";
            document.getElementById('<%= txtgroup.ClientID %>').style.visibility = "hidden"
            
            document.getElementById('<%= tdassetfmea.ClientID %>').style.visibility = "hidden";
            document.getElementById('<%= txtfmea.ClientID %>').style.visibility = "hidden"

            document.getElementById('<%= tdoriginalref.ClientID %>').style.visibility = "hidden";
            document.getElementById('<%= txtOriginatingRef.ClientID %>').style.visibility = "hidden"

            return true;
        }

        function visibilityasset() {
            document.getElementById('<%= tdassdesc.ClientID %>').style.visibility = "visible";
            document.getElementById('<%= txtassetdesc.ClientID %>').style.visibility = "visible";

            document.getElementById('<%= tdposition.ClientID %>').style.visibility = "visible";
            document.getElementById('<%= txtposition.ClientID %>').style.visibility = "visible";

            document.getElementById('<%= tdgroup.ClientID %>').style.visibility = "visible";
            document.getElementById('<%= txtgroup.ClientID %>').style.visibility = "visible"

            document.getElementById('<%= tdassetfmea.ClientID %>').style.visibility = "visible";
            document.getElementById('<%= txtfmea.ClientID %>').style.visibility = "visible"

            document.getElementById('<%= tdoriginalref.ClientID %>').style.visibility = "visible";
            document.getElementById('<%= txtOriginatingRef.ClientID %>').style.visibility = "visible"
            return true
        }
</script>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:RadioButton ID="rdbposition" runat="server" Text="Position" GroupName="group1" onclick = "return visibilityposition()" />
                </td>
                <td colspan="3">
                    <asp:TextBox ID="rdbtxtposition" runat="server" Width="450"></asp:TextBox>
                </td> 
            </tr>
            <tr>
                <td>
                     <asp:RadioButton ID="rdbasset" runat="server" Text="Asset" GroupName="group1" onclick = "return visibilityasset()"/>
                </td>
                <td>
                    <asp:TextBox ID="txtasset" runat="server"></asp:TextBox>
                </td> 
                <td id="tdassdesc" runat="server">
                    Asset Description
                </td>
                <td>
                    <asp:TextBox ID="txtassetdesc" runat="server"></asp:TextBox>
                </td>
            </tr>

             <tr>
                 <td>
                    Work Order
                 </td>
                <td>                    
                    <asp:TextBox ID="txtworkorder" runat="server"></asp:TextBox>
                </td> 
                <td id="tdposition" runat="server">
                    Position
                </td>
                <td>
                    <asp:TextBox ID="txtposition" runat="server"></asp:TextBox>
                </td>
            </tr>

               <tr>
                   <td>
                    Date Time Created
                 </td>
                <td>                    
                    <asp:TextBox ID="txtdatetimecreated" runat="server"></asp:TextBox>
                </td> 
                <td id="tdgroup" runat="server">
                    Group
                </td>
                <td>
                    <asp:TextBox ID="txtgroup" runat="server"></asp:TextBox>
                </td>
            </tr>

               <tr>
                   <td>
                    Status
                 </td>
                <td>
                    <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
                </td> 
                <td id="tdassetfmea" runat="server">
                    Asset FMEA
                </td>
                <td>
                    <asp:TextBox ID="txtfmea" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Sub Assembly
                 </td>
                <td>
                    <asp:TextBox ID="txtsubassembly" runat="server"></asp:TextBox>
                </td> 
                <td id="tdoriginalref" runat="server">
                    Originating Ref.
                </td>
                <td>
                    <asp:TextBox ID="txtOriginatingRef" runat="server"></asp:TextBox>
                </td>
            </tr>

        </table>

        <hr />
        <table>
            <tr>
                <td>
                    Task
                </td>
                <td>
                    <asp:TextBox ID="txttask" runat="server" TextMode="MultiLine" Height="60" Width="500"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Task Title
                </td>
                <td>
                    <asp:TextBox ID="txttasktitle" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Priority Level
                </td>
                <td>
                    <asp:TextBox ID="txtproiritylevel" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>

              <tr>
                <td>
                    Work Order Type
                </td>
                <td>
                    <asp:TextBox ID="txtworkordertype" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Raised By
                </td>
                <td>
                    <asp:TextBox ID="txtraisedby" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Principal Engineer
                </td>
                <td>
                    <asp:TextBox ID="txtprincipleengi" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Syptom Code
                </td>
                <td>
                    <asp:TextBox ID="txtsymptomcode" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

