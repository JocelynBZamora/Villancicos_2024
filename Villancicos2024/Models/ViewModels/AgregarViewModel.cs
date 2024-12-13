namespace Villancicos2024.Models.ViewModels
{
    public class AgregarViewModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; } = null!;  
        public string Compositor { get; set; } = null!;
        public int? Anyo { get; set; } 
        public string Letra { get; set; } = null!;
        public string Url { get; set; } = null!;
    }
}
