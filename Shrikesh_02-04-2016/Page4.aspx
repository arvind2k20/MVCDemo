<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page4.aspx.cs" Inherits="Page4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">

        function emptyvalidate()
        {
            if (document.getElementById('<%= txtno.ClientID %>').value == "")
            {
                alert('Please Enter No.');
                document.getElementById('<%= txtno.ClientID %>').focus(); 
                return false;
            }
        }

        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <table>
        <tr>
            <td>Enter A number
            </td>
            <td>
                <asp:TextBox ID="txtno" runat="server" onkeypress="return isNumber(event)"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnclickfactor" runat="server" Text="Calculate Factor" OnClick="btnclickfactor_Click" OnClientClick="return emptyvalidate()"/>
            </td>
        </tr>
        <tr>
            <td>Result
            </td>
            <td>
                <asp:TextBox ID="txtresult" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        </table>        
    </div>
</asp:Content>

