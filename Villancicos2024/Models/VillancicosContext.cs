using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql.Scaffolding.Internal;

namespace Villancicos2024.Models;

public partial class VillancicosContext : DbContext
{
    public VillancicosContext()
    {
    }

    public VillancicosContext(DbContextOptions<VillancicosContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Villancico> Villancico { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseMySql("user=root;password=root;database=villancicos;server=localhost", Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.36-mysql"));

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("latin1_swedish_ci")
            .HasCharSet("latin1");

        modelBuilder.Entity<Villancico>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("villancico");

            entity.Property(e => e.Compositor).HasMaxLength(50);
            entity.Property(e => e.Letra).HasColumnType("text");
            entity.Property(e => e.Nombre).HasMaxLength(100);
            entity.Property(e => e.VideoUrl)
                .HasMaxLength(200)
                .HasColumnName("VideoURL");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
