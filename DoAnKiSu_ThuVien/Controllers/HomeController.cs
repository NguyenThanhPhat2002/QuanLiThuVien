﻿
using DoAnKiSu_ThuVien.Models;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;



namespace DoAnKiSu_ThuVien.Controllers
{
    public class HomeController : Controller
    {
        private QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        
        public ActionResult HomePage()
        {
           if (Session["ReaderID"] != null)
           {
                ViewBag.ReaderName = db.DocGias.Find(Session["ReaderID"].ToString()).TenDocGia;
                return View();
           }
                return View();
        }
        public ActionResult Register()
        {
            return View();
        }
        public ActionResult Login(String Error)
        {
            ViewBag.Error = TempData["Error"];
            return View();
        }
        public ActionResult Logout()
        {
            Session.Remove("UserID");
            Session.Abandon();
            return RedirectToAction("HomePage");
        }
        // [AuthorizeUser]
        [HttpPost]
        public ActionResult ProcessLogin(string uname, string psw)
        {
            String maDocGia = null;
            maDocGia = (from tk in db.DocGias
                      join t in db.TheThuViens
                      on tk.MaDocGia equals t.MaDocGia
                      where tk.MaDocGia == uname && t.MatKhau == psw
                      select tk.MaDocGia).FirstOrDefault();
            //System.Diagnostics.Debug.WriteLine("madoc gia = " + maDocGia);
            if (maDocGia != null)
            {
                Session["ReaderID"] = maDocGia;
                return RedirectToAction("HomePage");
            }
            else
            {
                TempData["Error"] = "Tên đăng nhập hoặc mật khẩu không đúng.";
                return RedirectToAction("Login");
            }
        }
        
    }

}

