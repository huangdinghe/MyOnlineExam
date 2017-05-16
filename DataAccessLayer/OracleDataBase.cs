using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
   public class OracleDataBase:IDataBase

    {
        void IDataBase.Open()
        {
            throw new NotImplementedException();
        }

        void IDataBase.Close()
        {
            throw new NotImplementedException();
        }

        void IDataBase.Dispose()
        {
            throw new NotImplementedException();
        }

        bool IDataBase.GetRecord(string XSqlString)
        {
            throw new NotImplementedException();
        }

        int IDataBase.GetRecordCount(string XSqlString)
        {
            throw new NotImplementedException();
        }

        string IDataBase.GetString(string SqlString)
        {
            throw new NotImplementedException();
        }

        System.Data.Common.DbCommand IDataBase.CreateCommand(string ProcName, System.Data.IDataParameter[] Prams)
        {
            throw new NotImplementedException();
        }

        System.Data.IDataParameter IDataBase.MakeParam(string ParamName, System.Data.SqlDbType DbType, int Size, System.Data.ParameterDirection Direction, object Value)
        {
            throw new NotImplementedException();
        }

        System.Data.IDataParameter IDataBase.MakeInParam(string ParamName, System.Data.SqlDbType DbType, int Size, object Value)
        {
            throw new NotImplementedException();
        }

        int IDataBase.RunProc(string ProcName)
        {
            throw new NotImplementedException();
        }

        int IDataBase.RunProc(string ProcName, System.Data.IDataParameter[] Params)
        {
            throw new NotImplementedException();
        }

        System.Data.IDataReader IDataBase.RunProcGetReader(string ProcName)
        {
            throw new NotImplementedException();
        }

        System.Data.IDataReader IDataBase.RunProcGetReader(string ProcName, System.Data.IDataParameter[] Params)
        {
            throw new NotImplementedException();
        }

        int IDataBase.RunProcGetCount(string ProcName, System.Data.IDataParameter[] Params)
        {
            throw new NotImplementedException();
        }

        System.Data.DataSet IDataBase.GetDataSet(string ProcName)
        {
            throw new NotImplementedException();
        }

        System.Data.DataSet IDataBase.GetDataSet(string ProcName, System.Data.IDataParameter[] Params)
        {
            throw new NotImplementedException();
        }

        System.Data.DataSet IDataBase.GetDataSetSql(string XSqlString)
        {
            throw new NotImplementedException();
        }

        int IDataBase.Insert(string XSqlString)
        {
            throw new NotImplementedException();
        }

        int IDataBase.GetIDInsert(string XSqlString)
        {
            throw new NotImplementedException();
        }
    }
}
