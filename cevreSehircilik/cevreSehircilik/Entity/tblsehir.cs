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
    
    public partial class tblsehir
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblsehir()
        {
            this.tblYorum = new HashSet<tblYorum>();
        }
    
        public int sehirid { get; set; }
        public string sehirBaslik { get; set; }
        public string sehirIcerik { get; set; }
        public Nullable<System.DateTime> sehirTarih { get; set; }
        public string sehirGorsel { get; set; }
        public Nullable<byte> sehirTur { get; set; }
        public Nullable<byte> sehirKategori { get; set; }
    
        public virtual tblKategori tblKategori { get; set; }
        public virtual tblTur tblTur { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblYorum> tblYorum { get; set; }
    }
}
