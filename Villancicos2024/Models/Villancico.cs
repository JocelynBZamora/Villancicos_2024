using System;
using System.Collections.Generic;

namespace Villancicos2024.Models;

public partial class Villancico
{
    public int Id { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Compositor { get; set; }

    public int? Anyo { get; set; }

    public string Letra { get; set; } = null!;

    public string VideoUrl { get; set; } = null!;
}
