using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;



namespace CRUD_Manipulardatos
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {


            Conexion.Conectar();
            MessageBox.Show("Conexion exitosa");
            dataGridView1.DataSource = llenar_grid();


           

         




        }


        public DataTable llenar_grid()

        {
            //COMENZAR LA CONEXION
            Conexion.Conectar();

            DataTable dt = new DataTable();
            //creacion de tabla a prtir de consulta SELECT
         
     
            string SELECT2 = "SELECT * FROM [dbo].[Prestamo]";
            SqlCommand cmd = new SqlCommand(SELECT2, Conexion.Conectar());
            //adaptdor de la tabla

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            //memorizador de filas
            adapter.Fill(dt);


            return dt;







            }






        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
            
            textIDPrestamo.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            textIDLector.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
            textIDLibro.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();   
            textFechaPrestamo.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
            textFechaDevolucion.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
            textDevuelto.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();
            textIdEncargado.Text = dataGridView1.CurrentRow.Cells[6].Value.ToString();


            //selecciona registro segun el usuario
            try
            {
              


            }

            catch
            {


            }


        }

        private void button1_Click(object sender, EventArgs e)
        {

            //INSERT

            Conexion.Conectar();
            //crear QUERY
          
            //ABRIR CONEXION Y CONECTAR

            String insertar2 = "INSERT INTO Prestamo (IDLector,IDLibro,FechaPrestamo,FechaDevolucion,IDEncargados) VALUES (@IDLector,@IDLibro,GETDATE(),DATEADD(day, 5, GETDATE()),@IDEncargados)";


            SqlCommand cmd1 = new SqlCommand(insertar2, Conexion.Conectar());

            //declarar parametros de los campos en la tabla
            cmd1.Parameters.AddWithValue("@IDLector", textIDLector.Text);
            cmd1.Parameters.AddWithValue("@IDLibro", textIDLibro.Text);
            cmd1.Parameters.AddWithValue("@IDEncargados", textIdEncargado.Text);
       



            //EJECUTAR EL QUERY

            cmd1.ExecuteNonQuery();

            //mostrar mensaje de operacion exitosa

            try
            {
                MessageBox.Show("Los datos fueron agregados exitosamente");


                //actualizar la tabla del GRIDVIEW CON LA NUEVA FILA INGRESADA
                dataGridView1.DataSource = llenar_grid();


            }

            catch (Exception ex) {

                MessageBox.Show("Los datos no pueden ser ingresados");

                MessageBox.Show(ex.Message);

            }



        }

        private void textCodigo_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            //UPDATE

           
         
           // String UPDATE2 = "UPDATE Prestamo SET  IDLector = @IDLector, IDLibro = @IDLibro,FechaPrestamo = @FechaPrestamo ,FechaDevolucion = @FechaDevolucion ,Devuelto =@Devuelto,IDEncargados = @IDEncargados WHERE IDLector = @IDLector OR IDLibro = @IDLibro OR FechaPrestamo = @FechaPrestamo OR FechaDevolucion = @FechaDevolucion OR Devuelto =@Devuelto OR IDEncargados = @IDEncargados";
            String UPDATE1 = "UPDATE Prestamo SET IDLector = @IDLector, IDLibro = @IDLibro, FechaPrestamo = @FechaPrestamo, FechaDevolucion = @FechaDevolucion, Devuelto = @Devuelto, IDEncargados = @IDEncargados WHERE IDPrestamo = @IDPrestamo";
            SqlCommand cmd2 = new SqlCommand(UPDATE1, Conexion.Conectar());
            //declarar parametros para actualizar nuevos campos
            cmd2.Parameters.AddWithValue("@IDPrestamo", textIDPrestamo.Text);
            cmd2.Parameters.AddWithValue("@IDLector", textIDLector.Text);
            cmd2.Parameters.AddWithValue("@IDLibro", textIDLibro.Text);
            cmd2.Parameters.AddWithValue("@FechaPrestamo", textFechaPrestamo.Text);
            cmd2.Parameters.AddWithValue("@FechaDevolucion", textFechaDevolucion.Text);
            cmd2.Parameters.AddWithValue("@Devuelto", textDevuelto.Text);
            cmd2.Parameters.AddWithValue("@IDEncargados", textIdEncargado.Text);


            //EJECUTAR EL QUERY

            cmd2.ExecuteNonQuery();

            //mensaje de query exitoso

            MessageBox.Show("Los datos fueron actualizados exitosamente");


            //ACTUALIZAR la tabla del GRIDVIEW CON LOS NUEVOS DATOS ACTUALIZADOS
            dataGridView1.DataSource = llenar_grid();


        }

        private void dataGridView1_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            textIDPrestamo.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            textIDLector.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
            textIDLibro.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
            textFechaPrestamo.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
            textFechaDevolucion.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
            textDevuelto.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();
            textIdEncargado.Text = dataGridView1.CurrentRow.Cells[6].Value.ToString();




        }

        private void dataGridView1_Click(object sender, EventArgs e)
        {
            textIDPrestamo.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            textIDLector.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
            textIDLibro.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
            textFechaPrestamo.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
            textFechaDevolucion.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
            textDevuelto.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();
            textIdEncargado.Text = dataGridView1.CurrentRow.Cells[6].Value.ToString();



        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {
           


        

        }

        private void button3_Click(object sender, EventArgs e)
        {


            //DETELE

            //CREAR CONEXION 
            Conexion.Conectar();
            String DELETE = "DELETE FROM Prestamo WHERE IDPrestamo = @IDPrestamo";
            SqlCommand cmd3 = new SqlCommand(DELETE, Conexion.Conectar());
            cmd3.Parameters.AddWithValue("@IDPrestamo", textIDPrestamo.Text);
            //EJECUTAR EL QUERY
            cmd3.ExecuteNonQuery();

            //mensaje de query exitoso

            MessageBox.Show("Los datos fueron Eliminados  exitosamente");


            //ACTUALIZAR la tabla del GRIDVIEW CON LOS NUEVOS DATOS 
            dataGridView1.DataSource = llenar_grid();



            //limpiar los datos viejos
            textIDPrestamo.Clear();
            textIDLibro.Clear();
            textIDLector.Clear();
            textFechaPrestamo.Clear();
            textDevuelto.Clear();   
            textIdEncargado.Clear(); 
            textFechaDevolucion.Clear();    










        }

        private void button4_Click(object sender, EventArgs e)
        {

            //limpiar datos 
            textIDPrestamo.Clear();
            textIDLibro.Clear();
            textIDLector.Clear();
            textFechaPrestamo.Clear();
            textDevuelto.Clear();
            textIdEncargado.Clear();
            textFechaDevolucion.Clear();





        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {





        }

        private void button5_Click(object sender, EventArgs e)
        {


          //  dataGridView1.DataSource = llenar_grid();



        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            //dataGridView1.DataSource = llenar_grid();



        }

        private void dateTimePicker1_ValueChanged_1(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}