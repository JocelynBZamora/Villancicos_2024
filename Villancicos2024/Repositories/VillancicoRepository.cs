using Villancicos2024.Models;

namespace Villancicos2024.Repositories
{
    public class VillancicoRepository
    {
        VillancicosContext _context;

        public VillancicoRepository(VillancicosContext context)
        { 
            _context = context; 
        }
         
        public void Add(Villancico villancico)
        {
            _context.Add(villancico);
            _context.SaveChanges();
        } 
        public IEnumerable<Villancico> GetAll() => _context.Villancico.OrderBy(x => x.Nombre);

        public Villancico? Get(int Id) => _context.Villancico.Find(Id);//encuentra con base a id

        public void Delete(Villancico villancico)
        {
            _context.Remove(villancico);
            _context.SaveChanges(); 
        }
        public void Update(Villancico villancico)
        {

            _context.Update(villancico);
            _context.SaveChanges();
        }
        public void Delete(object id)
        {
            _context.Remove(Get((int)id));
            _context.SaveChanges();
        }


    }
}
