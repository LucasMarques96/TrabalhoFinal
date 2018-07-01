using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfApplicationTeste.DAO;

namespace WpfApplicationTeste
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            ListarPessoas();
        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Pessoas pessoaSelecionada = dataGrid.SelectedItem as Pessoas;
            if(pessoaSelecionada != null)
            {
                txtNome.Text = pessoaSelecionada.Nome;
                txtEmail.Text = pessoaSelecionada.Email;
                txtTelefone.Text = pessoaSelecionada.Telefone;
                lblId.Content = pessoaSelecionada.Id;
                txtDtNascimento.Text = pessoaSelecionada.DataNascimento;
            }
        }

        private void ListarPessoas()
        {
            PessoaDBDataContext db = new PessoaDBDataContext();
            var pessoasBanco = (from p in db.Pessoas select p);
            
            dataGrid.ItemsSource = pessoasBanco;
        }

        private void btnSalvar_Click(object sender, RoutedEventArgs e)
        {
            PessoaDBDataContext db = new PessoaDBDataContext();
            int pessoaId = String.IsNullOrEmpty(lblId.Content.ToString()) ? 0 : (int)lblId.Content;
            if(pessoaId > 0)
            {
                Pessoas pessoaBanco = (from p in db.Pessoas
                                      where p.Id == pessoaId
                                      select p).Single();

                pessoaBanco.Nome = txtNome.Text;
                pessoaBanco.Telefone = txtTelefone.Text;
                pessoaBanco.Email = txtEmail.Text;
                pessoaBanco.DataNascimento = txtDtNascimento.Text;
            }
            else
            {
                var pessoaNova = new Pessoas();
                pessoaNova.Nome = txtNome.Text;
                pessoaNova.Telefone = txtTelefone.Text;
                pessoaNova.Email = txtEmail.Text;
                pessoaNova.DataNascimento = txtDtNascimento.Text;
                db.Pessoas.InsertOnSubmit(pessoaNova);
            }
            
            db.SubmitChanges();

            MessageBox.Show("Pessoa salva com sucesso!");

            ListarPessoas();
        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            LimparCampos();
        }

        private void LimparCampos()
        {
            lblId.Content = "";
            txtDtNascimento.Text = "";
            txtEmail.Text = "";
            txtNome.Text = "";
            txtTelefone.Text = "";
            lblErro.Content = "";
        }

        private void btnNova_Click(object sender, RoutedEventArgs e)
        {
            LimparCampos();
        }

        private void btnDeletar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                PessoaDBDataContext db = new PessoaDBDataContext();
                Pessoas pessoaSelecionada = dataGrid.SelectedItem as Pessoas;
                if (pessoaSelecionada != null)
                {
                    Pessoas pessoaBanco = (from p in db.Pessoas
                                          where p.Id == pessoaSelecionada.Id
                                          select p).Single();

                    db.Pessoas.DeleteOnSubmit(pessoaBanco);

                    db.SubmitChanges();

                    MessageBox.Show("Pessoa removida com sucesso!");

                    ListarPessoas();
                }
                else
                {
                    lblErro.Content = "Selecione um item da lista";
                }
            }
            catch
            {
                lblErro.Content = "Selecione um item da lista";
            }
        }

        private void txtTelefone_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
