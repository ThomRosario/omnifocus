FasdUAS 1.101.10   ��   ��    k             l     ��  ��    a [ This property controls whether full project paths (including parent folders) are displayed     � 	 	 �   T h i s   p r o p e r t y   c o n t r o l s   w h e t h e r   f u l l   p r o j e c t   p a t h s   ( i n c l u d i n g   p a r e n t   f o l d e r s )   a r e   d i s p l a y e d   
  
 j     �� �� 20 includefullprojectpaths includeFullProjectPaths  m     ��
�� boovtrue      l     ��������  ��  ��        l     ��  ��    L F These properties control whether additional task content is displayed     �   �   T h e s e   p r o p e r t i e s   c o n t r o l   w h e t h e r   a d d i t i o n a l   t a s k   c o n t e n t   i s   d i s p l a y e d      j    �� �� (0 includetaskcontext includeTaskContext  m    ��
�� boovfals      j    �� �� 40 includetaskestimatedtime includeTaskEstimatedTime  m    ��
�� boovfals      j   	 �� �� ,0 includetaskstartdate includeTaskStartDate  m   	 
��
�� boovtrue      j    �� �� :0 includetaskmodificationdate includeTaskModificationDate  m    ��
�� boovfals     !   j    �� "�� 60 includetaskcompletiondate includeTaskCompletionDate " m    ��
�� boovtrue !  # $ # j    �� %�� $0 includetasknotes includeTaskNotes % m    ��
�� boovfals $  & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * 5 / This setting specifies a name for the new note    + � , , ^   T h i s   s e t t i n g   s p e c i f i e s   a   n a m e   f o r   t h e   n e w   n o t e )  - . - j    �� /�� 0 thenotename theNoteName / m     0 0 � 1 1 > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t .  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 7 1 Prompt the user to choose a scope for the report    7 � 8 8 b   P r o m p t   t h e   u s e r   t o   c h o o s e   a   s c o p e   f o r   t h e   r e p o r t 5  9 : 9 l     �� ; <��   ;  activate    < � = =  a c t i v a t e :  > ? > l     �� @ A��   @ � �set theReportScope to choose from list {"Today", "Yesterday", "This Week", "Last Week", "This Month"} default items {"Yesterday"} with prompt "Generate a report for:" with title "OmniFocus Completed Task Report"    A � B B� s e t   t h e R e p o r t S c o p e   t o   c h o o s e   f r o m   l i s t   { " T o d a y " ,   " Y e s t e r d a y " ,   " T h i s   W e e k " ,   " L a s t   W e e k " ,   " T h i s   M o n t h " }   d e f a u l t   i t e m s   { " Y e s t e r d a y " }   w i t h   p r o m p t   " G e n e r a t e   a   r e p o r t   f o r : "   w i t h   t i t l e   " O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t " ?  C D C l     �� E F��   E + %if theReportScope = false then return    F � G G J i f   t h e R e p o r t S c o p e   =   f a l s e   t h e n   r e t u r n D  H I H l     �� J K��   J 4 .set theReportScope to item 1 of theReportScope    K � L L \ s e t   t h e R e p o r t S c o p e   t o   i t e m   1   o f   t h e R e p o r t S c o p e I  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q K E Calculate the task start and end dates, based on the specified scope    R � S S �   C a l c u l a t e   t h e   t a s k   s t a r t   a n d   e n d   d a t e s ,   b a s e d   o n   t h e   s p e c i f i e d   s c o p e P  T U T l     V���� V r      W X W I    ������
�� .misccurdldt    ��� null��  ��   X o      ���� 0 thestartdate theStartDate��  ��   U  Y Z Y l    [���� [ r     \ ] \ m    	����   ] n       ^ _ ^ 1   
 ��
�� 
hour _ o   	 
���� 0 thestartdate theStartDate��  ��   Z  ` a ` l    b���� b r     c d c m    ����   d n       e f e 1    ��
�� 
min  f o    ���� 0 thestartdate theStartDate��  ��   a  g h g l    i���� i r     j k j m    ����   k n       l m l m    ��
�� 
scnd m o    ���� 0 thestartdate theStartDate��  ��   h  n o n l   ' p���� p r    ' q r q [    % s t s [    # u v u [     w x w o    ���� 0 thestartdate theStartDate x l    y���� y ]     z { z m    ����  { 1    ��
�� 
hour��  ��   v l   " |���� | ]    " } ~ } m     ���� ; ~ 1     !��
�� 
min ��  ��   t m   # $���� ; r o      ���� 0 
theenddate 
theEndDate��  ��   o   �  l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! if theReportScope = "Today" then    � � � � B   i f   t h e R e p o r t S c o p e   =   " T o d a y "   t h e n �  � � � l     �� � ���   � 7 1 	set theDateRange to date string of theStartDate    � � � � b   	 s e t   t h e D a t e R a n g e   t o   d a t e   s t r i n g   o f   t h e S t a r t D a t e �  � � � l     �� � ���   � 0 * else if theReportScope = "Yesterday" then    � � � � T   e l s e   i f   t h e R e p o r t S c o p e   =   " Y e s t e r d a y "   t h e n �  � � � l     �� � ���   � 3 - 	set theStartDate to theStartDate - 1 * days    � � � � Z   	 s e t   t h e S t a r t D a t e   t o   t h e S t a r t D a t e   -   1   *   d a y s �  � � � l     �� � ���   � / ) 	set theEndDate to theEndDate - 1 * days    � � � � R   	 s e t   t h e E n d D a t e   t o   t h e E n d D a t e   -   1   *   d a y s �  � � � l     �� � ���   � 7 1 	set theDateRange to date string of theStartDate    � � � � b   	 s e t   t h e D a t e R a n g e   t o   d a t e   s t r i n g   o f   t h e S t a r t D a t e �  � � � l     �� � ���   � 0 * else if theReportScope = "This Week" then    � � � � T   e l s e   i f   t h e R e p o r t S c o p e   =   " T h i s   W e e k "   t h e n �  � � � l     �� � ���   � 7 1 	repeat until (weekday of theStartDate) = Sunday    � � � � b   	 r e p e a t   u n t i l   ( w e e k d a y   o f   t h e S t a r t D a t e )   =   S u n d a y �  � � � l     �� � ���   � 4 . 		set theStartDate to theStartDate - 1 * days    � � � � \   	 	 s e t   t h e S t a r t D a t e   t o   t h e S t a r t D a t e   -   1   *   d a y s �  � � � l     �� � ���   �   	end repeat    � � � �    	 e n d   r e p e a t �  � � � l     �� � ���   � 7 1 	repeat until (weekday of theEndDate) = Saturday    � � � � b   	 r e p e a t   u n t i l   ( w e e k d a y   o f   t h e E n d D a t e )   =   S a t u r d a y �  � � � l     �� � ���   � 0 * 		set theEndDate to theEndDate + 1 * days    � � � � T   	 	 s e t   t h e E n d D a t e   t o   t h e E n d D a t e   +   1   *   d a y s �  � � � l     �� � ���   �   	end repeat    � � � �    	 e n d   r e p e a t �  � � � l     �� � ���   � e _ 	set theDateRange to (date string of theStartDate) & " through " & (date string of theEndDate)    � � � � �   	 s e t   t h e D a t e R a n g e   t o   ( d a t e   s t r i n g   o f   t h e S t a r t D a t e )   &   "   t h r o u g h   "   &   ( d a t e   s t r i n g   o f   t h e E n d D a t e ) �  � � � l     �� � ���   � 0 * else if theReportScope = "Last Week" then    � � � � T   e l s e   i f   t h e R e p o r t S c o p e   =   " L a s t   W e e k "   t h e n �  � � � l     �� � ���   � 3 - 	set theStartDate to theStartDate - 7 * days    � � � � Z   	 s e t   t h e S t a r t D a t e   t o   t h e S t a r t D a t e   -   7   *   d a y s �  � � � l     �� � ���   � / ) 	set theEndDate to theEndDate - 7 * days    � � � � R   	 s e t   t h e E n d D a t e   t o   t h e E n d D a t e   -   7   *   d a y s �  � � � l     �� � ���   � 7 1 	repeat until (weekday of theStartDate) = Sunday    � � � � b   	 r e p e a t   u n t i l   ( w e e k d a y   o f   t h e S t a r t D a t e )   =   S u n d a y �  � � � l     �� � ���   � 4 . 		set theStartDate to theStartDate - 1 * days    � � � � \   	 	 s e t   t h e S t a r t D a t e   t o   t h e S t a r t D a t e   -   1   *   d a y s �  � � � l     �� � ���   �   	end repeat    � � � �    	 e n d   r e p e a t �  � � � l     �� � ���   � 7 1 	repeat until (weekday of theEndDate) = Saturday    � � � � b   	 r e p e a t   u n t i l   ( w e e k d a y   o f   t h e E n d D a t e )   =   S a t u r d a y �  � � � l     �� � ���   � 0 * 		set theEndDate to theEndDate + 1 * days    � � � � T   	 	 s e t   t h e E n d D a t e   t o   t h e E n d D a t e   +   1   *   d a y s �  � � � l     �� � ���   �   	end repeat    � � � �    	 e n d   r e p e a t �  � � � l     �� � ���   � e _ 	set theDateRange to (date string of theStartDate) & " through " & (date string of theEndDate)    � � � � �   	 s e t   t h e D a t e R a n g e   t o   ( d a t e   s t r i n g   o f   t h e S t a r t D a t e )   &   "   t h r o u g h   "   &   ( d a t e   s t r i n g   o f   t h e E n d D a t e ) �  � � � l     �� � ���   � 1 + else if theReportScope = "This Month" then    � � � � V   e l s e   i f   t h e R e p o r t S c o p e   =   " T h i s   M o n t h "   t h e n �  � � � l     �� ��    . ( 	repeat until (day of theStartDate) = 1    � P   	 r e p e a t   u n t i l   ( d a y   o f   t h e S t a r t D a t e )   =   1 �  l     ����   4 . 		set theStartDate to theStartDate - 1 * days    � \   	 	 s e t   t h e S t a r t D a t e   t o   t h e S t a r t D a t e   -   1   *   d a y s 	 l     ��
��  
   	end repeat    �    	 e n d   r e p e a t	  l     ����   R L 	repeat until (month of theEndDate) is not equal to (month of theStartDate)    � �   	 r e p e a t   u n t i l   ( m o n t h   o f   t h e E n d D a t e )   i s   n o t   e q u a l   t o   ( m o n t h   o f   t h e S t a r t D a t e )  l     ����   0 * 		set theEndDate to theEndDate + 1 * days    � T   	 	 s e t   t h e E n d D a t e   t o   t h e E n d D a t e   +   1   *   d a y s  l     ����     	end repeat    �    	 e n d   r e p e a t  l     ����   / ) 	set theEndDate to theEndDate - 1 * days    �   R   	 s e t   t h e E n d D a t e   t o   t h e E n d D a t e   -   1   *   d a y s !"! l     ��#$��  # e _ 	set theDateRange to (date string of theStartDate) & " through " & (date string of theEndDate)   $ �%% �   	 s e t   t h e D a t e R a n g e   t o   ( d a t e   s t r i n g   o f   t h e S t a r t D a t e )   &   "   t h r o u g h   "   &   ( d a t e   s t r i n g   o f   t h e E n d D a t e )" &'& l     ��()��  (   end if   ) �**    e n d   i f' +,+ l     ��������  ��  ��  , -.- l     ��/0��  / A ; Forcing the report to be just this week; copied from above   0 �11 v   F o r c i n g   t h e   r e p o r t   t o   b e   j u s t   t h i s   w e e k ;   c o p i e d   f r o m   a b o v e. 232 l  ( >4����4 W   ( >565 r   2 9787 \   2 79:9 o   2 3���� 0 thestartdate theStartDate: ]   3 6;<; m   3 4���� < 1   4 5��
�� 
days8 o      ���� 0 thestartdate theStartDate6 =   , 1=>= l  , /?����? n   , /@A@ m   - /��
�� 
wkdyA o   , -���� 0 thestartdate theStartDate��  ��  > m   / 0��
�� 
sun ��  ��  3 BCB l  ? UD����D W   ? UEFE r   I PGHG [   I NIJI o   I J���� 0 
theenddate 
theEndDateJ ]   J MKLK m   J K���� L 1   K L��
�� 
daysH o      �� 0 
theenddate 
theEndDateF =   C HMNM l  C FO�~�}O n   C FPQP m   D F�|
�| 
wkdyQ o   C D�{�{ 0 
theenddate 
theEndDate�~  �}  N m   F G�z
�z 
sat ��  ��  C RSR l  V aT�y�xT r   V aUVU b   V _WXW b   V [YZY l  V Y[�w�v[ n   V Y\]\ 1   W Y�u
�u 
dstr] o   V W�t�t 0 thestartdate theStartDate�w  �v  Z m   Y Z^^ �__    t h r o u g h  X l  [ ^`�s�r` n   [ ^aba 1   \ ^�q
�q 
dstrb o   [ \�p�p 0 
theenddate 
theEndDate�s  �r  V o      �o�o 0 thedaterange theDateRange�y  �x  S cdc l     �n�m�l�n  �m  �l  d efe l     �kgh�k  g - ' Begin preparing the task list as HTML.   h �ii N   B e g i n   p r e p a r i n g   t h e   t a s k   l i s t   a s   H T M L .f jkj l  b ml�j�il r   b mmnm b   b iopo b   b eqrq m   b css �tt V < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < b r > < b >r o   c d�h�h 0 thedaterange theDateRangep m   e huu �vv   < / b > < b r > < h r > < b r >n o      �g�g &0 theprogressdetail theProgressDetail�j  �i  k wxw l     �f�e�d�f  �e  �d  x yzy l     �c{|�c  { F @ Retrieve a list of projects modified within the specified scope   | �}} �   R e t r i e v e   a   l i s t   o f   p r o j e c t s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p ez ~~ l  n s��b�a� r   n s��� m   n o�`
�` boovfals� o      �_�_ .0 modifiedtasksdetected modifiedTasksDetected�b  �a   ��� l  t��^�]� O   t��� O   z��� k   ��� ��� r   � ���� 6 � ���� 2   � ��\
�\ 
FCfx� F   � ���� ?  � ���� n  � ���� 1   � ��[
�[ 
FCDm�  g   � �� o   � ��Z�Z 0 thestartdate theStartDate� A  � ���� 1   � ��Y
�Y 
FCDm� o   � ��X�X 0 
theenddate 
theEndDate� o      �W�W *0 themodifiedprojects theModifiedProjects� ��� l  � ��V���V  � ) # Loop through any detected projects   � ��� F   L o o p   t h r o u g h   a n y   d e t e c t e d   p r o j e c t s� ��U� Y   ���T���S� k   ��� ��� r   � ���� n   � ���� 4   � ��R�
�R 
cobj� 1   � ��Q
�Q 
OSav� o   � ��P�P *0 themodifiedprojects theModifiedProjects� o      �O�O &0 thecurrentproject theCurrentProject� ��� l  � ��N���N  � E ? Retrieve any project tasks modified within the specified scope   � ��� ~   R e t r i e v e   a n y   p r o j e c t   t a s k s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� r   ���� l  � ���M�L� 6 � ���� n   � ���� 2   � ��K
�K 
FCft� o   � ��J�J &0 thecurrentproject theCurrentProject� F   � ���� F   � ���� F   � ���� =   � ���� n  � ���� 1   � ��I
�I 
FCcd�  g   � �� m   � ��H
�H boovtrue� ?  � ���� 1   � ��G
�G 
FCDm� o   � ��F�F 0 thestartdate theStartDate� A  � ���� 1   � ��E
�E 
FCDm� o   � ��D�D 0 
theenddate 
theEndDate� =   � ���� 1   � ��C
�C 
FC#t� m   � ��B�B  �M  �L  � o      �A�A &0 thecompletedtasks theCompletedTasks� ��� l �@���@  � . ( Process the project if tasks were found   � ��� P   P r o c e s s   t h e   p r o j e c t   i f   t a s k s   w e r e   f o u n d� ��?� Z  ���>�=� > ��� o  �<�< &0 thecompletedtasks theCompletedTasks� J  �;�;  � k  	�� ��� r  ��� m  �:
�: boovtrue� o      �9�9 .0 modifiedtasksdetected modifiedTasksDetected� ��� l �8���8  � 9 3 Append the project folder path to the project name   � ��� f   A p p e n d   t h e   p r o j e c t   f o l d e r   p a t h   t o   t h e   p r o j e c t   n a m e� ��� r  ��� m  �� ���  � o      �7�7 ,0 theprojectfolderpath theProjectFolderPath� ��� Z  M���6�5� =   ��� o  �4�4 20 includefullprojectpaths includeFullProjectPaths� m  �3
�3 boovtrue� k  #I�� ��� r  #/��� n  #+��� I  $+�2��1�2 ,0 getprojectfolderpath getProjectFolderPath� ��0� o  $'�/�/ &0 thecurrentproject theCurrentProject�0  �1  �  f  #$� o      �.�. ,0 theprojectfolderpath theProjectFolderPath� ��-� Z 0I���,�+� > 07��� o  03�*�* ,0 theprojectfolderpath theProjectFolderPath� m  36�� ���  � r  :E��� b  :A��� o  :=�)�) ,0 theprojectfolderpath theProjectFolderPath� m  =@�� ���    >  � o      �(�( ,0 theprojectfolderpath theProjectFolderPath�,  �+  �-  �6  �5  � ��� l NN�' �'    , & Append the project name to the report    � L   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   r e p o r t�  r  Nq b  Nm b  Ni	
	 b  Ne b  Na b  NY b  NU o  NQ�&�& &0 theprogressdetail theProgressDetail m  QT �  < h 2 > o  UX�%�% ,0 theprojectfolderpath theProjectFolderPath n  Y` 1  \`�$
�$ 
pnam o  Y\�#�# &0 thecurrentproject theCurrentProject m  ad � 
 < / h 2 >
 o  eh�"
�" 
ret  m  il �  < b r > < u l > o      �!�! &0 theprogressdetail theProgressDetail  l rr� �    6 0 Loop through the detected tasks for the project    � `   L o o p   t h r o u g h   t h e   d e t e c t e d   t a s k s   f o r   t h e   p r o j e c t  !  Y  r�"�#$�" k  ��%% &'& r  ��()( n  ��*+* 4  ���,
� 
cobj, 1  ���
� 
OSbv+ o  ���� &0 thecompletedtasks theCompletedTasks) o      ��  0 thecurrenttask theCurrentTask' -.- l ���/0�  / / ) Append the tasks's name to the task list   0 �11 R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s t. 232 r  ��454 b  ��676 b  ��898 o  ���� &0 theprogressdetail theProgressDetail9 m  ��:: �;;  < l i >7 n  ��<=< 1  ���
� 
pnam= o  ����  0 thecurrenttask theCurrentTask5 o      �� &0 theprogressdetail theProgressDetail3 >?> l ���@A�  @ 9 3 Set up a variable for the task detail, if relevant   A �BB f   S e t   u p   a   v a r i a b l e   f o r   t h e   t a s k   d e t a i l ,   i f   r e l e v a n t? CDC r  ��EFE m  ��GG �HH  F o      �� 0 thetaskdetail theTaskDetailD IJI l ���KL�  K , & Append the context to the task detail   L �MM L   A p p e n d   t h e   c o n t e x t   t o   t h e   t a s k   d e t a i lJ NON Z  ��PQ��P =  ��RSR o  ���� (0 includetaskcontext includeTaskContextS m  ���
� boovtrueQ k  ��TT UVU r  ��WXW n  ��YZY m  ���
� 
FCctZ o  ����  0 thecurrenttask theCurrentTaskX o      �� 0 
thecontext 
theContextV [�
[ Z ��\]�	�\ > ��^_^ o  ���� 0 
thecontext 
theContext_ m  ���
� 
msng] r  ��`a` n  ��bcb I  ���d�� $0 appendtaskdetail appendTaskDetaild efe o  ���� 0 thetaskdetail theTaskDetailf ghg n  ��iji 1  ���
� 
pnamj o  ���� 0 
thecontext 
theContexth klk m  ��mm �nn  C o n t e x tl o� o m  ��pp �qq  �   �  c  f  ��a o      ���� 0 thetaskdetail theTaskDetail�	  �  �
  �  �  O rsr l ����tu��  t 3 - Append the estimated time to the task detail   u �vv Z   A p p e n d   t h e   e s t i m a t e d   t i m e   t o   t h e   t a s k   d e t a i ls wxw Z �yz����y =  ��{|{ o  ������ 40 includetaskestimatedtime includeTaskEstimatedTime| m  ����
�� boovtruez r  �}~} n  �� I  �������� $0 appendtaskdetail appendTaskDetail� ��� o  ������ 0 thetaskdetail theTaskDetail� ��� n  ���� 1  ��
�� 
FCEM� o  �����  0 thecurrenttask theCurrentTask� ��� m  	�� ���  E s t i m a t e d   T i m e� ���� m  	�� ���    m i n u t e s��  ��  �  f  ��~ o      ���� 0 thetaskdetail theTaskDetail��  ��  x ��� l ������  � / ) Append the start date to the task detail   � ��� R   A p p e n d   t h e   s t a r t   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z D������� =  "��� o   ���� ,0 includetaskstartdate includeTaskStartDate� m   !��
�� boovtrue� r  %@��� n  %<��� I  &<������� $0 appendtaskdetail appendTaskDetail� ��� o  &)���� 0 thetaskdetail theTaskDetail� ��� n  )0��� 1  ,0��
�� 
FCDs� o  ),����  0 thecurrenttask theCurrentTask� ��� m  03�� ���  S t a r t   D a t e� ���� m  36�� ���  ��  ��  �  f  %&� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l EE������  � 6 0 Append the modification date to the task detail   � ��� `   A p p e n d   t h e   m o d i f i c a t i o n   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z En������� =  EL��� o  EJ���� ,0 includetaskstartdate includeTaskStartDate� m  JK��
�� boovtrue� r  Oj��� n  Of��� I  Pf������� $0 appendtaskdetail appendTaskDetail� ��� o  PS���� 0 thetaskdetail theTaskDetail� ��� n  SZ��� 1  VZ��
�� 
FCDm� o  SV����  0 thecurrenttask theCurrentTask� ��� m  Z]�� ��� " M o d i f i c a t i o n   D a t e� ���� m  ]`�� ���  ��  ��  �  f  OP� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l oo������  � 4 . Append the completion date to the task detail   � ��� \   A p p e n d   t h e   c o m p l e t i o n   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z o�������� =  ov��� o  ot���� ,0 includetaskstartdate includeTaskStartDate� m  tu��
�� boovtrue� r  y���� n  y���� I  z�������� $0 appendtaskdetail appendTaskDetail� ��� o  z}���� 0 thetaskdetail theTaskDetail� ��� n  }���� 1  ����
�� 
FCdc� o  }�����  0 thecurrenttask theCurrentTask� ��� m  ���� ���  C o m p l e t i o n   D a t e� ���� m  ���� ���  ��  ��  �  f  yz� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l ��������  � 1 + Append the task's notes to the task detail   � ��� V   A p p e n d   t h e   t a s k ' s   n o t e s   t o   t h e   t a s k   d e t a i l� ��� Z ��������� =  ����� o  ������ $0 includetasknotes includeTaskNotes� m  ����
�� boovtrue� r  ����� n  ����� I  ��������� $0 appendtaskdetail appendTaskDetail� ��� o  ������ 0 thetaskdetail theTaskDetail� ��� n  ����� 1  ����
�� 
FCno� o  ������  0 thecurrenttask theCurrentTask� ��� m  ���� ���  N o t e�  ��  m  �� �  ��  ��  �  f  ��� o      ���� 0 thetaskdetail theTaskDetail��  ��  �  l ������   . ( Append the task detail to the task list    � P   A p p e n d   t h e   t a s k   d e t a i l   t o   t h e   t a s k   l i s t 	 Z  ��
����
 > �� o  ������ 0 thetaskdetail theTaskDetail m  �� �   r  �� b  �� b  �� b  �� o  ������ &0 theprogressdetail theProgressDetail m  �� � 6 < b r > < p   s t y l e = " c o l o r :   g r a y " > o  ������ 0 thetaskdetail theTaskDetail m  �� �  < / p > o      ���� &0 theprogressdetail theProgressDetail��  ��  	  l ������   0 * Finish adding the task's HTML to the list    �   T   F i n i s h   a d d i n g   t h e   t a s k ' s   H T M L   t o   t h e   l i s t !��! r  ��"#" b  ��$%$ b  ��&'& o  ������ &0 theprogressdetail theProgressDetail' m  ��(( �)) 
 < / l i >% o  ����
�� 
ret # o      ���� &0 theprogressdetail theProgressDetail��  
� 
OSbv# m  uv���� $ n  v~*+* 1  y}��
�� 
leng+ o  vy���� &0 thecompletedtasks theCompletedTasks�  ! ,��, r  �	-.- b  �/0/ b  �121 o  ������ &0 theprogressdetail theProgressDetail2 m  � 33 �44 
 < / u l >0 o  ��
�� 
ret . o      ���� &0 theprogressdetail theProgressDetail��  �>  �=  �?  
�T 
OSav� m   � ����� � n   � �565 1   � ���
�� 
leng6 o   � ����� *0 themodifiedprojects theModifiedProjects�S  �U  � 4  z ���7
�� 
docu7 m   ~ ���� � m   t w88�                                                                                  OFOC  alis    F  Mac HD                     ϙZ4H+     OOmniFocus.app                                                   9����C1        ����  	                Applications    ϙ�t      ��{q       O  "Mac HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c   H D  Applications/OmniFocus.app  / ��  �^  �]  � 9:9 l  ;����; r   <=< b  >?> o  ���� &0 theprogressdetail theProgressDetail? m  @@ �AA  < / b o d y > < / h t m l >= o      ���� &0 theprogressdetail theProgressDetail��  ��  : BCB l     ��������  ��  ��  C DED l     ��FG��  F 9 3 Notify the user if no projects or tasks were found   G �HH f   N o t i f y   t h e   u s e r   i f   n o   p r o j e c t s   o r   t a s k s   w e r e   f o u n dE IJI l !EK����K Z  !ELM����L =  !&NON o  !$���� .0 modifiedtasksdetected modifiedTasksDetectedO m  $%��
�� boovfalsM k  )APP QRQ I )>��ST
�� .sysodisAaleR        TEXTS m  ),UU �VV > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r tT ��W��
�� 
mesSW b  /:XYX b  /6Z[Z m  /2\\ �]] B N o   m o d i f i e d   t a s k s   w e r e   f o u n d   f o r  [ o  25����  0 thereportscope theReportScopeY m  69^^ �__  .��  R `��` L  ?A����  ��  ��  ��  ��  ��  J aba l     ��������  ��  ��  b cdc l     ��ef��  e #  Create the note in Evernote.   f �gg :   C r e a t e   t h e   n o t e   i n   E v e r n o t e .d hih l F~j����j O  F~klk k  L}mm non I LQ������
�� .miscactvnull��� ��� null��  ��  o pqp r  Rqrsr I Rm����t
�� .EVRNcrntnull��� ��� null��  t ��uv
�� 
Ennbu m  VYww �xx 
 I n b o xv ��yz
�� 
Entty o  \a���� 0 thenotename theNoteNamez ��{��
�� 
Enhl{ o  dg���� &0 theprogressdetail theProgressDetail��  s o      ���� 0 thenote theNoteq |��| I r}����}
�� .EVRNonwnnull��� ��� null��  } ��~��
�� 
EV17~ o  vy�� 0 thenote theNote��  ��  l m  FI�                                                                                  EVRN  alis    D  Mac HD                     ϙZ4H+     OEvernote.app                                                    S�WW�        ����  	                Applications    ϙ�t      �W�+       O  !Mac HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c   H D  Applications/Evernote.app   / ��  ��  ��  i ��� l     �~�}�|�~  �}  �|  � ��� l     �{���{  � 6 0 This handler gets the folder path for a project   � ��� `   T h i s   h a n d l e r   g e t s   t h e   f o l d e r   p a t h   f o r   a   p r o j e c t� ��� i    ��� I      �z��y�z ,0 getprojectfolderpath getProjectFolderPath� ��x� o      �w�w 0 
theproject 
theProject�x  �y  � O     c��� k    b�� ��� r    ��� m    �� ���  � o      �v�v 0 thefolderpath theFolderPath� ��� Z    Q���u�t� I   �s��r
�s .coredoexnull���     ****� n    ��� m   	 �q
�q 
FCAr� o    	�p�p 0 
theproject 
theProject�r  � k    M�� ��� r    ��� n    ��� m    �o
�o 
FCAr� o    �n�n 0 
theproject 
theProject� o      �m�m 0 	thefolder 	theFolder� ��l� T    M�� k    H�� ��� Z   ,���k�j� >    ��� o    �i�i 0 thefolderpath theFolderPath� m    �� ���  � r   # (��� b   # &��� m   # $�� ���    :  � o   $ %�h�h 0 thefolderpath theFolderPath� o      �g�g 0 thefolderpath theFolderPath�k  �j  � ��� r   - 4��� b   - 2��� n   - 0��� 1   . 0�f
�f 
pnam� o   - .�e�e 0 	thefolder 	theFolder� o   0 1�d�d 0 thefolderpath theFolderPath� o      �c�c 0 thefolderpath theFolderPath� ��b� Z   5 H���a�� =   5 <��� n   5 :��� m   8 :�`
�` 
pcls� n   5 8��� 1   6 8�_
�_ 
ctnr� o   5 6�^�^ 0 	thefolder 	theFolder� m   : ;�]
�] 
FCAr� r   ? D��� n   ? B��� 1   @ B�\
�\ 
ctnr� o   ? @�[�[ 0 	thefolder 	theFolder� o      �Z�Z 0 	thefolder 	theFolder�a  �  S   G H�b  �l  �u  �t  � ��� Z  R _���Y�X� =   R U��� o   R S�W�W 0 thefolderpath theFolderPath� m   S T�� ���  � r   X [��� m   X Y�� ���  � o      �V�V 0 thefolderpath theFolderPath�Y  �X  � ��U� L   ` b�� o   ` a�T�T 0 thefolderpath theFolderPath�U  � m     ���                                                                                  OFOC  alis    F  Mac HD                     ϙZ4H+     OOmniFocus.app                                                   9����C1        ����  	                Applications    ϙ�t      ��{q       O  "Mac HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c   H D  Applications/OmniFocus.app  / ��  � ��� l     �S�R�Q�S  �R  �Q  � ��� l     �P���P  � 6 0 This handler appends a value to the task detail   � ��� `   T h i s   h a n d l e r   a p p e n d s   a   v a l u e   t o   t h e   t a s k   d e t a i l� ��O� i    ��� I      �N��M�N $0 appendtaskdetail appendTaskDetail� ��� o      �L�L 0 thetaskdetail theTaskDetail� ��� o      �K�K 0 thevalue theValue� ��� o      �J�J 0 	theprefix 	thePrefix� ��I� o      �H�H 0 	thesuffix 	theSuffix�I  �M  � k     2�� ��� Z    ���G�F� >    ��� o     �E�E 0 thetaskdetail theTaskDetail� m    �� ���  � r    ��� b    	��� o    �D�D 0 thetaskdetail theTaskDetail� m    �� ���  < b r >� o      �C�C 0 thetaskdetail theTaskDetail�G  �F  � ��� Z    )���B�� G       =     o    �A�A 0 thevalue theValue m    �@
�@ 
msng =     o    �?�? 0 thevalue theValue m     �  � r    !	 m    

 �  N / A	 o      �>�> 0 thevalue theValue�B  � r   $ ) b   $ ' o   $ %�=�= 0 thevalue theValue o   % &�<�< 0 	thesuffix 	theSuffix o      �;�; 0 thevalue theValue� �: L   * 2 b   * 1 b   * / b   * - o   * +�9�9 0 thetaskdetail theTaskDetail o   + ,�8�8 0 	theprefix 	thePrefix m   - . �  :   o   / 0�7�7 0 thevalue theValue�:  �O       .�6�5�4�3�2�1�0�/ 0 !�."#$%&'(�-�,�+�*�)�(�'�&�%�$�#�"�!� ��������6   ,���������������
�	��������� ��������������������������������������� 20 includefullprojectpaths includeFullProjectPaths� (0 includetaskcontext includeTaskContext� 40 includetaskestimatedtime includeTaskEstimatedTime� ,0 includetaskstartdate includeTaskStartDate� :0 includetaskmodificationdate includeTaskModificationDate� 60 includetaskcompletiondate includeTaskCompletionDate� $0 includetasknotes includeTaskNotes� 0 thenotename theNoteName� ,0 getprojectfolderpath getProjectFolderPath� $0 appendtaskdetail appendTaskDetail
� .aevtoappnull  �   � ****� 0 thestartdate theStartDate� 0 
theenddate 
theEndDate� 0 thedaterange theDateRange�
 &0 theprogressdetail theProgressDetail�	 .0 modifiedtasksdetected modifiedTasksDetected� *0 themodifiedprojects theModifiedProjects� &0 thecurrentproject theCurrentProject� &0 thecompletedtasks theCompletedTasks� ,0 theprojectfolderpath theProjectFolderPath�  0 thecurrenttask theCurrentTask� 0 thetaskdetail theTaskDetail� 0 thenote theNote�  �   ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  
�5 boovtrue
�4 boovfals
�3 boovfals
�2 boovtrue
�1 boovfals
�0 boovtrue
�/ boovfals �������)*���� ,0 getprojectfolderpath getProjectFolderPath�� ��+�� +  ���� 0 
theproject 
theProject��  ) �������� 0 
theproject 
theProject�� 0 thefolderpath theFolderPath�� 0 	thefolder 	theFolder* ����������������
�� 
FCAr
�� .coredoexnull���     ****
�� 
pnam
�� 
ctnr
�� 
pcls�� d� `�E�O��,j  @��,E�O 4hZ�� 
�%E�Y hO��,�%E�O��,�,�  
��,E�Y [OY��Y hO��  �E�Y hO�U �������,-���� $0 appendtaskdetail appendTaskDetail�� ��.�� .  ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffix��  , ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffix- ������

�� 
msng
�� 
bool�� 3�� 
��%E�Y hO�� 
 �� �& �E�Y ��%E�O��%�%�% ��/����01��
�� .aevtoappnull  �   � ****/ k    ~22  T33  Y44  `55  g66  n77 288 B99 R:: j;; ~<< �== 9>> I?? h����  ��  ��  0 ����
�� 
OSav
�� 
OSbv1 Z��������������������������^��su����8����@�������������������������������:G��������mp���������������������(3@U��\��^������w��������������
�� .misccurdldt    ��� null�� 0 thestartdate theStartDate
�� 
hour
�� 
min 
�� 
scnd�� �� ;�� 0 
theenddate 
theEndDate
�� 
wkdy
�� 
sun 
�� 
days
�� 
sat 
�� 
dstr�� 0 thedaterange theDateRange�� &0 theprogressdetail theProgressDetail�� .0 modifiedtasksdetected modifiedTasksDetected
�� 
docu
�� 
FCfx@  
�� 
FCDm�� *0 themodifiedprojects theModifiedProjects
�� 
leng
�� 
cobj�� &0 thecurrentproject theCurrentProject
�� 
FCft
�� 
FCcd
�� 
FC#t�� &0 thecompletedtasks theCompletedTasks�� ,0 theprojectfolderpath theProjectFolderPath�� ,0 getprojectfolderpath getProjectFolderPath
�� 
pnam
�� 
ret ��  0 thecurrenttask theCurrentTask�� 0 thetaskdetail theTaskDetail
�� 
FCct�� 0 
thecontext 
theContext
�� 
msng�� �� $0 appendtaskdetail appendTaskDetail
�� 
FCEM
�� 
FCDs
�� 
FCdc
�� 
FCno
�� 
mesS��  0 thereportscope theReportScope
�� .sysodisAaleR        TEXT
�� .miscactvnull��� ��� null
�� 
Ennb
�� 
Entt
�� 
Enhl�� 
�� .EVRNcrntnull��� ��� null�� 0 thenote theNote
�� 
EV17
�� .EVRNonwnnull��� ��� null��*j  E�Oj��,FOj��,FOj��,FO��� �� �E�O h��,� �k� E�[OY��O h��,� �k� E�[OY��O��,�%��,%E�O��%a %E` OfE` Oa �*a k/�*a -a [[a ,\Z�:\[a ,\Z�<A1E` Okk_ a ,Ekh  _ a �E/E` O_ a -a [[[[a ,\Ze8\[a ,\Z�:A\[a ,\Z�<A\[a ,\Zj8A1E` O_ jveE` Oa  E` !Ob   e  +)_ k+ "E` !O_ !a # _ !a $%E` !Y hY hO_ a %%_ !%_ a &,%a '%_ (%a )%E` O�k_ a ,Ekh _ a �E/E` *O_ a +%_ *a &,%E` Oa ,E` -Ob  e  :_ *a .,E` /O_ /a 0  )_ -_ /a &,a 1a 2a 3+ 4E` -Y hY hOb  e   )_ -_ *a 5,a 6a 7a 3+ 4E` -Y hOb  e   )_ -_ *a 8,a 9a :a 3+ 4E` -Y hOb  e   )_ -_ *a ,a ;a <a 3+ 4E` -Y hOb  e   )_ -_ *a =,a >a ?a 3+ 4E` -Y hOb  e   )_ -_ *a @,a Aa Ba 3+ 4E` -Y hO_ -a C _ a D%_ -%a E%E` Y hO_ a F%_ (%E` [OY��O_ a G%_ (%E` Y h[OY��UUO_ a H%E` O_ f  a Ia Ja K_ L%a M%l NOhY hOa O 3*j PO*a Qa Ra Sb  a T_ a U VE` WO*a X_ Wl YU ldt     ��� ldt     ��A�  �AA h S u n d a y ,   J u n e   2 9 ,   2 0 1 4   t h r o u g h   S a t u r d a y ,   J u l y   5 ,   2 0 1 4! �BB� < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < b r > < b > S u n d a y ,   J u n e   2 9 ,   2 0 1 4   t h r o u g h   S a t u r d a y ,   J u l y   5 ,   2 0 1 4 < / b > < b r > < h r > < b r > < h 2 > M i s c e l l a n e o u s < / h 2 >  < b r > < u l > < l i > a s k   P e t e r   a b o u t   f a x   m a c h i n e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 4 : 2 1   A M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 3 3 : 4 9   A M < / p > < / l i >  < l i > G e t   f a x   t i c k e t   n u m b e r   t o   k e n < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 4 : 2 1   A M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 3 3 : 4 4   A M < / p > < / l i >  < l i > r e p l a c e   g a r b a g e   d i s p o s a l < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 5 : 5 0   A M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 5 : 3 4   A M < / p > < / l i >  < l i > 4 1 0 . 9 3 3 . 4 1 4 1   h h c s t r e e m 0 1 < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 5 : 5 0   A M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 5 : 4 6   A M < / p > < / l i >  < l i > L P T   R e q u e s t   -   H o w   t o   f i n d   a   g o o d   a l l   i n c l u s i v e   r e s o r t   f o r   a   h o n e y m o o n   o r   c o u p l e s   v a c a t i o n < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   1 0 : 5 0 : 0 2   A M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   1 0 : 4 8 : 4 9   A M < / p > < / l i >  < / u l >  < h 2 > P e r s o n a l   >   S i n g l e   A c t i o n < / h 2 >  < b r > < u l > < l i > C r e a t e   c r o n   j o b   t o   a u t o m a t e   r e a d k i t   l a u n c h   &   q u i t < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   J u n e   2 9 ,   2 0 1 4   a t   8 : 4 3 : 0 4   A M < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   J u n e   2 9 ,   2 0 1 4   a t   8 : 4 3 : 0 4   A M < / p > < / l i >  < / u l >  < h 2 > P r o   >   G T D < / h 2 >  < b r > < u l > < l i > R e m i n d e r   t o   u s e   O m n i F o c u s   Q u i c k O p e n  #   +   o < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   F r i d a y ,   J u n e   2 7 ,   2 0 1 4   a t   1 2 : 0 0 : 0 0   A M < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   9 : 1 4 : 4 3   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   9 : 1 4 : 4 3   A M < / p > < / l i >  < l i > R e m i n d e r   t o   u s e   O m n i F o c u s   Q u i c k O p e n  #   +   o < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   1 2 : 0 0 : 0 0   A M < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   1 2 : 1 7 : 0 8   P M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   1 2 : 1 7 : 0 8   P M < / p > < / l i >  < / u l >  < h 2 > P r o   :   M S H   >   W e e k l y   M S H   M e e t i n g < / h 2 >  < b r > < u l > < l i > D o m i n o   r e c e r t s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 5 9   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 5 9   A M < / p > < / l i >  < l i > E A S   O r p h a n s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 5 8   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 5 8   A M < / p > < / l i >  < l i > V I P   E A S < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 5 4   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 5 4   A M < / p > < / l i >  < l i > I T D S < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 0 1   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 0 1   A M < / p > < / l i >  < l i > S M T P 0 1   E x c h a n g e N A B < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 0 2   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   1 0 : 3 2 : 0 2   A M < / p > < / l i >  < l i > T S M   a l e r t s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   8 : 0 0 : 0 0   A M < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   4 : 2 8 : 1 9   P M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   J u n e   3 0 ,   2 0 1 4   a t   4 : 2 8 : 1 9   P M < / p > < / l i >  < l i > T S M   a l e r t s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   8 : 0 0 : 0 0   A M < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   1 2 : 1 7 : 1 5   P M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   1 2 : 1 7 : 1 5   P M < / p > < / l i >  < / u l >  < h 2 > P r o   :   M S H   :   M g m n t   >   M a n a g e r < / h 2 >  < b r > < u l > < l i > T a l k   t o   R i c k   a b o u t   J o a n n e   a t t e n d i n g   C M R G   i n   p e r s o n   a n d   r e i m b u r s e m e n t   a n d   u s   d o i n g   a l l   l e v e r a g e d   w o r k < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 8 : 1 2   A M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 8 : 1 2   A M < / p > < / l i >  < / u l >  < / b o d y > < / h t m l >
�. boovtrue" ��C�� C  DEFGHIJ#D KK L��M��L 8��N��
�� 
docuN �OO  i V k 2 A h B L C G 6
�� kfrmID  
�� 
FCprM �PP  n 5 b 4 s H A S J j v
�� kfrmID  E QQ R��S��R 8��T��
�� 
docuT �UU  i V k 2 A h B L C G 6
�� kfrmID  
�� 
FCprS �VV  c T 4 B I H P i j p s
�� kfrmID  F WW X��Y��X 8��Z��
�� 
docuZ �[[  i V k 2 A h B L C G 6
�� kfrmID  
�� 
FCprY �\\  g V I 0 B w 6 Z C G Q
�� kfrmID  G ]] ^��_��^ 8��`��
�� 
docu` �aa  i V k 2 A h B L C G 6
�� kfrmID  
�� 
FCpr_ �bb  b 8 y 2 C n T W n e v
�� kfrmID  H cc d��e��d 8�f�~
� 
docuf �gg  i V k 2 A h B L C G 6
�~ kfrmID  
�� 
FCpre �hh  k l g R B 7 A X k l 4
�� kfrmID  I ii j�}k�|j 8�{l�z
�{ 
docul �mm  i V k 2 A h B L C G 6
�z kfrmID  
�} 
FCprk �nn  k t Y 7 E V K l G D 3
�| kfrmID  J oo p�yq�xp 8�wr�v
�w 
docur �ss  i V k 2 A h B L C G 6
�v kfrmID  
�y 
FCprq �tt  o 1 i D T t Y 1 c N C
�x kfrmID  # uu v�uw�tv 8�sx�r
�s 
docux �yy  i V k 2 A h B L C G 6
�r kfrmID  
�u 
FCprw �zz  o 1 - 2 W 8 P P r V w
�t kfrmID  $ �q{�q  {   % �|| ( P r o   :   M S H   :   M g m n t   >  & }} ~�p�o~ 8�n��m
�n 
docu� ���  i V k 2 A h B L C G 6
�m kfrmID  
�p 
FCac ���  l R i - R N e x C A 5
�o kfrmID  ' ��� S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 8 : 1 2   A M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 8 : 1 2   A M( �� ��l��k� �j�
�j 
EVnb� ��� 
 I n b o x
�l 
EVnn� ��� z x - c o r e d a t a : / / 3 8 F C 6 8 7 C - D C A B - 4 0 B A - A 0 4 9 - F 5 5 4 7 C 9 7 E F 1 2 / E N N o t e / p 1 7 7
�k kfrmID  �-  �,  �+  �*  �)  �(  �'  �&  �%  �$  �#  �"  �!  �   �  �  �  �  �  �  �  ascr  ��ޭ