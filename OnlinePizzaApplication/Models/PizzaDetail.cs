//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlinePizzaApplication.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PizzaDetail
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PizzaDetail()
        {
            this.PizzaSelecteds = new HashSet<PizzaSelected>();
        }
    
        public int PizzaID { get; set; }
        public string PizzaName { get; set; }
        public int Amount { get; set; }
        public string Description { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PizzaSelected> PizzaSelecteds { get; set; }
    }
}
