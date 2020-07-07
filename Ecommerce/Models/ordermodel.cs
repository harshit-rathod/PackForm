namespace Ecommerce.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ordermodel : DbContext
    {
        public ordermodel()
            : base("name=ordermodel")
        {
        }

        public virtual DbSet<order> orders { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<order>()
                .Property(e => e.created_at)
                .IsUnicode(false);

            modelBuilder.Entity<order>()
                .Property(e => e.order_name)
                .IsUnicode(false);

            modelBuilder.Entity<order>()
                .Property(e => e.customer_id)
                .IsUnicode(false);
        }
    }
}
