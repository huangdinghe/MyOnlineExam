using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public interface IDataBase
    {
        void Open();
        void Close();
        void Dispose();
        bool GetRecord(string XSqlString);
        int GetRecordCount(string XSqlString);
        string GetString(string SqlString);
        DbCommand CreateCommand(string ProcName, IDataParameter[] Prams);
        IDataParameter MakeParam(string ParamName, SqlDbType DbType, Int32 Size, ParameterDirection Direction, object Value);
        IDataParameter MakeInParam(string ParamName, SqlDbType DbType, int Size, object Value);
        int RunProc(string ProcName);
        int RunProc(string ProcName, IDataParameter[] Params);
        IDataReader RunProcGetReader(string ProcName);
        IDataReader RunProcGetReader(string ProcName, IDataParameter[] Params);
        int RunProcGetCount(string ProcName, IDataParameter[] Params);
        DataSet GetDataSet(string ProcName);
        DataSet GetDataSet(string ProcName, IDataParameter[] Params);
        DataSet GetDataSetSql(string XSqlString);
        int Insert(string XSqlString);
        int GetIDInsert(string XSqlString);
    }
}
