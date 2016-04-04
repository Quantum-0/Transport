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
            datagrid.RowCount = 2;
            datagrid.ColumnCount = 2;
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
        }

        private void numericUpDown_ValueChanged(object sender, EventArgs e)
        {
            if (datagrid.RowCount > (int)numericUpDown1.Value || datagrid.ColumnCount > (int)numericUpDown2.Value)
            {
                bool isEmpty = false;

                for (int i = 0; i < datagrid.RowCount; i++)
                    if (datagrid[datagrid.ColumnCount - 1, i].Value != null)
                        isEmpty = true;
                for (int i = 0; i < datagrid.ColumnCount; i++)
                    if (datagrid[i, datagrid.RowCount - 1].Value != null)
                        isEmpty = true;

                if (isEmpty)
                    if (!(MessageBox.Show("Некоторые данные могут быть стёрты. Продолжить?", "", MessageBoxButtons.YesNo) == DialogResult.Yes))
                        return;
            }

            datagrid.RowCount = (int) numericUpDown1.Value;
            datagrid.ColumnCount = (int)numericUpDown2.Value;
        }
    }
}
