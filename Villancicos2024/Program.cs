using Microsoft.EntityFrameworkCore;
using Villancicos2024.Models;
using Villancicos2024.Repositories;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddMvc();

//enlase con la bdd
builder.Services.AddDbContext<VillancicosContext>(opt => opt.UseMySql("user=root;password=root;database=villancicos;server=localhost", Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.36-mysql")));
builder.Services.AddTransient<VillancicoRepository>();//se tiene que inyectar el contexto al repositorio con esto 


var app = builder.Build();

app.UseStaticFiles();

app.MapDefaultControllerRoute();
app.Run();
