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
    
    public partial class PizzaSelected
    {
        public int OrderID { get; set; }
        public Nullable<int> PizzaID { get; set; }
        public Nullable<int> NumberOfPizza { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public string UserName { get; set; }
    
        public virtual PizzaDetail PizzaDetail { get; set; }
        public virtual UserDetail UserDetail { get; set; }
    }
}
