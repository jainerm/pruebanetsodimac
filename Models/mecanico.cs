//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace pruebasodimac.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class mecanico
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public mecanico()
        {
            this.mantenimiento = new HashSet<mantenimiento>();
        }
    
        public int id_mecanico { get; set; }
        public Nullable<int> id_doc { get; set; }
        public string tipo_doc { get; set; }
        public string num_doc { get; set; }
        public string celular { get; set; }
        public string direccion { get; set; }
        public string correo { get; set; }
        public string pri_nombre { get; set; }
        public string seg_nombre { get; set; }
        public string pri_apellido { get; set; }
        public string seg_apellido { get; set; }
    
        public virtual documento documento { get; set; }
        public virtual documento documento1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<mantenimiento> mantenimiento { get; set; }
    }
}
