using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnclickfactor_Click(object sender, EventArgs e)
    {

        txtresult.Text = GetFactorvalue(Convert.ToInt32(txtno.Text)).ToString();
    }

    private Int32 GetFactorvalue(int number)
    {  
        if (number == 0)
        {
            return 1;
        }
        else
        {
            return number*GetFactorvalue(number - 1);
        }
    }

}