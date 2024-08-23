using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class loginuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (dv != null)
            {
                DataTable dt = dv.Table;

                if (dt.Rows.Count != 0)
                {

                    lblError.Visible = false;
                    Response.Redirect("user.aspx");

                }
                else
                {
                    // Muestra un mensaje de error indicando que el usuario o la contraseña son incorrectos
                    lblError.Visible = true;
                    lblError.Text = "Usuario o contraseña incorrectos.";
                }
            }
            else
            {
                // Maneja el caso donde el DataView es nulo
                lblError.Visible = true;
                lblError.Text = "Error al acceder a la base de datos.";
            }
        }
        catch (Exception ex)
        {
            // Maneja cualquier otra excepción que pueda ocurrir
            lblError.Visible = true;
            lblError.Text = "Ocurrió un error: " + ex.Message;
        }
    }
}