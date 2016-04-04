<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function showtxtvalue1()
        {
            document.getElementById('<%= txt1.ClientID %>').value = document.getElementById('<%= button1.ClientID %>').value;
            return false;
        }
        function showtxtvalue2() {
            document.getElementById('<%= txt1.ClientID %>').value = document.getElementById('<%= button2.ClientID %>').value;
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
    </div>
    <div>
        <br />
        <table>
            <tr>
                <td>
                    <asp:Button ID="button1" runat="server" Text="Button1" OnClientClick="return showtxtvalue1();"/>
                </td>
                <td>
                    <asp:Button ID="button2" runat="server" Text="Button2" OnClientClick="return showtxtvalue2();"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

