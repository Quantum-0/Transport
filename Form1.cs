using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Прога2
{
    public partial class Form1 : Form
    {
        bool result = false;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (!(MessageBox.Show("Вы действительно хотите выйти?", "", MessageBoxButtons.YesNo) == DialogResult.Yes))
                e.Cancel = true;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            /*datagrid.RowCount = 2;
            datagrid.ColumnCount = 2;*/
            numericUpDown_ValueChanged(null, new EventArgs());
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
        }

        private void numericUpDown_ValueChanged(object sender, EventArgs e)
        {
            if (datagrid.RowCount > (int)numericUpDown1.Value || datagrid.ColumnCount > (int)numericUpDown2.Value)
            {
                bool isEmpty = false;

                if (sender== numericUpDown2)
                    for (int i = 0; i < datagrid.RowCount; i++)
                        if (datagrid[datagrid.ColumnCount - 1, i].Value != null)
                            isEmpty = true;
                if (sender == numericUpDown1)
                    for (int i = 0; i < datagrid.ColumnCount; i++)
                        if (datagrid[i, datagrid.RowCount - 1].Value != null)
                            isEmpty = true;

                if (isEmpty)
                    if (!(MessageBox.Show("Некоторые данные могут быть стёрты. Продолжить?", "", MessageBoxButtons.YesNo) == DialogResult.Yes))
                    {
                        numericUpDown1.Value = datagrid.RowCount - 1;
                        numericUpDown2.Value = datagrid.ColumnCount - 1;
                        return;
                    }
            }

            datagrid.RowCount = (int)numericUpDown1.Value + 1;
            datagrid.ColumnCount = (int)numericUpDown2.Value + 1;

            datagrid[0,0].Value = "i/j";
            datagrid.Rows[0].DefaultCellStyle.BackColor = Color.PeachPuff;
            datagrid.Columns[0].DefaultCellStyle.BackColor = Color.PeachPuff;
            datagrid[0,0].Style.BackColor = Color.DimGray;
            datagrid[0,0].ReadOnly = true;
            foreach (DataGridViewColumn i in datagrid.Columns)
                i.Width = 50;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (result)
            {
                button2.Text = "Оптимизировать";
                button1.Text = "Выполнить";
                button2.Enabled = false;
                datagrid.ReadOnly = false;
                result = false;

                numericUpDown1.Enabled = true;
                numericUpDown2.Enabled = true;
            }
            else
            {
                result = true;
                if (radioButton1.Checked)
                    metodLebedeva();
                if (radioButton2.Checked)
                    metodMin();

                button2.Enabled = true;
                button1.Text = "Изменить данные";
                datagrid.ReadOnly = true;
                numericUpDown1.Enabled = false;
                numericUpDown2.Enabled = false;
            }
        }

        private void Optimization(object sender, EventArgs e)
        {
            button2.Text = "Оптимизировано";
            button2.Enabled = false;
        }

        private void metodMin()
        {

        }

        private void metodLebedeva()
        {

        }

        private void datagrid_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            int a;


            if (!Int32.TryParse(datagrid[e.ColumnIndex, e.RowIndex].Value.ToString(), out a))
            {
                datagrid[e.RowIndex,e.ColumnIndex].Value = "";
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Где-то тут будут все 4 справки.");
        }
    }
}
