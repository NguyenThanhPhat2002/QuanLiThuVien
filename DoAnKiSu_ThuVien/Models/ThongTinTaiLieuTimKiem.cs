using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnKiSu_ThuVien.Models
{
    public class ThongTinTaiLieuTimKiem
    {
        public String tenTL, tacGia, tenNXB, chuDe, kyHieuPhanLoai, loaiTL, anhBia;
        public int? namXuatBan, soTrang, chieuCao;
        public int id;
        public List<String> dsTacGia;
        public List<BanSaoTaiLieu> dsBanSao;
        public ThongTinTaiLieuTimKiem()
        {

        }
    }
}