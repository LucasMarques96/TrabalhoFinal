   M S B A M L   `   `   `  ����N  JWpfApplicationTeste, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WpfApplicationTesteWpfApplicationTeste  5   	   $    WpfApplicationTeste.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WpfApplicationTeste     5   	     � Title$  
MainWindow��5   	   $	��589��6   $	��834��6)   .��5	      � $��0,0,-8,0q�6   .+�5
   
   �� ���	#FFF4F4F5$
��Left=�6%   $	��155��6@   $��
10,386,0,0q�6M   
���   �$	��Top=�6p   $	��717��6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��dataGrid��5         AutoGenerateColumns .  $��8,52,0,0q�6?   $	��297��6~   $	��Top=�6�   $
��Left=�6�   $	��714��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Nome��6>   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Nome+6>     5      $ Telefone��6B    6%   �� *
Telefone+6B     5      $ E-mail��6?    6%   �� *Email+6?     5      $ Data de nascimento��6H    6%   �� *DataNascimento+6H   5      �� 5   
   -   5         ��Name$ label��5      $��	Pessoas
��6   $
��Left=�6;   $��8,10,0,0q�6V   $	��Top=�6h   $��18(�6�   $��37��6�   �� 5   
   -   5        $ label1��5      $��Nome:��6    $
��Left=�60   $��
23,417,0,0q�6K   $	��Top=�6_   �� 5   
   -   5        $ label2��5      $��Data de nascimento:��6    $
��Left=�6>   $��
23,449,0,0q�6Y   $	��Top=�6m   �� 5   
   -   5        $ label3��5      $��Email:��6    $
��Left=�61   $��
23,480,0,0q�6L   $	��Top=�6`   �� 5   
   -   5         ��Name$ txtNome��5      $
��Left=�6#   $��23��6>   $��
73,420,0,0q�6J    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $	��463��6�   �� 5   
   -   5        $ txtDtNascimento��5      $
��Left=�6+   $��23��6F   $��146,452,0,0q�6R   $
 Wrap=�6g   $	��Top=�6{   $��87��6�   �� 5   
   -   5        $ txtEmail��5      $
��Left=�6$   $��23��6?   $��
84,483,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��286��6�   �� 5   
   -	   5         ��Name$ 	btnSalvar��5      $��Salvar��6$   $��515,503,0,0q�65   $��27��6b   $	��Top=�6n   $
��Left=�6�   $��60��6�   �� 5   
   -
   5        $ btnCancelar��5      $��Cancelar��6&   $��628,503,0,0q�69   $
��Left=�6h   $��60��6�   $��27��6�   $	��Top=�6�   �� 5   
   -   5        $ 
btnDeletar��5      $��Deletar��6%   $��742,112,0,0q�67   $
��Left=�6e   $��70��6�   $��23��6�   $	��Top=�6�   �� 5   
   -   5        $ btnNova��5      $
��Nova��6"   $��
742,84,0,0q�61   $
��Left=�6[   $��70��6v   $��23��6�   $	��Top=�6�   �� 5   
   -   5        $ label4��5      $	��Id:��6    $
��Left=�6.   $��
23,386,0,0q�6I   $	��Top=�6]   	 J� RenderTransformOrigin$	 0.053,0.192&�6u   �� 5   
   -   5        $ lblId��5      $�� ��6   $
��Left=�6*   $��
84,386,0,0q�6E   $	��Top=�6Y   �� 5    
   -   5        $ label5��5       $��	Telefone:��6    $
��Left=�64   $��289,452,0,0q�6O   $	��Top=�6d   �� 5!   
   -   5        $ txtTelefone��5!      $��351,453,0,0q�6'   $
 Wrap=�6<   $
��Left=�6v   $	��120��6�   $��23��6�   $	��Top=�6�   �� 5"   
   -   5        $ lblErro��5"      $�� ��6!   $
��Left=�6,   $��
10,346,0,0q�6G   $	��Top=�6[   $	 -0.737,-0.308&�6s   $	��461��6�   5#      5$      