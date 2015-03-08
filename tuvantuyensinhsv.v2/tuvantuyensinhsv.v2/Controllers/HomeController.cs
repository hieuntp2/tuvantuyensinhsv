using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using tuvantuyensinhsv.v2.Models;
namespace tuvantuyensinhsv.v2.Controllers
{
    public class HomeController : Controller
    {
        private ProjectHEntities db = new ProjectHEntities();
        //
        // GET: /Home/
        public ActionResult Index()
        {
            List<BaiViet> list = db.BaiViets.Where(t=>t.Trangthai == 1).OrderBy(t => t.NgayCapNhat).ToList();
            return View(list);
        }

        [HttpPost]
        public ActionResult AjaxLoadTruongNganh(string ID)
        {
            List<TruongNganh> list = db.TruongNganhs.Where(t => t.MaTruong == ID).ToList();
            return PartialView(list);
        }
   
        public ActionResult About()
        {
            return View();
        }

        public ActionResult IndexSearch()
        {
            SystemInfo record = new SystemInfo();
            record.AddValue("homepage",1);
            return View();
        }

	}
}