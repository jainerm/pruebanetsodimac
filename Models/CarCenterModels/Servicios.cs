using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace pruebasodimac.Models.CarCenterModels
{
    public class Servicios
    {
        public int id_servicio { get; set; }
        public string cod_servicio { get; set; }
        public string desc_servicio { get; set; }
        public decimal precio_mano { get; set; }
        public decimal descuento { get; set; }
    }
}