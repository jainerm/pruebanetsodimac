using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using pruebasodimac.Models;
using pruebasodimac.Models.CarCenterModels;
using pruebasodimac.Models.CarCenterModels.Procedimientos;

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
            // Cargar datos de clientes
            List<Clientes> lsitaClientes;
            lsitaClientes = lstClientes();
            // Traer los tipos de documentos
            ViewData["TiposDocumentos"] = lstDocumentos();
            // Traer los tipos de servicio
            ViewData["TipoServicios"] = lstTiposervicios();
            return View(lsitaClientes);
        }
        public List<Clientes> lstClientes()
        {
            List<Clientes> lsitaClientes;
            using (CAR_CENTEREntities1 bd = new CAR_CENTEREntities1())
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
            return lsitaClientes;
        }

        public List<SelectListItem> lstDocumentos()
        {
            var lsitaDocumentos = new List<SelectListItem>();
            List<Documentos> lstDocumento;
            using (CAR_CENTEREntities1 bd = new CAR_CENTEREntities1())
            {
                lstDocumento = (from d in bd.documento 
                                 select new Documentos
                                 {
                                     id_doc = d.id_doc,
                                     tipo_doc = d.tipo_doc,
                                     nom_doc = d.nom_doc
                                 }).ToList();
            }
            foreach(var item in lstDocumento)
            {
                lsitaDocumentos.Add(new SelectListItem()
                {
                    Text = item.nom_doc,
                    Value = item.tipo_doc
                });
            }
            return lsitaDocumentos;
        }
        public List<SelectListItem> lstTiposervicios()
        {
            var lsitaTipoServicios = new List<SelectListItem>();
            List<Servicios> lsitaTipoServicio;
            using (CAR_CENTEREntities1 bd = new CAR_CENTEREntities1())
            {
                lsitaTipoServicio = (from d in bd.servicios
                                   select new Servicios
                                   {
                                       id_servicio = d.id_servicio,
                                       cod_servicio = d.cod_servicio,
                                       desc_servicio = d.desc_servicio,
                                       precio_mano = (decimal)d.precio_mano,
                                       descuento = (decimal)d.descuento
                                   }).ToList();
            }
            foreach (var item in lsitaTipoServicio)
            {
                lsitaTipoServicios.Add(new SelectListItem()
                {
                    Text = item.desc_servicio,
                    Value = item.cod_servicio
                });
            }
            return lsitaTipoServicios;
        }
        public ActionResult RegistroCliente()
        {
            string pri_nombre = Request.Form["pri_nombre"];
            string pri_apellido = Request.Form["pri_nombre"];
            string tipo_doc = Request.Form["tipo_doc"];
            string seg_nombre = Request.Form["seg_nombre"];
            string seg_apellido = Request.Form["seg_apellido"];
            string num_doc = Request.Form["num_doc"];
            string tipo_servicio = Request.Form["tipo_servicio"];
            decimal presupuesto = Convert.ToDecimal(Request.Form["presupuesto"]);
            string correo = Request.Form["correo"];
            string celular = Request.Form["celular"];
            string direccion = Request.Form["direccion"];
            //List<spInsertarCliente> lsitaClientes;
            int resulta;
            using (CAR_CENTEREntities1 bd = new CAR_CENTEREntities1())
            {
                resulta = bd.spInsertarCliente(tipo_doc, num_doc, pri_nombre, seg_nombre, pri_apellido, seg_apellido, correo, celular, direccion, tipo_servicio, presupuesto);
                //lsitaClientes = bd.Database.SqlQuery<spInsertarCliente>(
                //    "spInsertarCliente @tipo_doc", new SqlParameter("tipo_doc", tipo_doc));
                bd.SaveChanges();

            }
            // Cargar datos de clientes
            List<Clientes> lsitaClientes2;
            lsitaClientes2 = lstClientes();
            // ViewBag.LosClientes = lsitaClientes2;
            // Traer los tipos de documentos
            ViewData["TiposDocumentos"] = lstDocumentos();
            // Traer los tipos de servicio
            ViewData["TipoServicios"] = lstTiposervicios();
            return View("Cliente", lsitaClientes2);
            //return View("~/Views/CarCenter/Cliente.cshtml");
        }
        public ActionResult Servicio()
        {
            List<Matenimiento> lsitaMantenimiento;
            using (CAR_CENTEREntities1 bd = new CAR_CENTEREntities1())
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