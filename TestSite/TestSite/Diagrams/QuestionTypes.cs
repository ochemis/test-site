//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TestSite.Diagrams
{
    using System;
    using System.Collections.Generic;
    
    public partial class QuestionTypes
    {
        public QuestionTypes()
        {
            this.Questions = new HashSet<Questions>();
        }
    
        public int QuestionTypeID { get; set; }
        public string QuestionTypeName { get; set; }
    
        public virtual ICollection<Questions> Questions { get; set; }
    }
}