   M S B A M L   `   `   `  ����D  @ClinicApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:ClinicApp.XamlPagesClinicApp.XamlPages  5      ?$clr-namespace:ClinicApp.EntityModelsClinicApp.EntityModels  5      ,    &ClinicApp.XamlPages.ListOfPatientsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:ClinicApp.XamlPages     5      <localModels$clr-namespace:ClinicApp.EntityModels     5      -   5          N�Name$
  page��5
   7   $
��1200��5	       N� Title$ ListOfPatientsPage��5
       N� 
Background
 ����� � 	Resources 5      2   ,ClinicApp.XamlPages.EnumDescriptionConverter   EnumDescriptionConverter&    ClinicApp.XamlPages.AgeConverter  AgeConverter��%:   &	        &	        5   
   6)     5   
   6   5      .��5      ]� ��. 
�������.+�5   
   c� -   5         c�Name$ toolBar��5      $	��Top=�6#   
�������.@�5      �� -   5         ��Name$ spToolsForPatientCards��5       �� Orientation$ 
Horizontal=�69   .+�5      �� -   5         ��Name$ 	txtSearch��5      $0��*Введите имя для поиска:��6/   $��18(�6N   $��Sitka Display)�5      $��SemiBold"�67   $��Center=�6M   �� 5      -   5         ��Name$ txtBoxSearch��5      ���#c9f3fd
���   �$��1q�5      $	��150��6.   $��18(�5      $��Sitka Display)�6(   $��SemiBold"�6C   $��20��6Y   5      �� 5      -   5        	 ��Name$	 lblPatientName��5      $��18(�6,   $��SemiBold"�6:   $��Sitka Display)�6P   $��	350,0,0,0q�6k   �� 5      -   5        
 ��Name$
 btnAddNewRequest��5   *   $	��Top=�6     GreenBlueButton#��[ 6D   $)��#Добавить обращение��6p   $y�	Collapsed=�5      6,   5      �� 5   
   -   5        $ spWithDataGrids��5      $ 
Horizontal=�6.   .+�5      �� -	   5        $	 
lblLoading��5      $��78(�6(   $
��Bold"�66   $y�	Collapsed=�6H   $��Center=�5      $��Center=�6/   $��20,0,0,0q�6L   $��Center=�5      $��Center=�68   ��5       �� 5!       �� EndPoint$ 0.5,1&�6*    � MappingMode$ RelativeToBoundingBox=�6;    �� 
StartPoint$ 0.5,0&�6_   .��5"      �  � Color$ 	LightBlue��6'   � 5#      $ 	#FF40F79C��6'    � Offset$ 1Q�69   5$      5&      &   System.Windows.Controls.DataGrid  5'      -
   5          Name$ 
dgPatients��5'      $y�Visible=�6D   ��6+   ��    Columns 5(      0  *System.Windows.Controls.DataGridTextColumn  5)      -   5        iDColumn��,  &System.Windows.Controls.DataGridColumn   Header$ ID��5)   R      Width5  /System.Windows.Controls.DataGridLengthConverter$ 35 6^   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *Id+6^     5*      -   5        
nameColumn��$ ФИО��5*   V   $	 200 6c    6=   �� *Name+6c     5+      -   5        nameAddress��$ 
Адрес��5+   Z   $	 330 6i    6>   �� *	Address+6i     5,      -   5        dateOfBirthColumn��$ Дата рождения��5,   }   $	 110 6�    6D   �� *DateOfBirth+ �� StringFormat$ 
dd.MM.yyyy��6�   4  .System.Windows.Controls.DataGridTemplateColumn  5-      $ Возраст��6-   $ 60 6>      CellTemplate 5.      �� 5/      .R�50   "   �� ��6,   �� *DateOfBirth+ �� 	Converter# [ 51      53        54      -   5        phoneNumberColumn��$ Телефон��54   d   $	 125 6u    6D   �� *PhoneNumber+6u     55      -   5        genderColumn��$ Пол��55   �   $ 80 6�    6?   �� *Gender+# [  6�     56      $  Редактировать��6-    57      �� 58      .R�59   "   �� $
 btnModifyPatient��6)   -   5        #��[ 59   C   $ ��Редактировать��6o   $	��100��6�   5:      5<        5=      $ Обращения��6-    5>      �� 5?      .R�5@   "   �� $
 btnPatientRequests��6)   -   5        #��[ 5@   E   $��Обращения��6q   $��80��6�   5A      5C        5D      $ Удалить��6-    5E      �� 5F      .R�5G   "   �� $
 btnDeletePatient��6)   -   5        #��[ 5G   C   $��Удалить��6o   $��60��6�   5H      5J      5L        5M      -   5        $ 
dgRequests��5M      $y�	Collapsed=�6C   $��Stretch=�5N      $��Stretch=�65   ��5M   +   ��  5O        5P      -   5        requestDateColumn��$! Дата обращения��5P      $	 175 6�    6D   �� *DateOfRequest+$ 
dd.MM.yyyy��6�     5Q      -   5        requestTypeColumn��$ Тип обращения��5Q   �   $	 190 6�    6D   �� *RequestType+# [  6�     5R      -   5        зurposeColumn��$ Цель��5R   \   $	 565 6j    6@   �� *	Purpose+6j     5S      $  Редактировать��6-   $	 125 6D    5T      �� 5U      .R�5V   "   �� $
 btnModifyRequest��6)   -   5        #��[ 5V   C   $ ��Редактировать��6p   6�   5W      5Y        5Z      $ Удалить��6-   $	 125 6>    5[      �� 5\      .R�5]   "   �� $
 btnDeleteRequest��6)   -   5        #��[ 5]   C   $��Удалить��6p   6�   5^      5`      5b      5c      5d      5e      