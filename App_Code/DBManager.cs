using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class DBManager
    {
        SqlConnection con;
        SqlCommand cmd;
        public string CommandText;
        public DBManager()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ToString());
        }
        public Object GetSingleValue()
        {
            cmd = new SqlCommand(CommandText, con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            object value = cmd.ExecuteScalar();
            con.Close();
            return value;
        }
        public bool ExecuteInsertUpdateOrDelete()
        {
            cmd = new SqlCommand(CommandText, con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            int n = cmd.ExecuteNonQuery();
            con.Close();
            return n > 0 ? true : false;
        }
        public DataTable GetBulkData()
        {
            SqlDataAdapter da = new SqlDataAdapter(CommandText, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public SqlCommand GetSqlCommand()
        {
            cmd = new SqlCommand(CommandText, con);
            return cmd;
        }
        public SqlConnection GetSqlConnection()
        {
            return con;
        }
    }
