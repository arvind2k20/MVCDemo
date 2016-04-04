using System;
using System.Collections.Generic;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page5 : System.Web.UI.Page
{
    DBCnnectionDAl objsqlconnection;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgrid();
        }
    }

    private void bindgrid()
    {
        objsqlconnection = new DBCnnectionDAl();
        grdjobs.DataSource = objsqlconnection.GetJobsInfo(); ;
        grdjobs.DataBind();
    }
    protected void btncreatenewjob_Click(object sender, EventArgs e)
    {
        objsqlconnection = new DBCnnectionDAl();
        ArrayList objarrayitems = new ArrayList();
        objarrayitems.Add(txtposition.Text.Trim());
        objarrayitems.Add(txtasset.Text.Trim());
        objarrayitems.Add(txtworkorder.Text.Trim());
        objarrayitems.Add(txtstatus.Text.Trim());
        objarrayitems.Add(txtsubassembly.Text.Trim());
        objarrayitems.Add(txttask.Text.Trim());
        objarrayitems.Add(txttasktitle.Text.Trim());
        objarrayitems.Add(txtprioritylevel.Text.Trim());
        objsqlconnection.InsertJOBS_Info(objarrayitems);
        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('Jobs Created Successfully.')</script>", false);
        bindgrid();

        txtposition.Text="";
        txtasset.Text="";
        txtworkorder.Text="";
        txtstatus.Text="";
        txtsubassembly.Text="";
        txttask.Text="";
        txttasktitle.Text="";
        txtprioritylevel.Text="";
    }
}