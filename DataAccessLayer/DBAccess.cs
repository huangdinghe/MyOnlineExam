using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
   public class DBAccess
    {
        private static IDataBase database = null;
        private DBAccess() { }
        private static object sysRoot = true;
        public static IDataBase CreateDb(DbType dbType = DbType.SqlServer)
        {

            if (database != null)
                return database;

            {
                lock (sysRoot)
                {
                    if (database != null)
                        return database;
                    switch (dbType)
                    {
                        case DbType.SqlServer:
                            database = new SqlDataBase();
                            break;
                        case DbType.Oracle:
                            database = new OracleDataBase();
                            break;
                    }

                }
            }
            // IDataBase database = null; 
            return database;
        }
    }
}
