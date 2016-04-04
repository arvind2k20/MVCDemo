using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Contact_Details
/// </summary>
public class Contact_Details
{
    private int  _ContactID;
    private string  _Address1;
    private string _Address2;
    private string _Address3;
    private string _PhoneNumber;

	public Contact_Details()
	{
		//
		// TODO: Add constructor logic here
		//
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

    public string Address1
    {
        get
        {
            return _Address1;
        }
        set
        {
            _Address1 = value;
        }
    }

    public string Address2
    {
        get
        {
            return _Address2;
        }
        set
        {
            _Address2 = value;
        }
    }

    public string Address3
    {
        get
        {
            return _Address3;
        }
        set
        {
            _Address3 = value;
        }
    }

    public string PhoneNumber
    {
        get
        {
            return _PhoneNumber;
        }
        set
        {
            _PhoneNumber = value;
        }
    }

}