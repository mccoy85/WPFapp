   M S B A M L   `   `   `  ���� I  EWpfApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:WpfApplicationWpfApplication      WpfApplication.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:WpfApplication     -     �Name$  
mainWindow�� � Title$ Directory Calculator��$	��352��$	��645��.���  � RowDefinitions �� �� $��0* �.+�7  1System.Windows.Forms.Integration.WindowsFormsHost  -     Name$
 form��$
��Left=�$	��320��$��0,1,-2,0q�$	��Top=�$	��640���� -    ��Name$
 txt1��$
��Left=�$��20��$��	49,77,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��161��{�.  �� -   $
 txt2��$
��Left=�$��20��$��
49,121,0,0q�$
 Wrap=�$	��Top=�$	��161�� J� RenderTransformOrigin$ 0.851,0.088&�{�.  �� -    ��Name$ btnDir1��$��Select Directory 1��$
��Left=�$��20��$��
293,77,0,0q�$	��Top=�$	��122��$ 0.022,-1.748&��� -   $ btnDir2��$��Select Directory 2��$
��Left=�$��20��$��293,121,0,0q�$	��Top=�$	��122��$ 0.022,-1.748&�{�.  �� -   $
 txt3��$
��Left=�$��20��$��
49,162,0,0q�$
 Wrap=�$	��Top=�$	��161��$ 0.851,0.088&�{�.  �� -   $ btnDir3��$��Select Directory 3��$
��Left=�$��20��$��293,162,0,0q�$	��Top=�$	��122��$ 0.022,-1.748&�{�.  �� -	   $ btnRun��$	��Run��$
��Left=�$��293,212,0,0q�$	��Top=�$	��122��� -
   $��Popup1��$	��640��$	��300��$��Center=� � PlacementTarget �� 	 �� ElementName$
	 form��.���� 
�������.+��� -   $ btnPopup��$��54��$��Close���� -   $��lblpopUp��$��15(�$
��Wrap=��� -   
 ��Name$
 label��$3��-Please select at least at least one directory��$��Center=�$	��Top=�$��47��$	��640��$��0,0,-2,0q�$��24(�