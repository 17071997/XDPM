﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class KhachHang
    {
        [Key]
        public string MaKhachHang { get; set; }
        public string TenKhachHang { get; set; }
        [Phone]
        public string Phone { get; set; }
        
    }
}
