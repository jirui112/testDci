using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DciTest
{
    public partial class MenTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //页面加载
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static string Test1()
        {
            string kks = "";
            for (int i = 1;i<20;i++)
            {
                string ui = "";
                if (i!=1)
                {
                     ui = string.Format("<ul class=\"list-unstyled components\">\r\n      <li class=\"active\">\r\n        <a class=\"btn\" href=\"#homeSubmenu{0}\" data-toggle=\"collapse\" aria-expanded=\"false\">heihei</a>\r\n        <ul class=\"collapse list-unstyled\" id=\"homeSubmenu{0}\">\r\n          <li><a href=\"#\">Home {0}</a></li>\r\n          <li><a href=\"#\">Home {0}</a></li>\r\n          <li><a href=\"#\">Home {0}</a></li>\r\n        </ul>\r\n      </li>\r\n    </ul>", i);
                }
                else
                {
                     ui = string.Format("<ul class=\"list-unstyled components\">\r\n      <li class=\"active\">\r\n        <a class=\"btn\" href=\"#homeSubmenu{0}\" id='kks' data-toggle=\"collapse\" aria-expanded=\"false\">heihei</a>\r\n        <ul class=\"collapse list-unstyled\" id=\"homeSubmenu{0}\">\r\n          <li><a href=\"#\">Home {0}</a></li>\r\n          <li><a href=\"#\">Home {0}</a></li>\r\n          <li><a href=\"#\">Home {0}</a></li>\r\n        </ul>\r\n      </li>\r\n    </ul>", i);
                }
                kks += ui;
            }
            
            return kks;
        }
    }
}