using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ELibrary
{
  public partial class Koshnica : Inherited
   {
        public static SqlConnection CreateConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=USER-PC\\SEZI; initial catalog =BooksDBSQL; integrated Security=True; Pooling=false";
            return conn;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIztrivane_Click(object sender, EventArgs e)
        {
            
            foreach (DataListItem li in DataList1.Items)
            {
              CheckBox s= (CheckBox)li.FindControl("CheckBox1");
                if (s.Checked == true)
                {
                    SqlConnection connection = CreateConnection();
                    using (connection)
                    {
                        SqlCommand myCommand = new SqlCommand("sp_DeleteBooks", connection);
                        myCommand.CommandType = CommandType.StoredProcedure;
                        myCommand.CommandText = "sp_DeleteBooks";

                        SqlParameter BookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                        BookID.Value = ((Label)li.FindControl("BookIDLabel")).Text;
                        myCommand.Parameters.Add(BookID);

                        SqlParameter countBooks = new SqlParameter("@s_id", SqlDbType.Int);
                        countBooks.Direction = ParameterDirection.Output;
                        myCommand.Parameters.Add(countBooks);

                        try
                        {
                            connection.Open();
                            SqlDataReader dr = myCommand.ExecuteReader();
                            int res = (Int32)myCommand.Parameters["@s_id"].Value;


                        }
                        catch (Exception ex) { }
                    }
                }
            }
            DataList1.DataBind();
        }

        protected void lnkbtnEPay_Click(object sender, EventArgs e)
        {
           // Response.Redirect();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

     
    }

}