using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace UVRC
{
    public partial class SIgn_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlsignup.Visible = false;
            pnllogin.Visible = true;
            pnlupdate.Visible = false;
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //Take the changes from the textboxes and update the record.
            //If successful, clear the fields.


            string strConnn = ConfigurationManager.ConnectionStrings["S20_ksjarmeniConnectionString"].ConnectionString;



            //Use the "using" statement so it closes our db connection for us.
            using (SqlConnection sqlConn = new SqlConnection(strConnn))
            {
                //use the sqlcommand to format our paramters and then call our 
                //update stored procedure
                SqlCommand InsertCmd = new SqlCommand("spInsertUser", sqlConn);
                InsertCmd.CommandType = CommandType.StoredProcedure;

                //Now we are ready to format Insert parameters to pass to the stored procedure.
                InsertCmd.Parameters.AddWithValue("@FirstName", TboxFirstName.Text);
                InsertCmd.Parameters.AddWithValue("@LastName", TboxLastName.Text);
                InsertCmd.Parameters.AddWithValue("@PhoneNumber", TboxNumber.Text);
                InsertCmd.Parameters.AddWithValue("@EmailAddress", TboxEmail.Text);
                InsertCmd.Parameters.AddWithValue("@Birthday", Tboxbirthday.Text);
                InsertCmd.Parameters.AddWithValue("@MailingAddress", TboxAddress.Text);
                InsertCmd.Parameters.AddWithValue("@MailingAddress2", TboxAddressTwo.Text);
                InsertCmd.Parameters.AddWithValue("@City", TboxCity.Text);
                InsertCmd.Parameters.AddWithValue("@StateID", ddlstate.SelectedValue);
                InsertCmd.Parameters.AddWithValue("@ZipCode", TboxZip.Text);
                InsertCmd.Parameters.AddWithValue("@OccupationID", ddloccupation.SelectedValue);
                InsertCmd.Parameters.AddWithValue("@AdminQuestion", cbadmin.Checked);
                InsertCmd.Parameters.AddWithValue("@ShortUser", TboxNewUser.Text);
                InsertCmd.Parameters.AddWithValue("@UserPassword", TboxNewPassword.Text);


                SqlParameter UserIDout = new SqlParameter();
                UserIDout.ParameterName = "@UserID";
                UserIDout.SqlDbType = SqlDbType.Int;
                UserIDout.Direction = ParameterDirection.Output;
                InsertCmd.Parameters.Add(UserIDout);

                //use the try/catch to execute to the database.
                try
                {
                    //Open database
                    sqlConn.Open();

                    InsertCmd.ExecuteNonQuery();

                    //Display a successful message.
                    lblcompletesignup.Text = "Account Created";
                    pnllogin.Visible = true;
                    pnlsignup.Visible = false;
                    pnlupdate.Visible = false;
                    //Clear fields and reset the dropdownlists.

                    TboxFirstName.Text = "";
                    TboxLastName.Text = "";
                    TboxNumber.Text = "";
                    TboxEmail.Text = "";
                    Tboxbirthday.Text = "";
                    TboxAddress.Text = "";
                    TboxAddressTwo.Text = "";
                    TboxCity.Text = "";
                    ddlstate.SelectedValue = "1";
                    TboxZip.Text = "";
                    ddloccupation.SelectedValue = "1";
                    cbadmin.Checked = false;
                    TboxNewUser.Text = "";
                    TboxNewPassword.Text = "";








                }
                catch (Exception exc)
                {
                    lblerror.Text = "A database error occured: " + exc.Message;


                }

            }





        }
        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            //Take the changes from the textboxes and update the record.
            //If successful, clear the fields.


            string strConnn = ConfigurationManager.ConnectionStrings["S20_ksjarmeniConnectionString"].ConnectionString;



            //Use the "using" statement so it closes our db connection for us.
            using (SqlConnection sqlConn = new SqlConnection(strConnn))
            {
                //use the sqlcommand to format our paramters and then call our 
                //update stored procedure

                SqlDataAdapter sqlda = new SqlDataAdapter("spverifylogin", sqlConn);
                sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;


                //Format login
                SqlParameter UsernameInput = new SqlParameter("@emailaddress", TboxLoginUser.Text);
                UsernameInput.Direction = ParameterDirection.Input;
                UsernameInput.DbType = DbType.String;
                sqlda.SelectCommand.Parameters.Add(UsernameInput);

                SqlParameter PasswordInput = new SqlParameter("@password", TboxLoginPassword.Text);
                PasswordInput.Direction = ParameterDirection.Input;
                PasswordInput.DbType = DbType.String;
                sqlda.SelectCommand.Parameters.Add(PasswordInput);

                

                try
                {
                    DataSet UserLogin = new DataSet();
                    sqlda.Fill(UserLogin);
                    if (UserLogin.Tables[0].Rows.Count>0)
                    {

                        Session["UserID"] = UserLogin.Tables[0].Rows[0]["UserID"].ToString();
                        tboxfirstnameupdate.Text = UserLogin.Tables[0].Rows[0]["FirstName"].ToString();
                        tboxlastnameupdate.Text = UserLogin.Tables[0].Rows[0]["LastName"].ToString();
                        tboxphoneupdate.Text = UserLogin.Tables[0].Rows[0]["PhoneNumber"].ToString();
                        tboxemailaddressupdate.Text = UserLogin.Tables[0].Rows[0]["EmailAddress"].ToString();
                        tboxbirthdayupdate.Text = UserLogin.Tables[0].Rows[0]["Birthday"].ToString();
                        tboxaddressupdate.Text = UserLogin.Tables[0].Rows[0]["MailingAddress"].ToString();
                        tboxaddress2update.Text = UserLogin.Tables[0].Rows[0]["MailingAddress2"].ToString();
                        Tboxcityupdate.Text = UserLogin.Tables[0].Rows[0]["City"].ToString();
                        ddlstateupdate.SelectedValue = UserLogin.Tables[0].Rows[0]["StateID"].ToString();
                        tboxzipupdate.Text = UserLogin.Tables[0].Rows[0]["Zipcode"].ToString();
                        ddloccupation2.SelectedValue = UserLogin.Tables[0].Rows[0]["OccupationID"].ToString();
                        tboxshortuserupdate.Text = UserLogin.Tables[0].Rows[0]["ShortUser"].ToString();
                        tboxpasswordupdate.Text = UserLogin.Tables[0].Rows[0]["UserPassword"].ToString();

                           
                    }

                    //Display a successful message for update/login
                    lblcompletesignup.Text = "User has logged in.";
                    pnllogin.Visible = false;
                    pnlupdate.Visible = true;
                    pnlsignup.Visible = false;
                    pnlupdateconfirm.Visible = false;

                }
                catch (SqlException exc)
                {
                    if (exc.Number == 2601 || exc.Number == 2627)
                    {
                        lblerror.Text = "This Username already exists. Please try again.";

                    }
                    else
                    {
                        lblerror.Text = "A database error occured: " + exc.Message;
                    }
                }

            }







        }

        protected void btnupdateuser_Click(object sender, EventArgs e)
        {

            string strConnn = ConfigurationManager.ConnectionStrings["S20_ksjarmeniConnectionString"].ConnectionString;

            //Use the "using" statement so it closes our db connection for us.
            using (SqlConnection sqlConn = new SqlConnection(strConnn))
            {
                //use the sqlcommand to format our paramters and then call our 
                //update stored procedure
                SqlCommand UpdateCmd = new SqlCommand("spUpdateUser", sqlConn);

                //Now we are ready to format our parameters to pass to the stored procedure.
                UpdateCmd.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                UpdateCmd.Parameters.AddWithValue("@FirstName", tboxfirstnameupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@LastName", tboxlastnameupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@PhoneNumber", tboxphoneupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@EmailAddress", tboxemailaddressupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@Birthday", tboxbirthdayupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@MailingAddress", tboxaddressupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@MailingAddress2", tboxaddress2update.Text);
                UpdateCmd.Parameters.AddWithValue("@City", Tboxcityupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@State", ddlstateupdate.SelectedValue);
                UpdateCmd.Parameters.AddWithValue("@ZipCode", tboxzipupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@Occupation", ddloccupation2.SelectedValue);
                UpdateCmd.Parameters.AddWithValue("@AdminQuestion", cbadminupdate.Checked);
                UpdateCmd.Parameters.AddWithValue("@ShortUser", tboxshortuserupdate.Text);
                UpdateCmd.Parameters.AddWithValue("@UserPassword", tboxpasswordupdate.Text);

                UpdateCmd.CommandType = CommandType.StoredProcedure;


                //use the try/catch to execute to the database.
                try
                {
                    //Open database
                    sqlConn.Open();

                    UpdateCmd.ExecuteNonQuery();

                    //Display a successful update message.
                    lblupdateconfirm.Text = "Account Updated.";
                    pnllogin.Visible = true;
                    pnlupdateconfirm.Visible = true;
                    pnlupdate.Visible = true;
                    pnlsignup.Visible = false;

                    //Clear fields and reset the dropdownlists.
                    tboxfirstnameupdate.Text = "";
                    tboxlastnameupdate.Text = "";
                    tboxphoneupdate.Text = "";
                    tboxemailaddressupdate.Text = "";
                    tboxbirthdayupdate.Text = "";
                    tboxaddressupdate.Text = "";
                    tboxaddress2update.Text = "";
                    Tboxcityupdate.Text = "";
                    ddlstateupdate.SelectedValue = "1";
                    tboxzipupdate.Text = "";
                    ddloccupation2.SelectedValue = "1";
                    cbadminupdate.Checked = false;
                    tboxshortuserupdate.Text = "";
                    tboxpasswordupdate.Text = "";

                }
                catch (SqlException exc)
                {
                    if (exc.Number == 2601 || exc.Number == 2627)
                    {
                        lblerror.Text = "This Username already exists. Please try again.";

                    }
                    else
                    {
                        lblerror.Text = "A database error occured: " + exc.Message;
                    }
                }
            }
        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            pnlsignup.Visible = true;
            pnllogin.Visible = false;
            pnlupdate.Visible = false;
            pnlupdateconfirm.Visible = false;
        } 
    }
}
