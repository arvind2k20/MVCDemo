using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Resource_Information
/// </summary>
public class Resource_Information
{
    private int _ResourceID;
    private string _First_Name;
    private string _SurName;
    private int _ContactID;
    private int _SiteID;

    public Resource_Information()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public int ResourceID
    {
        get
        {
            return _ResourceID;
        }
        set
        {
            _ResourceID = value;
        }
    }

    public string First_Name
    {
        get
        {
            return _First_Name;
        }
        set
        {
            _First_Name = value;
        }
    }

    public string SurName
    {
        get
        {
            return _SurName;
        }
        set
        {
            _SurName = value;
        }
    }

    public int ContactID
    {
        get
        {
            return _ContactID;
        }
        set
        {
            _ContactID = value;
        }
    }

    public int SiteID
    {
        get
        {
            return _SiteID;
        }
        set
        {
            _SiteID = value;
        }
    }
}