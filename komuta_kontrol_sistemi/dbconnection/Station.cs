using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Data;
using System.IO;

namespace Library
{
	public class Station
	{
        string username = "root";
        string password = "05443779897Maa";
        string database = "tracking_system";
        public static string server = "127.0.0.1";

        ConnectionInfo connInfo = new ConnectionInfo();
		DataMenager dMen;
		DataSet ds = new DataSet();

		public Station()
		{
			connect();
		}

		//-------Database Connect
		public void connect()
		{
			connInfo.User_Id = username;
			connInfo.Password = password;
            connInfo.DataBase = database;
			connInfo.Server = server;
            
			dMen = new DataMenager(connInfo);
        }

		public DataTable ExecuteDatatable(string sqlSelectQuery)
		{
            UTF8Encoding utf8 = new UTF8Encoding();
            byte[] encodedBytes = utf8.GetBytes(sqlSelectQuery);
			return dMen.ExecuteDatatable(sqlSelectQuery);
		}
	}











}

