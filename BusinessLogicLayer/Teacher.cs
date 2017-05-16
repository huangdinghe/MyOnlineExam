using MyOnLineExam.BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BusinessLogicLayer
{
    class Teacher:Users
    {
        public override Users Clone()
        {
            return this.MemberwiseClone() as Users;
        }
    }
}
