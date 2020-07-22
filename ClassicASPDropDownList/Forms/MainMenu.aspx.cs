using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassicASPDropDownList.Forms
{
    public partial class MainMenu : System.Web.UI.Page
    {
        private void LoadDataControls()
        {
            using (JeffTestEntities db = new JeffTestEntities())
            {
                var countries = from x in db.Countries orderby x.CountryName select new { x.RecId, x.CountryName };

                ddlCountries.DataSource = countries.ToList();
                ddlCountries.DataValueField = "RecId";
                ddlCountries.DataTextField = "CountryName";
                ddlCountries.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                LoadDataControls();
            }
        }

        protected void btnDisplaySelection_Click(object sender, EventArgs e)
        {
            lblMessage.Text = ddlCountries.SelectedItem.Text;
        }
    }
}