using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Cliente
    {
        private int id;
        private string nombre;
        private string apellido;
        private string dni;
        private string email;
        private string telefono;

        public int Id { get { return id; } set { id = value; } }
        public string Nombre { get { return nombre; } set { nombre = value; } }
        public string Apellido { get { return apellido; } set { apellido = value; } }
        public string Dni { get { return dni; } set { dni = value; } }
        public string Email { get { return email; } set { email = value; } }
        public string Telefono { get { return telefono; } set { telefono = value; } }

    }
}
