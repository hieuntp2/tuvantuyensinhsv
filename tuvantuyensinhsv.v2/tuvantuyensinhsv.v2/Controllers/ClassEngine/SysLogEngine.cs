using System;
using WebApplication1.Models;

using System.Web.Mvc;


namespace WebApplication1.Controllers
{
    class SysLogEngine : Controller
    {
        public void WriteLog(string Message)
        {
            ProjectHEntities db = new ProjectHEntities();
            SystemLog log = new SystemLog();
            log.DateCreated = DateTime.Now;
            log.LogMessage = Message;
            db.SystemLogs.Add(log);
            db.SaveChanges();
        }

        public void WriteUserLog(string Message,string userID)
        {
            ProjectHEntities db = new ProjectHEntities();
            SystemLog log = new SystemLog();
            log.DateCreated = DateTime.Now;

            Message += " Log by userid = " + userID;//User.Identity.GetUserId();

            log.LogMessage = Message;
            db.SystemLogs.Add(log);
            db.SaveChanges();
        }
    }
}
