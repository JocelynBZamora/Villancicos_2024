using Microsoft.AspNetCore.Mvc;
using Villancicos2024.Models.ViewModels;
using Villancicos2024.Models;
using Villancicos2024.Repositories;

namespace Villancicos2024.Controllers
{
    public class HomeController : Controller
    {

        private readonly VillancicoRepository _villancicoRepository;

        public HomeController(VillancicoRepository villancicoRepository)
        {
            _villancicoRepository = villancicoRepository;
        }

        public IActionResult Index()
        {
            var vm = _villancicoRepository.GetAll().Select(x => new IndexViewModel
            {
                Id = x.Id,
                Nombre = x.Nombre
            });

            return View(vm);
        }
        public IActionResult Agregar()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Agregar(AgregarViewModel vm)
        {
            //valida si no hay espacios sin llenar
            if (string.IsNullOrWhiteSpace(vm.Nombre))
            {
                ModelState.AddModelError("", "Agregue el nombre");
            }
            if (string.IsNullOrWhiteSpace(vm.Letra))
            {
                ModelState.AddModelError("", "Agregue la letra");
            }
            if (string.IsNullOrWhiteSpace(vm.Url))
            {
                ModelState.AddModelError("", "Agregue la Url");
            }
            if (vm.Anyo == null)
            {
                ModelState.AddModelError("", "Agregue alguna letra");
            }
            if (ModelState.IsValid)//si es valido entonses se agrega a la bdd
            {
                var villancico = new Villancico()
                {
                    Anyo = vm.Anyo,
                    Compositor = vm.Compositor,
                    Id = vm.Id,
                    Letra = vm.Letra,
                    Nombre = vm.Nombre,
                    VideoUrl = vm.Url

                };
                _villancicoRepository.Add(villancico);
                return RedirectToAction("Index");//regresa al index
            }
            return View(vm);
        }
        [HttpGet]
        public IActionResult Editar(int id)
        {
            var villancico = _villancicoRepository.Get(id);
            if (villancico == null)
            {
                return RedirectToAction("Index");

            }
            else
            {
                EditarViewModel vm = new();
                if (villancico.Compositor != null)
                {
                    vm.Letra = villancico.Letra;
                    vm.Compositor = villancico.Compositor;
                    vm.Url = villancico.VideoUrl;
                    vm.Anyo = villancico.Anyo;
                    vm.Nombre = villancico.Nombre;
                }
                return View(vm);
            }

        }
        [HttpPost]
        public IActionResult Editar(EditarViewModel vm)
        {
            ModelState.Clear();//limpia
            var villancico = _villancicoRepository.Get(vm.Id);

            //valida si no hay espacios sin llenar
            if (string.IsNullOrWhiteSpace(vm.Nombre))
            {
                ModelState.AddModelError("", "Agregue el nombre");
            }
            else if (vm.Nombre == villancico?.Nombre)
            {
                ModelState.AddModelError("", "El nombre ya existe");
            }
            if (string.IsNullOrWhiteSpace(vm.Letra))
            {
                ModelState.AddModelError("", "Agregue la letra");
            }
            
            if (string.IsNullOrWhiteSpace(vm.Url))
            {
                ModelState.AddModelError("", "Agregue la Url");
            }
            if (vm.Anyo == null)
            {
                ModelState.AddModelError("", "Agregue algun año");
            }
            if (villancico == null)
            {
                return RedirectToAction("Index");
            }

            if (ModelState.IsValid)//si es valido entonses se agrega a la bdd
            {

                //recordar que no se agrega las ediciones al VM sino al contexto (osea que es alreves)
                villancico.Letra = vm.Letra;
                villancico.Compositor = vm.Compositor;
                villancico.VideoUrl = vm.Url;
                villancico.Anyo = vm.Anyo;
                villancico.Nombre = vm.Nombre;
                _villancicoRepository.Update(villancico);
                return RedirectToAction("Index");//regresa al index
            }


            return View(vm);
        }

        public IActionResult Eliminar(int id)
        {
            var villancico = _villancicoRepository.Get(id);

            if (villancico != null) 
            {
            _villancicoRepository.Delete(id);
            }   
                return RedirectToAction("Index");
        }
    }
}
