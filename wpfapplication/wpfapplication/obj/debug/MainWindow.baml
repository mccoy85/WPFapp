   M S B A M L   `   `   `  ����I  EWpfApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:WpfApplicationWpfApplication  5   	       WpfApplication.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:WpfApplication     5   	   -   5          �Name$  
mainWindow��5   	    � Title$ Directory Calculator��5   	   $	��352��6&   $	��645��63   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      $��0* �6   .+�5   
   7  1System.Windows.Forms.Integration.WindowsFormsHost  -   5          Name$
 form��5      $
��Left=�6)   $	��320��6D   $��0,1,-2,0q�6Q   $	��Top=�6c   $	��640��6{   �� 5   
   -   5         ��Name$
 txt1��5      $
��Left=�6    $��20��6;   $��	49,77,0,0q�6G    �� TextWrapping$
 Wrap=�6Z   $	��Top=�6n   $	��161��6�   {�.  6�   �� 5   
   -   5        $
 txt2��5      $
��Left=�6    $��20��6;   $��
49,121,0,0q�6G   $
 Wrap=�6[   $	��Top=�6o   $	��161��6�    J� RenderTransformOrigin$ 0.851,0.088&�6�   {�.  6�   �� 5   
   -   5         ��Name$ btnDir1��5      $��Select Directory 1��6"   $
��Left=�6?   $��20��6Z   $��
293,77,0,0q�6f   $	��Top=�6z   $	��122��6�   $ 0.022,-1.748&�6�   6�   �� 5   
   -   5        $ btnDir2��5      $��Select Directory 2��6"   $
��Left=�6?   $��20��6Z   $��293,121,0,0q�6f   $	��Top=�6{   $	��122��6�   $ 0.022,-1.748&�6�   {�.  6�   �� 5   
   -   5        $
 txt3��5      $
��Left=�6    $��20��6;   $��
49,162,0,0q�6G   $
 Wrap=�6[   $	��Top=�6o   $	��161��6�   $ 0.851,0.088&�6�   {�.  6�   �� 5   
   -   5        $ btnDir3��5      $��Select Directory 3��6"   $
��Left=�6?   $��20��6Z   $��293,162,0,0q�6f   $	��Top=�6{   $	��122��6�   $ 0.022,-1.748&�6�   {�.  6�   �� 5   
   -	   5        $ btnRun��5      $	��Run��6!   $
��Left=�6/   $��293,212,0,0q�6J   $	��Top=�6_   $	��122��6w   6�   � 5   
   -
   5        $��Popup1��5      $	��640��6   $	��300��6*   $��Center=�67    � PlacementTarget 6J   �� 	 �� ElementName$
	 form��.��5      �� 
�������.+�5      �� -   5        $ btnPopup��5      $��54��6B   $��Close��6N   �� 5      -   5        $��lblpopUp��5      $��15(�6,   $
��Wrap=�6:   5      5      �� 5   
   -   5        
 ��Name$
 label��5      $3��-Please select at least at least one directory��6   $��Center=�6W   $	��Top=�6t   $��47��6�   $	��640��6�   $��0,0,-2,0q�6�   $��24(�6�   5#      5$      