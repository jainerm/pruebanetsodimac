using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace pruebasodimac.Models.CarCenterModels
{
    public class Clientes
    {
		public int id_cliente { get; set; }
		public int id_doc { get; set; }
		public string tipo_doc { get; set; }
		public string num_doc { get; set; }
		public string pri_nombre { get; set; }
		public string seg_nombre { get; set; }
		public string pri_apellido { get; set; }
		public string seg_apellido { get; set; }
		public string correo { get; set; }
		public string celular { get; set; }
		public string direccion { get; set; }
		public string cod_servicio { get; set; }
		public string servicio { get; set; }
		public decimal presupuesto { get; set; }
	}
}