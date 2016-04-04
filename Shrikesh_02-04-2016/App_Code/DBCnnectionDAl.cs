using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBCnnectionDAl
/// </summary>
public class DBCnnectionDAl
{
    SqlConnection dbConn;
    SqlCommand cmd;
    SqlDataAdapter adap;
    DataTable dt;
	public DBCnnectionDAl()
	{
        dbConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DemoDBConnectionString"].ConnectionString);

        

	}

    public DataTable GetResourceInfo(int siteid=0)
    {
        dt = new DataTable();
        dbConn.Open();
        cmd = new SqlCommand();
        cmd.Connection = dbConn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SP_Getresources";
        cmd.Parameters.Add("@SiteID", SqlDbType.Int).Value = siteid;
        adap = new SqlDataAdapter(cmd);
        adap.Fill(dt);
        return dt;
        
    }

    public DataTable GetJobsInfo()
    {
        dt = new DataTable();
        dbConn.Open();
        cmd = new SqlCommand();
        cmd.Connection = dbConn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SP_GetJobs";        
        adap = new SqlDataAdapter(cmd);
        adap.Fill(dt);
        return dt;

    }

    public int UpdateResource_Contact(Resource_Information resources,Contact_Details contacts)
    {  

        dbConn.Open();
        cmd = new SqlCommand();
        cmd.Connection = dbConn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SP_UPDResources";
        cmd.Parameters.Add("@ResourceID", SqlDbType.Int).Value = resources.ResourceID;
        cmd.Parameters.Add("@ContactID", SqlDbType.Int).Value = contacts.ContactID;
        //cmd.Parameters.Add("@SiteID", SqlDbType.Int).Value = 0;


        cmd.Parameters.Add("@Resource_FirstName", SqlDbType.VarChar).Value = resources.First_Name;
        cmd.Parameters.Add("@Resource_Surename", SqlDbType.VarChar).Value = resources.SurName;
        cmd.Parameters.Add("@Resource_Address1", SqlDbType.VarChar).Value = contacts.Address1;
        cmd.Parameters.Add("@Resource_Address2", SqlDbType.VarChar).Value = contacts.Address2;
        cmd.Parameters.Add("@Resource_Address3", SqlDbType.VarChar).Value = contacts.Address3;
        cmd.Parameters.Add("@Resource_PhoneNumber", SqlDbType.VarChar).Value = contacts.PhoneNumber;
        return cmd.ExecuteNonQuery();

    }

    public int InsertJOBS_Info(ArrayList arrayitems)
    {

        dbConn.Open();
        cmd = new SqlCommand();
        cmd.Connection = dbConn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SP_InsertJobs";
        cmd.Parameters.Add("@Position", SqlDbType.VarChar).Value = arrayitems[0].ToString();
        cmd.Parameters.Add("@Asset", SqlDbType.VarChar).Value = arrayitems[1].ToString();
        cmd.Parameters.Add("@Work_Order", SqlDbType.VarChar).Value = arrayitems[2].ToString();
        cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = arrayitems[3].ToString();
        cmd.Parameters.Add("@Sub_Assembly", SqlDbType.VarChar).Value = arrayitems[4].ToString();
        cmd.Parameters.Add("@Task", SqlDbType.VarChar).Value = arrayitems[5].ToString();
        cmd.Parameters.Add("@Task_Title", SqlDbType.VarChar).Value = arrayitems[6].ToString();
        cmd.Parameters.Add("@Priority_Level", SqlDbType.VarChar).Value = arrayitems[7].ToString();        
        return cmd.ExecuteNonQuery();

    }
}
