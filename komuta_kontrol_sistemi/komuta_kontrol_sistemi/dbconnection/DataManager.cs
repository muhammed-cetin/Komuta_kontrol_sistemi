using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Library;
using System.IO;
using MySql.Data.MySqlClient;

namespace Data
{
    public class DataMenager //: Data.IDataMenager
    {

        MySqlConnection Connection = new MySqlConnection();
        MySqlConnectionStringBuilder builder = new MySqlConnectionStringBuilder();
        MySqlCommand command = new MySqlCommand();
        DataTable dtListe;
        MySqlDataAdapter adapter = new MySqlDataAdapter();
        MySqlTransaction transaction;

        public DataMenager(ConnectionInfo info)
        {
            Connect(info.User_Id, info.Password, info.DataBase, info.Server);
        }
        public void BeginTransaction()
        {
            OpenConnection();
            transaction = Connection.BeginTransaction();
            command.Transaction = transaction;
        }
        public void Commit()
        {
            transaction.Commit();
            CloseConnection();
        }
        public void Rolback()
        {
            transaction.Rollback();
            CloseConnection();
        }
        public void Connect(string User_Id,
                             string Password,
                             string DataBase,
                             string Server)
        {

            builder.UserID = User_Id;
            builder.Password = Password;
            builder.Database = DataBase;
            builder.Server = Server;
            Connection.ConnectionString = builder.ToString() + ";convert zero datetime=True";
        }
        public DataTable ExecuteDatatable(string sqlSelectQuery)
        {
            dtListe = new DataTable();
            command.CommandTimeout = 360;
            command.Connection = Connection;
            command.CommandText = sqlSelectQuery;
            if (transaction == null)
            {
                OpenConnection();
                adapter.SelectCommand = command;
                adapter.Fill(dtListe);
                CloseConnection();
            }
            else
            {
                OpenConnection();
                adapter.SelectCommand = command;
                adapter.Fill(dtListe);
            }
            return dtListe;
        }
        public int ExecuteSql(string prmQuery)
        {
            int update_count = 0;
            command.Connection = Connection;
            command.CommandText = prmQuery;
            if (transaction == null)
            {
                OpenConnection();
                update_count = command.ExecuteNonQuery();
                CloseConnection();
            }
            else
            {
                OpenConnection();
                update_count = command.ExecuteNonQuery();

            }
            return update_count;
        }
        public void OpenConnection()
        {
            if (Connection.State == ConnectionState.Closed)
            {
                Connection.Open();
            }
        }
        public void CloseConnection()
        {
            if (Connection.State == ConnectionState.Open)
            {
                Connection.Close();
            }
        }
    }
}
