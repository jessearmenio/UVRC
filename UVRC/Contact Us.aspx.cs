using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UVRC
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncontact_Click(object sender, EventArgs e)
        {
            Validate();
            lblcontactus.Text = "Thank you for your Interest in UVRC. We will respond to you within 1-2 Business Days";
        }
    }
}