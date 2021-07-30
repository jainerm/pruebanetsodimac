using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace pruebasodimac.Models.CarCenterModels
{
    public class Servicios
    {
        public int id_servicio { get; set; }
        public int cod_servicio { get; set; }
        public int desc_servicio { get; set; }
        public int precio_mano { get; set; }
        public int descuento { get; set; }
    }
}