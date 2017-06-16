﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webKyrios
{
    public partial class mainPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userid = Request.Cookies["userid"];
            if (userid == null)
            {
                Response.Redirect("/index.aspx");
            }
        }
    }
}