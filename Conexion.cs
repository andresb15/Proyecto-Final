using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace CRUD_Manipulardatos
{
     class Conexion
    {

        public static SqlConnection Conectar()



        {

            //CONEXION A SQL SERVER
            // BibliotecaGrupoB.mssql.somee.com
            // Grupo1Vla2021_SQLLogin_1
            //BibliotecaGrupoB
            //75zqwgwevv



            //servidor de prueba

           // SqlConnection cn = new SqlConnection("SERVER=VLAPractica.mssql.somee.com; DATABASE=VLAPractica; Uid=mmora89p_SQLLogin_3; Password=f4kq2dvv7f");

           //  cn.Open();
           // return cn;
           //----------------------------------------------------------------------
            //CONEXION A SQL SERVER  BIBLIOTECA GRUPOB
            SqlConnection ConexionGrupoB = new SqlConnection("SERVER=BibliotecaGrupoB.mssql.somee.com; DATABASE=BibliotecaGrupoB; Uid=Grupo1Vla2021_SQLLogin_1; Password=75zqwgwevv");
      
            ConexionGrupoB.Open();
            return ConexionGrupoB;


        }




    }
}
