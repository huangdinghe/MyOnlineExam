using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyOnlineExam.Observer
{
    public class TimerManagement:ITimer
    {
        private List<IObserver> observer = new List<IObserver>();
        List<IObserver> ITimer.ObserverList
        {
            get
            {

                return observer;
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        void ITimer.Add(IObserver obs)
        {
            observer.Add(obs);
        }

        void ITimer.Remove(IObserver obs)
        {
            observer.Remove(obs);
        }

        void ITimer.SavePaper()
        {
            foreach (var item in this.observer)
            {
                item.SubmitBind();
            }
        }
    }
}