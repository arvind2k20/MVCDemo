<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page5.aspx.cs" Inherits="Page5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function validatecontrols()
        {
            if (document.getElementById('<%= txtposition.ClientID %>').value == "")
            {
                alert('Please Enter Position');
                document.getElementById('<%= txtposition.ClientID %>').focus();
                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table>
            <tr>
                <td>Position
                </td>
                <td>
                    <asp:TextBox ID="txtposition" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Asset
                </td>
                <td>
                    <asp:TextBox ID="txtasset" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Work Order
                </td>
                <td>
                    <asp:TextBox ID="txtworkorder" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Status
                </td>
                <td>
                    <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Sub Assembly
                </td>
                <td>
                    <asp:TextBox ID="txtsubassembly" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Task
                </td>
                <td>
                    <asp:TextBox ID="txttask" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Task Title
                </td>
                <td>
                    <asp:TextBox ID="txttasktitle" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Priority Level
                </td>
                <td>
                    <asp:TextBox ID="txtprioritylevel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
                <td>
                    <asp:Button ID="btncreatenewjob" runat="server" Text="Create New Job" OnClick="btncreatenewjob_Click" OnClientClick="return validatecontrols()"/>
                </td>

            </tr>
        </table>
        <hr />
        <asp:GridView ID="grdjobs" runat="server" Caption="Jobs Details" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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

