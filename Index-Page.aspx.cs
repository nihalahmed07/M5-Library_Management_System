using System;
using System.Web.UI;
using System.Web.UI.WebControls; // ✅ Add this namespace for Label control

public partial class Index_Page : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetLibraryTimings();
        }
    }

    private void SetLibraryTimings()
    {
        // Set opening and closing times dynamically
        string openingTime = "9:00 AM";
        string closingTime = "3:00 PM";

        // Find the controls on the page and update their text
        Label lblOpenTime = (Label)FindControl("lblOpenTime");
        Label lblCloseTime = (Label)FindControl("lblCloseTime");

        if (lblOpenTime != null)
        {
            lblOpenTime.Text = openingTime;
        }

        if (lblCloseTime != null)
        {
            lblCloseTime.Text = closingTime;
        }
    }
    protected void btnViewBooks_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookSearch.aspx"); // Redirect to Book Search Page
    }

}
