using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sessional2_57_60_69
{
    public partial class Sessional2_Q3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tb1_TextChanged(object sender, EventArgs e)
        {
            DetailsView1.DataBind();    
        }
    }
}