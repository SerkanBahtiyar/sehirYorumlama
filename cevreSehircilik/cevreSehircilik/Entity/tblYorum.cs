//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace cevreSehircilik.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblYorum
    {
        public int yorumid { get; set; }
        public string kisiAd { get; set; }
        public string mail { get; set; }
        public string yorumicerik { get; set; }
        public Nullable<int> yorumSehir { get; set; }
    
        public virtual tblsehir tblsehir { get; set; }
    }
}
