﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Threading.Tasks;

namespace Bussiness
{
    public class LoginBLL
    {
        QuanLyChoThueBangDiaDataContext db;
        public LoginBLL()
        {
            db = new QuanLyChoThueBangDiaDataContext();
        }
        public bool IsAccess (string username,string password)
        {
            Login account = db.Logins.Where(x => x.UserName.Equals(username)).FirstOrDefault();
            if (account != null)
            {
                if (account.Pass.Equals(password))
                {
                    return true;
                }
            }
            return false;
        }
    }
}
