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
    
    public partial class repuestos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public repuestos()
        {
            this.mantenimiento = new HashSet<mantenimiento>();
        }
    
        public int id_repuesto { get; set; }
        public string nom_repuesto { get; set; }
        public Nullable<int> existencia { get; set; }
        public Nullable<decimal> vr_repuesto { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<mantenimiento> mantenimiento { get; set; }
    }
}
