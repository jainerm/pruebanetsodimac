using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace pruebasodimac.Models.CarCenterModels
{
    public class Matenimiento
    {
		public int id_mante { get; set; }
		public int num_unidades { get; set; }
		public decimal precio_unidad { get; set; }
		public decimal descuento { get; set; }
		public int id_repuesto { get; set; }
		public int id_mecanico { get; set; }
		public int id_servicio { get; set; }
		public string cod_servicio { get; set; }
		public string desc_servicio { get; set; }
		public decimal precio_mano { get; set; }
		public string nom_repuesto { get; set; }
		public int existencia { get; set; }
		public decimal vr_repuesto { get; set; }
		public string tipo_doc { get; set; }
		public string num_doc { get; set; }
		public string pri_nombre { get; set; }
		public string seg_nombre { get; set; }
		public string pri_apellido { get; set; }
		public string seg_apellido { get; set; }
		public string correo { get; set; }
		public string celular { get; set; }
		public string direccion { get; set; }
	}
}