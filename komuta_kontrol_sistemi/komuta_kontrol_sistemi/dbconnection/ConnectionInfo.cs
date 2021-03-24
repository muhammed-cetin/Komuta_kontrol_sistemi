using System;
using System.Collections.Generic;
using System.Text;
namespace Library
{
    public class ConnectionInfo
    {
        private string user_Id;

        public string User_Id
        {
            get { return user_Id; }
            set { user_Id = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private string dataBase;

        public string DataBase
        {
            get { return dataBase; }
            set { dataBase = value; }
        }
        private string server;

        public string Server
        {
            get { return server; }
            set { server = value; }
        }
    }
}
