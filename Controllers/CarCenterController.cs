using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using pruebasodimac.Models;
using pruebasodimac.Models.CarCenterModels;


namespace pruebasodimac.Controllers
{
    public class CarCenterController : Controller
    {
        // GET: CarCenter
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Cliente()
        {
            List<Clientes> lsitaClientes;
            using (CAR_CENTEREntities bd = new CAR_CENTEREntities())
            {
                lsitaClientes = (from d in bd.cliente
                                 join e in bd.servicios on d.id_servicio equals e.id_servicio
                                 select new Clientes
                                 {
                                     id_cliente = d.id_cliente,
                                     id_doc = (int)d.id_doc,
                                     tipo_doc = d.tipo_doc,
                                     num_doc = d.num_doc,
                                     pri_nombre = d.pri_nombre,
                                     seg_nombre = d.seg_nombre,
                                     pri_apellido = d.pri_apellido,
                                     seg_apellido = d.seg_apellido,
                                     correo = d.correo,
                                     celular = d.celular,
                                     direccion = d.direccion,
                                     cod_servicio = e.cod_servicio,
                                     servicio = e.desc_servicio,
                                     presupuesto = (decimal)d.presupuesto

                                 }).ToList();
            }
            return View(lsitaClientes);
        }
        public ActionResult Servicio()
        {
            List<Matenimiento> lsitaMantenimiento;
            using (CAR_CENTEREntities bd = new CAR_CENTEREntities())
            {

                // select * from[dbo].[mantenimiento] a JOIN[dbo].[servicios] b ON a.id_servicio = b.id_servicio JOIN [dbo].[repuestos] c ON a.id_repuesto = c.id_repuesto JOIN [dbo].[cliente] e ON a.id_cliente = e.id_cliente

                lsitaMantenimiento = (from m in bd.mantenimiento
                                      join e in bd.servicios on m.id_servicio equals e.id_servicio
                                      join c in bd.repuestos on m.id_repuesto equals c.id_repuesto
                                      join d in bd.cliente on m.id_cliente equals d.id_cliente
                                      select new Matenimiento
                                      {
                                          id_mante = m.id_manten,
                                          num_unidades = (int)m.num_unidades,
                                          precio_unidad = (decimal)m.precio_unidad,
                                          descuento = (decimal)m.descuento,
                                          id_repuesto = m.id_repuesto,
                                          id_mecanico = m.id_mecanico,
                                          id_servicio = m.id_servicio,
                                          cod_servicio = e.cod_servicio,
                                          desc_servicio = e.desc_servicio,
                                          precio_mano = (decimal)e.precio_mano,
                                          nom_repuesto = c.nom_repuesto,
                                          existencia = (int)c.existencia,
                                          vr_repuesto = (decimal)c.vr_repuesto,
                                          tipo_doc = d.tipo_doc,
                                          num_doc = d.num_doc,
                                          pri_nombre = d.pri_nombre,
                                          seg_nombre = d.pri_apellido,
                                          pri_apellido = d.pri_apellido,
                                          seg_apellido = d.seg_apellido,
                                          correo = d.correo,
                                          celular = d.celular,
                                          direccion = d.direccion
                                      }).ToList();
            }
            return View(lsitaMantenimiento);
        }
        public ActionResult Repuestos()
        {
            return View();
        }
        public ActionResult Ingresar()
        {
            return View();
        }
    }
}