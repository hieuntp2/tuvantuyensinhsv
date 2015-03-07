using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;
using Microsoft.AspNet.Identity;

namespace WebApplication1.Controllers
{
    public class BaiVietsController : Controller
    {
        private ProjectHEntities db = new ProjectHEntities();

        // GET: /BaiViets/
        [Authorize]
        public ActionResult Index()
        {         
            string IDUser = User.Identity.GetUserId();
            List<BaiViet> baiviets = db.BaiViets.Where(b => b.AspNetUser.Id == IDUser).ToList();
            return View(baiviets.ToList());
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="trangthai">0: Đang yêu cầu đăng </param>
        /// <param name="trangthai">1: Đang đang tải </param>
        /// <param name="trangthai">2: User Ẩn bài </param>
        /// <param name="trangthai">3: User Xóa bài </param>
        /// <param name="trangthai">4: Disable by Admin </param>
        /// <param name="trangthai">5: Low Rate </param>
        /// <returns></returns>
        [Authorize(Roles = "Admin,Moderate")]
        public ActionResult ListBaiViet(int trangthai)
        {
            List<BaiViet> list = new List<BaiViet>();   
            switch(trangthai)
            {
                case -1:
                    ViewBag.Title = "Tất cả bài viết";
                    list = db.BaiViets.ToList();
                    break;   
                case 0:
                    ViewBag.Title = "Bài đang được đợi đăng";
                    list = db.BaiViets.Where(t => t.Trangthai == trangthai).ToList();
                    break;
                case 1:
                    ViewBag.Title = "Bài đang hoạt động";
                    list = db.BaiViets.Where(t => t.Trangthai == trangthai).ToList();
                    break;
                case 2:
                    ViewBag.Title = "Bài bị Ẩn bởi User";
                    list = db.BaiViets.Where(t => t.Trangthai == trangthai).ToList();
                    break;
                case 3:
                    ViewBag.Title = "Bài bị xóa bởi User";
                    list = db.BaiViets.Where(t => t.Trangthai == trangthai).ToList();
                    break;
                case 4:
                    ViewBag.Title = "Bài bị disable bởi Admin";
                    list = db.BaiViets.Where(t => t.Trangthai == trangthai).ToList();
                    break;
                case 5:
                    ViewBag.Title = "Bài bị đánh giá thấp";
                    list = db.BaiViets.Where(t => t.RatePosts.Where(x => x.Like == false).Count() > t.RatePosts.Where(j => j.Like == true).Count()).ToList();
                    break;
            }

            return View(list);
        }

        [HttpPost]
        public void RateBaiViet(int ID, int rate)
        {
            //if(ID == null || rate == null)
            //{
            //    return;
            //}

            string IDUser = User.Identity.GetUserId();
            RatePost item = db.RatePosts.SingleOrDefault(t => t.IDBaiViet == ID
                                                            && t.IDUsername == IDUser);
            // Neu nguoi post cap nhat
            if(item == null)
            {
                item = new RatePost();
                item.IDUsername = IDUser;
                item.IDBaiViet = ID;

                item.Like = (rate == 1 ? true : false);

                db.RatePosts.Add(item);
                db.SaveChanges();
                return;
            }
            else
            {
                item.Like = (rate == 1 ? true : false);

                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
                return;
            }
        }

        // GET: /BaiViets/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiViet baiviet = db.BaiViets.Find(id);
            if (baiviet == null)
            {
                return HttpNotFound();
            }
            return View(baiviet);
        }

        // GET: /BaiViets/Create
        [Authorize]
        public ActionResult Create()
        {
            ViewBag.NguoiDang = new SelectList(db.AspNetUsers, "Id", "UserName");
            return View();
        }

        // POST: /BaiViets/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        [Authorize]
        public ActionResult Create([Bind(Include = "ID,TieuDe,NoiDung,NguoiDang,NgayCapNhat,Trangthai,Tabs")] BaiViet baiviet)
        {
            if (ModelState.IsValid)
            {
                baiviet.Tabs.Remove(baiviet.Tabs.Length - 1);
                baiviet.NgayCapNhat = DateTime.Now;
                // TBai viet chi moi duoc post, dang doi su dong y cua admin
                baiviet.Trangthai = 0;
                baiviet.NguoiDang = User.Identity.GetUserId();
                db.BaiViets.Add(baiviet);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.NguoiDang = new SelectList(db.AspNetUsers, "Id", "UserName", baiviet.NguoiDang);
            return View(baiviet);
        }

        // GET: /BaiViets/Edit/5
        [Authorize]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiViet baiviet = db.BaiViets.Find(id);
            if (checkUser(baiviet) == false)
            {
                return HttpNotFound("Bài viết này không thuộc về bạn");
            }
            if (baiviet == null)
            {
                return HttpNotFound();
            }
            ViewBag.NguoiDang = new SelectList(db.AspNetUsers, "Id", "UserName", baiviet.NguoiDang);
            return View(baiviet);
        }

        // POST: /BaiViets/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        [Authorize]
        public ActionResult Edit([Bind(Include = "ID,TieuDe,NoiDung,NguoiDang,NgayCapNhat,Trangthai,Tabs")] BaiViet baiviet)
        {
            BaiViet testbai = db.BaiViets.SingleOrDefault(t => t.ID == baiviet.ID);
            if (checkUser(testbai) == false)
            {
                return HttpNotFound("Bài viết này không thuộc về bạn");
            }
            if (ModelState.IsValid)
            {
                testbai.NgayCapNhat = DateTime.Now;
                testbai.NguoiDang = User.Identity.GetUserId();
                testbai.NoiDung = baiviet.NoiDung;
                testbai.Tabs = baiviet.Tabs;
                testbai.TieuDe = baiviet.TieuDe;
                testbai.Trangthai = 0;

                db.Entry(testbai).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.NguoiDang = new SelectList(db.AspNetUsers, "Id", "UserName", baiviet.NguoiDang);
            return View(baiviet);
        }

        // GET: /BaiViets/Delete/5
        [Authorize]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            
            BaiViet baiviet = db.BaiViets.Find(id);
            if (checkUser(baiviet) == false)
            {
                return HttpNotFound("Bài viết này không thuộc về bạn");
            }
            if (baiviet == null)
            {
                return HttpNotFound();
            }
            return View(baiviet);
        }

        // POST: /BaiViets/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [Authorize]
        public ActionResult DeleteConfirmed(int id)
        {

            BaiViet baiviet = db.BaiViets.Find(id);
            if (checkUser(baiviet) == false)
            {
                return HttpNotFound("Bài viết này không thuộc về bạn");
            }
            baiviet.Trangthai = 3;
            db.Entry(baiviet).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool checkUser(BaiViet baiviet)
        {
            string IDUser = User.Identity.GetUserId();
            if(IDUser == baiviet.AspNetUser.Id)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
