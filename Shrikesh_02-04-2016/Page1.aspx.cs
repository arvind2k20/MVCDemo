using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Page1 : System.Web.UI.Page
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
        DataTable dt = new DataTable();
        dt = objsqlconnection.GetResourceInfo(0);
        grdresources.DataSource = dt;
        grdresources.DataBind();
    }

    protected void grdresources_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdresources.EditIndex = e.NewEditIndex;
        bindgrid();
    }
    protected void grdresources_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int userid = Convert.ToInt32(grdresources.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)grdresources.Rows[e.RowIndex];
        TextBox textFName = (TextBox)row.Cells[0].Controls[0];
        TextBox textSurName = (TextBox)row.Cells[1].Controls[0];
        TextBox textAddress1 = (TextBox)row.Cells[2].Controls[0];
        TextBox textAddress2 = (TextBox)row.Cells[3].Controls[0];
        TextBox textAddress3 = (TextBox)row.Cells[4].Controls[0];
        TextBox textPhno = (TextBox)row.Cells[5].Controls[0];

        objsqlconnection = new DBCnnectionDAl();

        Resource_Information objresourcebal = new Resource_Information();
        Contact_Details objcontactbal = new Contact_Details();

        objresourcebal.ResourceID =Convert.ToInt32(grdresources.DataKeys[e.RowIndex].Values["ResourceID"].ToString());
        objresourcebal.First_Name = textFName.Text;
        objresourcebal.SurName = textSurName.Text;

        objcontactbal.ContactID = Convert.ToInt32(grdresources.DataKeys[e.RowIndex].Values["ContactID"].ToString());
        objcontactbal.Address1 = textAddress1.Text;
        objcontactbal.Address2 = textAddress2.Text;
        objcontactbal.Address3 = textAddress3.Text;
        objcontactbal.PhoneNumber = textPhno.Text;

        objsqlconnection = new DBCnnectionDAl();
        objsqlconnection.UpdateResource_Contact(objresourcebal, objcontactbal);

        grdresources.EditIndex = -1;
        bindgrid();
    }

    protected void grdresources_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdresources.EditIndex = -1;
        bindgrid();
    }

}