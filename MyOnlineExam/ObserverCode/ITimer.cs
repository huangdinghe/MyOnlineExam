using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyOnlineExam.Observer
{
    public interface ITimer
    {
        List<IObserver> ObserverList { get; set; }
        void Add(IObserver obs);//添加观察者
        void Remove(IObserver obs);//移除观察者
        void SavePaper();//通知功能
    }
}
