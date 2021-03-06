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
   	end repeat    �    	 e n d   r e p e a t	  l     ����   R L 	repeat until (month of theEndDate) is not equal to (month of theStartDate)    � �   	 r e p e a t   u n t i l   ( m o n t h   o f   t h e E n d D a t e )   i s   n o t   e q u a l   t o   ( m o n t h   o f   t h e S t a r t D a t e )  l     ����   0 * 		set theEndDate to theEndDate + 1 * days    � T   	 	 s e t   t h e E n d D a t e   t o   t h e E n d D a t e   +   1   *   d a y s  l     ����     	end repeat    �    	 e n d   r e p e a t  l     ����   / ) 	set theEndDate to theEndDate - 1 * days    �   R   	 s e t   t h e E n d D a t e   t o   t h e E n d D a t e   -   1   *   d a y s !"! l     ��#$��  # e _ 	set theDateRange to (date string of theStartDate) & " through " & (date string of theEndDate)   $ �%% �   	 s e t   t h e D a t e R a n g e   t o   ( d a t e   s t r i n g   o f   t h e S t a r t D a t e )   &   "   t h r o u g h   "   &   ( d a t e   s t r i n g   o f   t h e E n d D a t e )" &'& l     ��()��  (   end if   ) �**    e n d   i f' +,+ l     ��������  ��  ��  , -.- l     ��/0��  / = 7 Forcing the report to be this month; copied from above   0 �11 n   F o r c i n g   t h e   r e p o r t   t o   b e   t h i s   m o n t h ;   c o p i e d   f r o m   a b o v e. 232 l  ( >4����4 W   ( >565 r   2 9787 \   2 79:9 o   2 3���� 0 thestartdate theStartDate: ]   3 6;<; m   3 4���� < 1   4 5��
�� 
days8 o      ���� 0 thestartdate theStartDate6 =   , 1=>= l  , /?����? n   , /@A@ 1   - /��
�� 
day A o   , -���� 0 thestartdate theStartDate��  ��  > m   / 0���� ��  ��  3 BCB l  ? WD����D W   ? WEFE r   K RGHG [   K PIJI o   K L���� 0 
theenddate 
theEndDateJ ]   L OKLK m   L M���� L 1   M N��
�� 
daysH o      �� 0 
theenddate 
theEndDateF >  C JMNM l  C FO�~�}O n   C FPQP m   D F�|
�| 
mnthQ o   C D�{�{ 0 
theenddate 
theEndDate�~  �}  N l  F IR�z�yR n   F ISTS m   G I�x
�x 
mnthT o   F G�w�w 0 thestartdate theStartDate�z  �y  ��  ��  C UVU l  X _W�v�uW r   X _XYX \   X ]Z[Z o   X Y�t�t 0 
theenddate 
theEndDate[ ]   Y \\]\ m   Y Z�s�s ] 1   Z [�r
�r 
daysY o      �q�q 0 
theenddate 
theEndDate�v  �u  V ^_^ l  ` k`�p�o` r   ` kaba b   ` icdc b   ` eefe l  ` cg�n�mg n   ` chih 1   a c�l
�l 
dstri o   ` a�k�k 0 thestartdate theStartDate�n  �m  f m   c djj �kk    t h r o u g h  d l  e hl�j�il n   e hmnm 1   f h�h
�h 
dstrn o   e f�g�g 0 
theenddate 
theEndDate�j  �i  b o      �f�f 0 thedaterange theDateRange�p  �o  _ opo l     �e�d�c�e  �d  �c  p qrq l     �bst�b  s - ' Begin preparing the task list as HTML.   t �uu N   B e g i n   p r e p a r i n g   t h e   t a s k   l i s t   a s   H T M L .r vwv l  l ux�a�`x r   l uyzy b   l q{|{ b   l o}~} m   l m ��� V < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < b r > < b >~ o   m n�_�_ 0 thedaterange theDateRange| m   o p�� ���   < / b > < b r > < h r > < b r >z o      �^�^ &0 theprogressdetail theProgressDetail�a  �`  w ��� l     �]�\�[�]  �\  �[  � ��� l     �Z���Z  � F @ Retrieve a list of projects modified within the specified scope   � ��� �   R e t r i e v e   a   l i s t   o f   p r o j e c t s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� l  v {��Y�X� r   v {��� m   v w�W
�W boovfals� o      �V�V .0 modifiedtasksdetected modifiedTasksDetected�Y  �X  � ��� l  |��U�T� O   |��� O   ���� k   ��� ��� r   � ���� 6 � ���� 2   � ��S
�S 
FCfx� F   � ���� ?  � ���� n  � ���� 1   � ��R
�R 
FCDm�  g   � �� o   � ��Q�Q 0 thestartdate theStartDate� A  � ���� 1   � ��P
�P 
FCDm� o   � ��O�O 0 
theenddate 
theEndDate� o      �N�N *0 themodifiedprojects theModifiedProjects� ��� l  � ��M���M  � ) # Loop through any detected projects   � ��� F   L o o p   t h r o u g h   a n y   d e t e c t e d   p r o j e c t s� ��L� Y   ���K���J� k   ��� ��� r   � ���� n   � ���� 4   � ��I�
�I 
cobj� 1   � ��H
�H 
OSav� o   � ��G�G *0 themodifiedprojects theModifiedProjects� o      �F�F &0 thecurrentproject theCurrentProject� ��� l  � ��E���E  � E ? Retrieve any project tasks modified within the specified scope   � ��� ~   R e t r i e v e   a n y   p r o j e c t   t a s k s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� r   �	��� l  ���D�C� 6 ���� n   � ���� 2   � ��B
�B 
FCft� o   � ��A�A &0 thecurrentproject theCurrentProject� F   ���� F   � ���� F   � ���� =   � ���� n  � ���� 1   � ��@
�@ 
FCcd�  g   � �� m   � ��?
�? boovtrue� ?  � ���� 1   � ��>
�> 
FCDm� o   � ��=�= 0 thestartdate theStartDate� A  � ���� 1   � ��<
�< 
FCDm� o   � ��;�; 0 
theenddate 
theEndDate� =   ���� 1   � ��:
�: 
FC#t� m   �9�9  �D  �C  � o      �8�8 &0 thecompletedtasks theCompletedTasks� ��� l 

�7���7  � . ( Process the project if tasks were found   � ��� P   P r o c e s s   t h e   p r o j e c t   i f   t a s k s   w e r e   f o u n d� ��6� Z  
���5�4� > 
��� o  
�3�3 &0 thecompletedtasks theCompletedTasks� J  �2�2  � k  �� ��� r  ��� m  �1
�1 boovtrue� o      �0�0 .0 modifiedtasksdetected modifiedTasksDetected� ��� l �/���/  � 9 3 Append the project folder path to the project name   � ��� f   A p p e n d   t h e   p r o j e c t   f o l d e r   p a t h   t o   t h e   p r o j e c t   n a m e� ��� r   ��� m  �� ���  � o      �.�. ,0 theprojectfolderpath theProjectFolderPath� ��� Z  !U���-�,� =  !(��� o  !&�+�+ 20 includefullprojectpaths includeFullProjectPaths� m  &'�*
�* boovtrue� k  +Q�� ��� r  +7��� n  +3��� I  ,3�)��(�) ,0 getprojectfolderpath getProjectFolderPath� ��'� o  ,/�&�& &0 thecurrentproject theCurrentProject�'  �(  �  f  +,� o      �%�% ,0 theprojectfolderpath theProjectFolderPath� ��$� Z 8Q���#�"� > 8?   o  8;�!�! ,0 theprojectfolderpath theProjectFolderPath m  ;> �  � r  BM b  BI o  BE� �  ,0 theprojectfolderpath theProjectFolderPath m  EH �		    >   o      �� ,0 theprojectfolderpath theProjectFolderPath�#  �"  �$  �-  �,  � 

 l VV��   , & Append the project name to the report    � L   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   r e p o r t  r  Vy b  Vu b  Vq b  Vm b  Vi b  Va b  V] o  VY�� &0 theprogressdetail theProgressDetail m  Y\ �    < h 2 > o  ]`�� ,0 theprojectfolderpath theProjectFolderPath n  ah!"! 1  dh�
� 
pnam" o  ad�� &0 thecurrentproject theCurrentProject m  il## �$$ 
 < / h 2 > o  mp�
� 
ret  m  qt%% �&&  < b r > < u l > o      �� &0 theprogressdetail theProgressDetail '(' l zz�)*�  ) 6 0 Loop through the detected tasks for the project   * �++ `   L o o p   t h r o u g h   t h e   d e t e c t e d   t a s k s   f o r   t h e   p r o j e c t( ,-, Y  z.�/0�. k  ��11 232 r  ��454 n  ��676 4  ���8
� 
cobj8 1  ���
� 
OSbv7 o  ���� &0 thecompletedtasks theCompletedTasks5 o      ��  0 thecurrenttask theCurrentTask3 9:9 l ���;<�  ; / ) Append the tasks's name to the task list   < �== R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s t: >?> r  ��@A@ b  ��BCB b  ��DED o  ���� &0 theprogressdetail theProgressDetailE m  ��FF �GG  < l i >C n  ��HIH 1  ���
� 
pnamI o  ����  0 thecurrenttask theCurrentTaskA o      �� &0 theprogressdetail theProgressDetail? JKJ l ���LM�  L 9 3 Set up a variable for the task detail, if relevant   M �NN f   S e t   u p   a   v a r i a b l e   f o r   t h e   t a s k   d e t a i l ,   i f   r e l e v a n tK OPO r  ��QRQ m  ��SS �TT  R o      �
�
 0 thetaskdetail theTaskDetailP UVU l ���	WX�	  W , & Append the context to the task detail   X �YY L   A p p e n d   t h e   c o n t e x t   t o   t h e   t a s k   d e t a i lV Z[Z Z  ��\]��\ =  ��^_^ o  ���� (0 includetaskcontext includeTaskContext_ m  ���
� boovtrue] k  ��`` aba r  ��cdc n  ��efe m  ���
� 
FCctf o  ����  0 thecurrenttask theCurrentTaskd o      �� 0 
thecontext 
theContextb g�g Z ��hi� ��h > ��jkj o  ������ 0 
thecontext 
theContextk m  ����
�� 
msngi r  ��lml n  ��non I  ����p���� $0 appendtaskdetail appendTaskDetailp qrq o  ������ 0 thetaskdetail theTaskDetailr sts n  ��uvu 1  ����
�� 
pnamv o  ������ 0 
thecontext 
theContextt wxw m  ��yy �zz  C o n t e x tx {��{ m  ��|| �}}  ��  ��  o  f  ��m o      ���� 0 thetaskdetail theTaskDetail�   ��  �  �  �  [ ~~ l ��������  � 3 - Append the estimated time to the task detail   � ��� Z   A p p e n d   t h e   e s t i m a t e d   t i m e   t o   t h e   t a s k   d e t a i l ��� Z �"������� =  � ��� o  ������ 40 includetaskestimatedtime includeTaskEstimatedTime� m  ����
�� boovtrue� r  ��� n  ��� I  ������� $0 appendtaskdetail appendTaskDetail� ��� o  ���� 0 thetaskdetail theTaskDetail� ��� n  ��� 1  
��
�� 
FCEM� o  
����  0 thecurrenttask theCurrentTask� ��� m  �� ���  E s t i m a t e d   T i m e� ���� m  �� ���    m i n u t e s��  ��  �  f  � o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l ##������  � / ) Append the start date to the task detail   � ��� R   A p p e n d   t h e   s t a r t   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z #L������� =  #*��� o  #(���� ,0 includetaskstartdate includeTaskStartDate� m  ()��
�� boovtrue� r  -H��� n  -D��� I  .D������� $0 appendtaskdetail appendTaskDetail� ��� o  .1���� 0 thetaskdetail theTaskDetail� ��� n  18��� 1  48��
�� 
FCDs� o  14����  0 thecurrenttask theCurrentTask� ��� m  8;�� ���  S t a r t   D a t e� ���� m  ;>�� ���  ��  ��  �  f  -.� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l MM������  � 6 0 Append the modification date to the task detail   � ��� `   A p p e n d   t h e   m o d i f i c a t i o n   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z Mv������� =  MT��� o  MR���� ,0 includetaskstartdate includeTaskStartDate� m  RS��
�� boovtrue� r  Wr��� n  Wn��� I  Xn������� $0 appendtaskdetail appendTaskDetail� ��� o  X[���� 0 thetaskdetail theTaskDetail� ��� n  [b��� 1  ^b��
�� 
FCDm� o  [^����  0 thecurrenttask theCurrentTask� ��� m  be�� ��� " M o d i f i c a t i o n   D a t e� ���� m  eh�� ���  ��  ��  �  f  WX� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l ww������  � 4 . Append the completion date to the task detail   � ��� \   A p p e n d   t h e   c o m p l e t i o n   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z w�������� =  w~��� o  w|���� ,0 includetaskstartdate includeTaskStartDate� m  |}��
�� boovtrue� r  ����� n  ����� I  ��������� $0 appendtaskdetail appendTaskDetail� ��� o  ������ 0 thetaskdetail theTaskDetail� ��� n  ����� 1  ����
�� 
FCdc� o  ������  0 thecurrenttask theCurrentTask� ��� m  ���� ���  C o m p l e t i o n   D a t e� ���� m  ���� ���  ��  ��  �  f  ��� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l ��������  � 1 + Append the task's notes to the task detail   � ��� V   A p p e n d   t h e   t a s k ' s   n o t e s   t o   t h e   t a s k   d e t a i l� ��� Z ��������� =  ����� o  ������ $0 includetasknotes includeTaskNotes� m  ����
�� boovtrue� r  ����� n  ��� � I  �������� $0 appendtaskdetail appendTaskDetail  o  ������ 0 thetaskdetail theTaskDetail  n  �� 1  ����
�� 
FCno o  ������  0 thecurrenttask theCurrentTask 	 m  ��

 �  N o t e	 �� m  �� �  ��  ��     f  ��� o      ���� 0 thetaskdetail theTaskDetail��  ��  �  l ������   . ( Append the task detail to the task list    � P   A p p e n d   t h e   t a s k   d e t a i l   t o   t h e   t a s k   l i s t  Z  ������ > �� o  ������ 0 thetaskdetail theTaskDetail m  �� �   r  �� b  �� b  �� !  b  ��"#" o  ������ &0 theprogressdetail theProgressDetail# m  ��$$ �%% 6 < b r > < p   s t y l e = " c o l o r :   g r a y " >! o  ������ 0 thetaskdetail theTaskDetail m  ��&& �''  < / p > o      ���� &0 theprogressdetail theProgressDetail��  ��   ()( l ����*+��  * 0 * Finish adding the task's HTML to the list   + �,, T   F i n i s h   a d d i n g   t h e   t a s k ' s   H T M L   t o   t h e   l i s t) -��- r  ��./. b  ��010 b  ��232 o  ������ &0 theprogressdetail theProgressDetail3 m  ��44 �55 
 < / l i >1 o  ����
�� 
ret / o      ���� &0 theprogressdetail theProgressDetail��  
� 
OSbv/ m  }~���� 0 n  ~�676 1  ����
�� 
leng7 o  ~����� &0 thecompletedtasks theCompletedTasks�  - 8��8 r  9:9 b  ;<; b  	=>= o  ���� &0 theprogressdetail theProgressDetail> m  ?? �@@ 
 < / u l >< o  	��
�� 
ret : o      ���� &0 theprogressdetail theProgressDetail��  �5  �4  �6  
�K 
OSav� m   � ����� � n   � �ABA 1   � ���
�� 
lengB o   � ����� *0 themodifiedprojects theModifiedProjects�J  �L  � 4  � ���C
�� 
docuC m   � ����� � m   | DD�                                                                                  OFOC  alis    b  rosartl1-ml2-hd            �9��H+     OmniFocus.app                                                   0~�]�        ����  	                Applications    �9�      �]�L         +rosartl1-ml2-hd:Applications: OmniFocus.app     O m n i F o c u s . a p p     r o s a r t l 1 - m l 2 - h d  Applications/OmniFocus.app  / ��  �U  �T  � EFE l (G����G r  (HIH b  $JKJ o   ���� &0 theprogressdetail theProgressDetailK m   #LL �MM  < / b o d y > < / h t m l >I o      ���� &0 theprogressdetail theProgressDetail��  ��  F NON l     ��������  ��  ��  O PQP l     ��RS��  R 9 3 Notify the user if no projects or tasks were found   S �TT f   N o t i f y   t h e   u s e r   i f   n o   p r o j e c t s   o r   t a s k s   w e r e   f o u n dQ UVU l )MW����W Z  )MXY����X =  ).Z[Z o  ),���� .0 modifiedtasksdetected modifiedTasksDetected[ m  ,-��
�� boovfalsY k  1I\\ ]^] I 1F��_`
�� .sysodisAaleR        TEXT_ m  14aa �bb > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t` ��c��
�� 
mesSc b  7Bded b  7>fgf m  7:hh �ii B N o   m o d i f i e d   t a s k s   w e r e   f o u n d   f o r  g o  :=����  0 thereportscope theReportScopee m  >Ajj �kk  .��  ^ l��l L  GI����  ��  ��  ��  ��  ��  V mnm l     ��������  ��  ��  n opo l     ��qr��  q #  Create the note in Evernote.   r �ss :   C r e a t e   t h e   n o t e   i n   E v e r n o t e .p tut l N�v����v O  N�wxw k  T�yy z{z I TY������
�� .miscactvnull��� ��� null��  ��  { |}| r  Zy~~ I Zu�����
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Ennb� m  ^a�� ��� 
 I n b o x� ����
�� 
Entt� o  di���� 0 thenotename theNoteName� ���~
� 
Enhl� o  lo�}�} &0 theprogressdetail theProgressDetail�~   o      �|�| 0 thenote theNote} ��{� I z��z�y�
�z .EVRNonwnnull��� ��� null�y  � �x��w
�x 
EV17� o  ~��v�v 0 thenote theNote�w  �{  x m  NQ���                                                                                  EVRN  alis    ^  rosartl1-ml2-hd            �9��H+     Evernote.app                                                    ? ��g�2        ����  	                Applications    �9�      �h3r         *rosartl1-ml2-hd:Applications: Evernote.app    E v e r n o t e . a p p     r o s a r t l 1 - m l 2 - h d  Applications/Evernote.app   / ��  ��  ��  u ��� l     �u�t�s�u  �t  �s  � ��� l     �r���r  � 6 0 This handler gets the folder path for a project   � ��� `   T h i s   h a n d l e r   g e t s   t h e   f o l d e r   p a t h   f o r   a   p r o j e c t� ��� i    ��� I      �q��p�q ,0 getprojectfolderpath getProjectFolderPath� ��o� o      �n�n 0 
theproject 
theProject�o  �p  � O     c��� k    b�� ��� r    ��� m    �� ���  � o      �m�m 0 thefolderpath theFolderPath� ��� Z    Q���l�k� I   �j��i
�j .coredoexnull���     ****� n    ��� m   	 �h
�h 
FCAr� o    	�g�g 0 
theproject 
theProject�i  � k    M�� ��� r    ��� n    ��� m    �f
�f 
FCAr� o    �e�e 0 
theproject 
theProject� o      �d�d 0 	thefolder 	theFolder� ��c� T    M�� k    H�� ��� Z   ,���b�a� >    ��� o    �`�` 0 thefolderpath theFolderPath� m    �� ���  � r   # (��� b   # &��� m   # $�� ���    :  � o   $ %�_�_ 0 thefolderpath theFolderPath� o      �^�^ 0 thefolderpath theFolderPath�b  �a  � ��� r   - 4��� b   - 2��� n   - 0��� 1   . 0�]
�] 
pnam� o   - .�\�\ 0 	thefolder 	theFolder� o   0 1�[�[ 0 thefolderpath theFolderPath� o      �Z�Z 0 thefolderpath theFolderPath� ��Y� Z   5 H���X�� =   5 <��� n   5 :��� m   8 :�W
�W 
pcls� n   5 8��� 1   6 8�V
�V 
ctnr� o   5 6�U�U 0 	thefolder 	theFolder� m   : ;�T
�T 
FCAr� r   ? D��� n   ? B��� 1   @ B�S
�S 
ctnr� o   ? @�R�R 0 	thefolder 	theFolder� o      �Q�Q 0 	thefolder 	theFolder�X  �  S   G H�Y  �c  �l  �k  � ��� Z  R _���P�O� =   R U��� o   R S�N�N 0 thefolderpath theFolderPath� m   S T�� ���  � r   X [��� m   X Y�� ���  � o      �M�M 0 thefolderpath theFolderPath�P  �O  � ��L� L   ` b�� o   ` a�K�K 0 thefolderpath theFolderPath�L  � m     ���                                                                                  OFOC  alis    b  rosartl1-ml2-hd            �9��H+     OmniFocus.app                                                   0~�]�        ����  	                Applications    �9�      �]�L         +rosartl1-ml2-hd:Applications: OmniFocus.app     O m n i F o c u s . a p p     r o s a r t l 1 - m l 2 - h d  Applications/OmniFocus.app  / ��  � ��� l     �J�I�H�J  �I  �H  � ��� l     �G���G  � 6 0 This handler appends a value to the task detail   � ��� `   T h i s   h a n d l e r   a p p e n d s   a   v a l u e   t o   t h e   t a s k   d e t a i l� ��F� i    ��� I      �E��D�E $0 appendtaskdetail appendTaskDetail� ��� o      �C�C 0 thetaskdetail theTaskDetail� ��� o      �B�B 0 thevalue theValue� ��� o      �A�A 0 	theprefix 	thePrefix� ��@� o      �?�? 0 	thesuffix 	theSuffix�@  �D  � k     2�� ��� Z    ���>�=� >    ��� o     �<�< 0 thetaskdetail theTaskDetail� m    �� �    � r     b    	 o    �;�; 0 thetaskdetail theTaskDetail m     �  < b r > o      �:�: 0 thetaskdetail theTaskDetail�>  �=  �  Z    )	
�9	 G     =     o    �8�8 0 thevalue theValue m    �7
�7 
msng =     o    �6�6 0 thevalue theValue m     �  
 r    ! m     �  N / A o      �5�5 0 thevalue theValue�9   r   $ ) b   $ ' o   $ %�4�4 0 thevalue theValue o   % &�3�3 0 	thesuffix 	theSuffix o      �2�2 0 thevalue theValue �1 L   * 2 b   * 1 b   * / !  b   * -"#" o   * +�0�0 0 thetaskdetail theTaskDetail# o   + ,�/�/ 0 	theprefix 	thePrefix! m   - .$$ �%%  :   o   / 0�.�. 0 thevalue theValue�1  �F       .�-&�,�+�*�)�(�'�& 0'()*+,-�%./01234�$�#�"�!� �����������������-  & ,������
�	��������� ��������������������������������������������������������� 20 includefullprojectpaths includeFullProjectPaths� (0 includetaskcontext includeTaskContext� 40 includetaskestimatedtime includeTaskEstimatedTime� ,0 includetaskstartdate includeTaskStartDate� :0 includetaskmodificationdate includeTaskModificationDate�
 60 includetaskcompletiondate includeTaskCompletionDate�	 $0 includetasknotes includeTaskNotes� 0 thenotename theNoteName� ,0 getprojectfolderpath getProjectFolderPath� $0 appendtaskdetail appendTaskDetail
� .aevtoappnull  �   � ****� 0 thestartdate theStartDate� 0 
theenddate 
theEndDate� 0 thedaterange theDateRange� &0 theprogressdetail theProgressDetail�  .0 modifiedtasksdetected modifiedTasksDetected�� *0 themodifiedprojects theModifiedProjects�� &0 thecurrentproject theCurrentProject�� &0 thecompletedtasks theCompletedTasks�� ,0 theprojectfolderpath theProjectFolderPath��  0 thecurrenttask theCurrentTask�� 0 thetaskdetail theTaskDetail�� 0 thenote theNote��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  
�, boovtrue
�+ boovfals
�* boovfals
�) boovtrue
�( boovfals
�' boovtrue
�& boovfals' �������56���� ,0 getprojectfolderpath getProjectFolderPath�� ��7�� 7  ���� 0 
theproject 
theProject��  5 �������� 0 
theproject 
theProject�� 0 thefolderpath theFolderPath�� 0 	thefolder 	theFolder6 ����������������
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
��,E�Y [OY��Y hO��  �E�Y hO�U( �������89���� $0 appendtaskdetail appendTaskDetail�� ��:�� :  ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffix��  8 ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffix9 �����$
�� 
msng
�� 
bool�� 3�� 
��%E�Y hO�� 
 �� �& �E�Y ��%E�O��%�%�%) ��;����<=��
�� .aevtoappnull  �   � ****; k    �>>  T??  Y@@  `AA  gBB  nCC 2DD BEE UFF ^GG vHH �II �JJ EKK ULL t����  ��  ��  < ����
�� 
OSav
�� 
OSbv= Y������������������������j�������D����M�������������������������#��%��FS��������y|��������������������
$&4?La��h��j����������������������
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
day 
�� 
days
�� 
mnth
�� 
dstr�� 0 thedaterange theDateRange�� &0 theprogressdetail theProgressDetail�� .0 modifiedtasksdetected modifiedTasksDetected
�� 
docu
�� 
FCfxM  
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
�� .EVRNonwnnull��� ��� null���*j  E�Oj��,FOj��,FOj��,FO��� �� �E�O h��,k �k� E�[OY��O h��,��,�k� E�[OY��O�k� E�O��,�%��,%E�O��%�%E` OfE` Oa �*a k/�*a -a [[a ,\Z�:\[a ,\Z�<A1E` Okk_ a ,Ekh  _ a �E/E` O_ a -a [[[[a ,\Ze8\[a ,\Z�:A\[a ,\Z�<A\[a ,\Zj8A1E` O_ jveE` Oa E`  Ob   e  +)_ k+ !E`  O_  a " _  a #%E`  Y hY hO_ a $%_  %_ a %,%a &%_ '%a (%E` O�k_ a ,Ekh _ a �E/E` )O_ a *%_ )a %,%E` Oa +E` ,Ob  e  :_ )a -,E` .O_ .a /  )_ ,_ .a %,a 0a 1a 2+ 3E` ,Y hY hOb  e   )_ ,_ )a 4,a 5a 6a 2+ 3E` ,Y hOb  e   )_ ,_ )a 7,a 8a 9a 2+ 3E` ,Y hOb  e   )_ ,_ )a ,a :a ;a 2+ 3E` ,Y hOb  e   )_ ,_ )a <,a =a >a 2+ 3E` ,Y hOb  e   )_ ,_ )a ?,a @a Aa 2+ 3E` ,Y hO_ ,a B _ a C%_ ,%a D%E` Y hO_ a E%_ '%E` [OY��O_ a F%_ '%E` Y h[OY��UUO_ a G%E` O_ f  a Ha Ia J_ K%a L%l MOhY hOa N 3*j OO*a Pa Qa Rb  a S_ a T UE` VO*a W_ Vl XU* ldt     �hr�+ ldt     ёP�, �NN ` F r i d a y ,   M a y   1 ,   2 0 1 5   t h r o u g h   S u n d a y ,   M a y   3 1 ,   2 0 1 5- �OO� < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < b r > < b > F r i d a y ,   M a y   1 ,   2 0 1 5   t h r o u g h   S u n d a y ,   M a y   3 1 ,   2 0 1 5 < / b > < b r > < h r > < b r > < h 2 > M i s c e l l a n e o u s < / h 2 >  < b r > < u l > < l i > B u y   g r a n i t e   s e a l a n t < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   M a y   4 ,   2 0 1 5   a t   1 1 : 3 2 : 0 4 < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   M a y   4 ,   2 0 1 5   a t   1 1 : 3 2 : 0 0 < / p > < / l i >  < l i > A s k   J a s o n   a b o u t   G e r a d ' s   m i l e s t o n e   e s t i m a t e s   f o r   L y n c < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   M o n d a y ,   A p r i l   6 ,   2 0 1 5   a t   0 8 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   M a y   5 ,   2 0 1 5   a t   0 8 : 5 3 : 2 5 < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   M a y   5 ,   2 0 1 5   a t   0 8 : 5 3 : 0 5 < / p > < / l i >  < l i > T A B C O   n u m b e r < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   M a y   5 ,   2 0 1 5   a t   0 8 : 5 3 : 2 5 < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   M a y   5 ,   2 0 1 5   a t   0 8 : 5 3 : 1 9 < / p > < / l i >  < l i > C l e a r a n c e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   M a y   5 ,   2 0 1 5   a t   0 8 : 5 3 : 2 5 < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   M a y   5 ,   2 0 1 5   a t   0 8 : 5 3 : 2 1 < / p > < / l i >  < l i > R e a d :   O n l i n e   C o m p l i a n c e   a n d   S e c u r i t y   T r a i n i n g      N o t i f i c a t i o n   f o r   N e w   E m p l o y e e   C o m p l i a n c e   T r a i n i n g < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   M a y   1 1 ,   2 0 1 5   a t   1 8 : 2 5 : 1 7 < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   M a y   1 1 ,   2 0 1 5   a t   1 8 : 2 5 : 1 5 < / p > < / l i >  < l i > A s k   V e l m a   a b o u t   H a s s a a n ' s   c l e a r a n c e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 2 : 5 0 : 1 4 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 2 : 4 8 : 1 1 < / p > < / l i >  < l i > C h e c k   f o r   H a s s a n ' s   e n t r y   i n   S I M S   r e :     S I P R N E T   t r a i n i n g   r e q u e s t < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 2 : 5 0 : 1 4 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 2 : 4 9 : 3 2 < / p > < / l i >  < l i > L o o k   f o r   t i e   b a r s   o n   a m a z o n < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 5 : 4 1 : 4 7 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 5 : 4 1 : 4 5 < / p > < / l i >  < l i > e n a b l e   o s   x   c a c h i n g   s e r v e r < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 9 : 0 4 : 1 1 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 9 : 0 4 : 1 1 < / p > < / l i >  < l i > A s k   R o n   a b o u t   a p p r o v a l   f o r   b u s i n e s s   c a r d s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 9 : 0 4 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 9 : 0 4 : 2 2 < / p > < / l i >  < l i > G e t   M a x i   O m n i F o c u s   a p p l e s c r i p t s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 9 : 0 4 : 2 7 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 9 : 0 4 : 2 7 < / p > < / l i >  < / u l >  < h 2 > P e r s o n a l   >   S i n g l e   A c t i o n < / h 2 >  < b r > < u l > < l i > C h e c k   o u t   F r e e c y c l e . o r g < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   1 0 : 2 9 : 0 3 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   1 0 : 2 9 : 0 3 < / p > < / l i >  < l i > s e t   u p   d r o b o   t o   s e n d   e m a i l   a l e r t s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   1 0 : 2 9 : 0 5 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   1 0 : 2 9 : 0 5 < / p > < / l i >  < / u l >  < h 2 > P e r s o n a l   :   H o u s e   >   R o u t i n e   C h o r e s < / h 2 >  < b r > < u l > < l i > U p d a t e   p o r t   a n d   f i n k < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   T u e s d a y ,   O c t o b e r   2 8 ,   2 0 1 4   a t   0 7 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 1 7 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 1 7 < / p > < / l i >  < l i > C h e c k   1 P a s s w o r d   f o r   v u l n e r a b l e   p a s s w o r d s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   T u e s d a y ,   O c t o b e r   2 8 ,   2 0 1 4   a t   0 7 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 1 5 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 1 5 < / p > < / l i >  < / u l >  < h 2 > P e r s o n a l   :   H o u s e   >   S e t   u p   t h e   n u r s e r y < / h 2 >  < b r > < u l > < l i > H a n g   d e c a l s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   F r i d a y ,   M a r c h   2 7 ,   2 0 1 5   a t   0 8 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 5 : 2 5 : 5 4 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 5 : 2 5 : 5 4 < / p > < / l i >  < l i > r e s e a r c h   b a b y   m o n i t o r s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 5 : 2 5 : 5 0 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 5 : 2 5 : 5 0 < / p > < / l i >  < / u l >  < h 2 > P e r s o n a l   >   C a r < / h 2 >  < b r > < u l > < l i > W a s h   c a r < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   T h u r s d a y ,   N o v e m b e r   6 ,   2 0 1 4   a t   0 0 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 1 3 : 4 2 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 1 3 : 4 2 < / p > < / l i >  < / u l >  < h 2 > P e r s o n a l   >   L i l a < / h 2 >  < b r > < u l > < l i > g e t   d o c t o r   c o n t a c t   i n f o < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 3 3 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 3 3 < / p > < / l i >  < l i > F i n d   o u t   w h a t   n e e d s   t o   g o   i n   H o l l y ' s   B a b y   B a g < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 2 5 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 2 5 < / p > < / l i >  < l i > B a b y   b a g < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 3 6 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 3 6 < / p > < / l i >  < / u l >  < h 2 > P r o   :   A P L   >   M a n a g e r < / h 2 >  < b r > < u l > < l i > U p d a t e   G A L   i n f o < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 3 : 1 1 : 4 2 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 3 : 1 1 : 4 2 < / p > < / l i >  < l i > T a l k   t o   W e n d y   &   R o n   a b o u t   H a s s a n ' s   c l e a r a n c e   t r a n s f e r < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 3 : 1 1 : 2 1 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 3 : 1 1 : 2 1 < / p > < / l i >  < l i > T a l k   t o   R o n   a b o u t   r e q u i r e m e n t s   f r e e z e   f o r   P L 2 < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 3 : 1 1 : 1 4 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   1 3 ,   2 0 1 5   a t   1 3 : 1 1 : 1 4 < / p > < / l i >  < / u l >  < h 2 > P r o   :   A P L   >   I S   C h a n g e s < / h 2 >  < b r > < u l > < l i > B u i l d i n g   3 6   I S   g o e s   f r o m   M i c h a e l   t o   K i m . < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 5 : 3 8 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 5 : 3 8 < / p > < / l i >  < l i > I S 3 5   b e c o m e s   a   t e a m   e f f o r t   w i t h   R a s h a a n   a n d   M i c h a e l   ( &   H a s s a n ? ) . < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 5 : 4 0 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 5 : 4 0 < / p > < / l i >  < l i > I S 3 5   b e c o m e s   a   t e a m   e f f o r t   w i t h   R a s h a a n   a n d   M i c h a e l   ( &   H a s s a n ? ) . < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 5 : 4 8 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 5 : 4 8 < / p > < / l i >  < l i > C a n   J a s o n   t a k e   o n   t h e   a d d i t i o n a l   S S T   w o r k   A N D   a r c h i t e c t u r a l   d e s i g n   o f   I S 3 5   A N D   k e e p   h i s   o t h e r   w o r k   a t   a n   a c c e p t a b l e   l e v e l   o r   w i l l   s o m e t h i n g   h a v e   t o   g i v e ? < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 1 : 1 8 : 3 9 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 1 : 1 8 : 3 9 < / p > < / l i >  < l i > N e w   B l d g .   4 8 / M P 6   u n c l a s s i f i e d   w o r k   g o e s   t o   C h a d . < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 2 : 4 0 : 2 0 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 2 : 4 0 : 2 0 < / p > < / l i >  < l i > C A L   f a c i l i t y   t r a n s i t i o n s   t o   ( B r i a n . �   R a s h a a n ? �   H a s s a n ? ) < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 5 : 4 4 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 5 : 4 4 < / p > < / l i >  < l i > I s   t h i s   t o o   m u c h   f o r   C h a d   t o   t a k e   o n ;   w i l l   w e   n e e d   t o   l i g h t e n   h i s   l o a d   a   b i t ? < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 2 : 4 0 : 5 8 < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   M a y   6 ,   2 0 1 5   a t   1 2 : 4 0 : 5 8 < / p > < / l i >  < / u l >  < h 2 > P r o   :   A P L   >   I S 3 5 < / h 2 >  < b r > < u l > < l i > A s k   J a s o n   i f   h e   t a l k e d   t o   R o b   i f   h e   c a n   v i r t u a l i z e   t h e   c u s t o m   a p p   i n   I S 3 5   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   M o n d a y ,   A p r i l   6 ,   2 0 1 5   a t   0 8 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 1 : 5 8 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 1 : 5 8 < / p > < / l i >  < l i > G i v e   D e a n   F i s h e r   a n   e s t i m a t e   o f   h o w   m u c h   t i m e   w e   n e e d   t o   g e t   Q A T   s e t   u p < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 2 : 0 7 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 2 : 0 7 < / p > < / l i >  < l i > T a l k   t o   I S 3 5   P M   a b o u t   g e t t i n g   o t h e r s   r e a d   o n < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 2 : 1 5 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   0 9 : 5 2 : 1 5 < / p > < / l i >  < / u l >  < h 2 > P r o   :   A P L   >   C l e a r a n c e < / h 2 >  < b r > < u l > < l i > A s k   d a d   f o r   s s n < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 0 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 0 < / p > < / l i >  < l i > T y p e   o f   c i t i z e n s h i p < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 2 < / p > < / l i >  < l i > D o c u m e n t   n u m b e r   o f   c i t i z e n s h i p < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 2 < / p > < / l i >  < l i > C o u r t   n a m e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 4 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 4 < / p > < / l i >  < l i > A d d r e s s   o f   c o u r t < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 4 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 4 < / p > < / l i >  < l i > A s k   m o m   f o r   s s n < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 4 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 4 < / p > < / l i >  < l i > D o c u m e n t   N u m b e r < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 6 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 6 < / p > < / l i >  < l i > C o u r t   n a m e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 6 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 6 < / p > < / l i >  < l i > C o u r t   A d d r e s s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 6 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 1 6 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " R e a s o n   f o r   l e a v i n g   t h e   e m p l o y m e n t   a c t i v i t y " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 0 2 : 2 0 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 0 2 : 2 0 < / p > < / l i >  < l i > A n s w e r   " F o r   t h i s   e m p l o y m e n t   h a v e   a n y   o f   t h e   f o l l o w i n g   h a p p e n e d   t o   y o u   i n   t h e   l a s t   s e v e n   ( 7 )   y e a r s ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 0 2 : 2 2 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 0 2 : 2 2 < / p > < / l i >  < l i > A n s w e r   " D o   y o u   h a v e   a n   a d d i t i o n a l   e m p l o y m e n t   a c t i v i t y   t o   e n t e r ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 0 2 : 2 3 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 0 2 : 2 3 < / p > < / l i >  < l i > A c c o u n t   f o r   y o u r   e m p l o y m e n t   a c t i v i t i e s ,   w i t h o u t   b r e a k s ,   f o r   t h e   p r e v i o u s   1 0   y e a r s .   D o   n o t   l i s t   e m p l o y m e n t s   b e f o r e   y o u r   1 8 t h   b i r t h d a y   u n l e s s   t o   p r o v i d e   a   m i n i m u m   o f   2   y e a r s   o f   e m p l o y m e n t   h i s t o r y .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 0 2 : 2 6 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 0 2 : 2 6 < / p > < / l i >  < l i > E m p l o y m e n t   A c t i v i t i e s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 1 : 2 0 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 1 : 2 0 < / p > < / l i >  < l i > A n s w e r   " D o   y o u   h a v e   f o r m e r   f e d e r a l   c i v i l i a n   e m p l o y m e n t ,   e x c l u d i n g   m i l i t a r y   s e r v i c e ,   N O T   i n d i c a t e d   p r e v i o u s l y ,   t o   r e p o r t ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 1 : 1 5 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 1 : 1 5 < / p > < / l i >  < l i > A n s w e r   " H a v e   a n y   o f   t h e   f o l l o w i n g   h a p p e n e d   t o   y o u   i n   t h e   l a s t   s e v e n   ( 7 )   y e a r s   a t   e m p l o y m e n t   a c t i v i t i e s   t h a t   y o u   h a v e   n o t   p r e v i o u s l y   l i s t e d ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 2 0 : 4 8 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   1 ,   2 0 1 5   a t   1 3 : 2 0 : 4 8 < / p > < / l i >  < l i > I n f o r m a t i o n   s h o u l d   n o t   b e   p r o v i d e d   f o r   " S t a t e   o f   s e r v i c e " .   S t a t e   o f   s e r v i c e   i s   o n l y   r e q u i r e d   f o r   N a t i o n a l   G u a r d   d u t y .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " Y o u r   s e r v i c e   n u m b e r " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " T y p e   o f   d i s c h a r g e   y o u   r e c e i v e d " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " D a t e   o f   d i s c h a r g e   l i s t e d   a b o v e " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < / p > < / l i >  < l i > A n s w e r   " D o   y o u   h a v e   a d d i t i o n a l   m i l i t a r y   s e r v i c e   t o   r e p o r t ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 6 < / p > < / l i >  < l i > P r o v i d e   a t   l e a s t   o n e   d e t a i l   r e c o r d   f o r   " S u m m a r y   o f   P e o p l e   W h o   K n o w   Y o u   W e l l "   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 0 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 0 < / p > < / l i >  < l i > P r o v i d e   a   p e r s o n   w h o   k n o w s   y o u   w e l l .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 0 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 0 < / p > < / l i >  < l i > P r o v i d e   a   s e c o n d   p e r s o n   w h o   k n o w s   y o u   w e l l .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 0 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 0 < / p > < / l i >  < l i > P r o v i d e   a   t h i r d   p e r s o n   w h o   k n o w s   y o u   w e l l .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 0 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 2 : 3 0 : 2 0 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " C o h a b i t a n t ' s   U . S .   S o c i a l   S e c u r i t y   N u m b e r " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 0 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 0 < / p > < / l i >  < l i > P r o v i d e d   " D a t e   c o h a b i t a t i o n   b e g a n "   m u s t   n o t   b e   l a t e r   t h a n   t o d a y ' s   d a t e ,   4 / 2 9 / 2 0 1 5 .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 0 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 0 < / p > < / l i >  < l i > A n s w e r   " D o   y o u   h a v e   a n   a d d i t i o n a l   c o h a b i t a n t   t o   r e p o r t ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 0 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 0 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " O n e   t y p e   o f   c i t i z e n s h i p   d o c u m e n t a t i o n   a n d   d o c u m e n t   n u m b e r " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " D o c u m e n t   n u m b e r " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " O n e   t y p e   o f   c i t i z e n s h i p   d o c u m e n t a t i o n   a n d   d o c u m e n t   n u m b e r " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " D o c u m e n t   n u m b e r " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " R e l a t i v e   t y p e " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > A   m i d d l e   n a m e   i s   r e q u i r e d   f o r   " Y o u r   r e l a t i v e ' s   f u l l   n a m e " ,   o r   s e l e c t   N o   M i d d l e   N a m e   i f   a p p r o p r i a t e .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " Y o u r   r e l a t i v e ' s   d a t e   o f   b i r t h " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > P r o v i d e   a   r e s p o n s e   f o r   " Y o u r   r e l a t i v e ' s   d a t e   o f   b i r t h " .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > A n s w e r   " I s   y o u r   r e l a t i v e   d e c e a s e d ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > Y o u   h a v e   i n d i c a t e d   F a t h e r - i n - l a w   a s   a   r e l a t i v e   t y p e .   P r o v i d e   a   d e t a i l   r e c o r d   f o r   F a t h e r - i n - l a w .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 2 < / p > < / l i >  < l i > A n s w e r   " I n   t h e   l a s t   s e v e n   ( 7 )   y e a r s ,   h a v e   y o u   i l l e g a l l y   u s e d   a n y   d r u g s   o r   c o n t r o l l e d   s u b s t a n c e s ?   U s e   o f   a   d r u g   o r   c o n t r o l l e d   s u b s t a n c e   i n c l u d e s   i n j e c t i n g ,   s n o r t i n g ,   i n h a l i n g ,   s w a l l o w i n g ,   e x p e r i m e n t i n g   w i t h   o r   o t h e r w i s e   c o n s u m i n g   a n y   d r u g   o r   c o n t r o l l e d   s u b s t a n c e . "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 4 : 0 3 : 5 0 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 4 : 0 3 : 5 0 < / p > < / l i >  < l i > A n s w e r   " O t h e r   t h a n   p r e v i o u s l y   l i s t e d ,   h a v e   a n y   o f   t h e   f o l l o w i n g   h a p p e n e d   t o   y o u ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 4 : 3 1 : 4 1 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 4 : 3 1 : 4 1 < / p > < / l i >  < l i > A n s w e r   " I n   t h e   l a s t   s e v e n   ( 7 )   y e a r s   h a v e   y o u   i n t r o d u c e d ,   r e m o v e d ,   o r   u s e d   h a r d w a r e ,   s o f t w a r e ,   o r   m e d i a   i n   c o n n e c t i o n   w i t h   a n y   i n f o r m a t i o n   t e c h n o l o g y   s y s t e m   w i t h o u t   a u t h o r i z a t i o n ,   w h e n   s p e c i f i c a l l y   p r o h i b i t e d   b y   r u l e s ,   p r o c e d u r e s ,   g u i d e l i n e s ,   o r   r e g u l a t i o n s   o r   a t t e m p t e d   a n y   o f   t h e   a b o v e ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 4 : 0 5 : 0 4 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 4 : 0 5 : 0 4 < / p > < / l i >  < l i > A n s w e r   " I n   t h e   l a s t   t e n   ( 1 0 )   y e a r s ,   h a v e   y o u   b e e n   a   p a r t y   t o   a n y   p u b l i c   r e c o r d   c i v i l   c o u r t   a c t i o n   n o t   l i s t e d   e l s e w h e r e   o n   t h i s   f o r m ? "   q u e s t i o n   y e s   o r   n o .!�   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 4 : 1 0 : 4 4 < b r > C o m p l e t i o n   D a t e :   S u n d a y ,   M a y   3 ,   2 0 1 5   a t   1 4 : 1 0 : 4 4 < / p > < / l i >  < l i > C o m p l e t e   p r o c e s s i n g   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 5 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   7 ,   2 0 1 5   a t   0 9 : 4 0 : 2 5 < / p > < / l i >  < / u l >  < h 2 > P r o   :   A P L   >   l o a n e r   l a p t o p s < / h 2 >  < b r > < u l > < l i > T a l k   t o   R o b   a b o u t   L a p t o p s   
 < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   M o n d a y ,   A p r i l   6 ,   2 0 1 5   a t   0 8 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   T u e s d a y ,   M a y   1 2 ,   2 0 1 5   a t   0 9 : 1 3 : 5 3 < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   M a y   1 2 ,   2 0 1 5   a t   0 9 : 1 3 : 5 3 < / p > < / l i >  < / u l >  < h 2 > P r o   :   A P L   >   C l e a r a n c e < / h 2 >  < b r > < u l > < l i > B a s i c a l l y ,   t h e y   w a n t   y o u   t o   l i s t   a l l   o f   y o u r   c o m p l e t e d   e d u c a t i o n .     P l e a s e   a d d   y o u r   h i g h   s c h o o l . < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 4 : 1 4 : 5 4 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 4 : 1 4 : 5 4 < / p > < / l i >  < l i > E n t r y   1      S i n c e   y o u  v e   r e p o r t e d   f o r   w o r k ,   p l e a s e   u p d a t e   y o u r   p o s i t i o n   t i t l e   a n d   d e l e t e   n o t a t i o n s   t o   P r e - E m p l o y m e n t . < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 4 : 1 9 : 5 4 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 4 : 1 9 : 5 4 < / p > < / l i >  < l i > C o h a b i t a n t      T h e   f o r m   i s   r e f e r r i n g   t o   a   C o h a b i t a n t ,   a s   i n   a   s p o u s e - l i k e   r e l a t i o n s h i p .       Y o u r   p a r e n t s   d o   n o t   a p p l y   h e r e   s o   y o u   s h o u l d   c h a n g e   y o u r   a n s w e r   t o   N o .   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 4 : 2 3 : 1 2 < b r > C o m p l e t i o n   D a t e :   T h u r s d a y ,   M a y   1 4 ,   2 0 1 5   a t   1 4 : 2 3 : 1 2 < / p > < / l i >  < / u l >  < h 2 > P r o   >   G T D < / h 2 >  < b r > < u l > < l i > C l e a n   o u t   O m n i F o c u s   I n b o x < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   S u n d a y ,   M a r c h   2 9 ,   2 0 1 5   a t   0 7 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 3 9 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 3 9 < / p > < / l i >  < l i > O m n i F o c u s   R e v i e w < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   S u n d a y ,   M a r c h   2 9 ,   2 0 1 5   a t   0 7 : 0 0 : 0 0 < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 4 2 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 0 9 : 4 2 < / p > < / l i >  < / u l >  < h 2 > S o m e d a y / M a y b e   >   R e a d / L i s t e n / W a t c h < / h 2 >  < b r > < u l > < l i > F i n d   o u t   h o w   t o   u s e   H a r m o n y   H u b   a s   a   b l u e t o o t h   k e y b o a r d   v i a   i O S < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 1 5 : 2 3 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 1 5 : 2 3 < / p > < / l i >  < / u l >  < / b o d y > < / h t m l >
�% boovtrue. ��P�� 7P 7 QRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������/Q �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  o E c 7 o b T H 6 Y Q
�� kfrmID  R �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  c T 4 B I H P i j p s
�� kfrmID  S �� ������� D���~
� 
docu� ���  k 5 T M d f A C 0 m m
�~ kfrmID  
�� 
FCpr� ���  g V I 0 B w 6 Z C G Q
�� kfrmID  T �� ��}��|� D�{��z
�{ 
docu� ���  k 5 T M d f A C 0 m m
�z kfrmID  
�} 
FCpr� ���  j s g M N v 0 w 0 j Y
�| kfrmID  U �� ��y��x� D�w��v
�w 
docu� ���  k 5 T M d f A C 0 m m
�v kfrmID  
�y 
FCpr� ���  o C E 1 _ Q W O - 7 U
�x kfrmID  V �� ��u��t� D�s��r
�s 
docu� ���  k 5 T M d f A C 0 m m
�r kfrmID  
�u 
FCpr� ���  b S p S 8 4 d U D z G
�t kfrmID  W �� ��q��p� D�o��n
�o 
docu� ���  k 5 T M d f A C 0 m m
�n kfrmID  
�q 
FCpr� ���  g p o V D Q U a 8 t W
�p kfrmID  X �� ��m��l� D�k��j
�k 
docu� ���  k 5 T M d f A C 0 m m
�j kfrmID  
�m 
FCpr� ���  f C e M h o r 7 z U U
�l kfrmID  Y �� ��i��h� D�g��f
�g 
docu� ���  k 5 T M d f A C 0 m m
�f kfrmID  
�i 
FCpr� ���  m f _ 3 4 F h v J g 8
�h kfrmID  Z �� ��e��d� D�c��b
�c 
docu� ���  k 5 T M d f A C 0 m m
�b kfrmID  
�e 
FCpr� ���  c o W x d Y N m b 5 J
�d kfrmID  [ �� ��a��`� D�_��^
�_ 
docu� ���  k 5 T M d f A C 0 m m
�^ kfrmID  
�a 
FCpr� ���  m c y s 2 f n L e V N
�` kfrmID  \ �� ��]��\� D�[��Z
�[ 
docu� ���  k 5 T M d f A C 0 m m
�Z kfrmID  
�] 
FCpr� ���  a N w Y F A H H n w c
�\ kfrmID  ] �� ��Y��X� D�W��V
�W 
docu� ���  k 5 T M d f A C 0 m m
�V kfrmID  
�Y 
FCpr� ���  g Z 7 o h h f J - O h
�X kfrmID  ^ �� ��U��T� D�S��R
�S 
docu� ���  k 5 T M d f A C 0 m m
�R kfrmID  
�U 
FCpr� ���  o S F T P H E 0 q E D
�T kfrmID  _ �� ��Q��P� D�O��N
�O 
docu� ���  k 5 T M d f A C 0 m m
�N kfrmID  
�Q 
FCpr� ���  d 8 I 3 u k X B G r k
�P kfrmID  ` �� ��M��L� D�K��J
�K 
docu� ���  k 5 T M d f A C 0 m m
�J kfrmID  
�M 
FCpr� ���  o 1 w 6 n 1 0 v I K R
�L kfrmID  a �� ��I��H� D�G��F
�G 
docu� ���  k 5 T M d f A C 0 m m
�F kfrmID  
�I 
FCpr� ���  h J m g 9 m l G p r y
�H kfrmID  b �� ��E��D� D�C��B
�C 
docu� ���  k 5 T M d f A C 0 m m
�B kfrmID  
�E 
FCpr� ���  i M W x h s - 8 A C a
�D kfrmID  c �� ��A��@� D�?��>
�? 
docu� ���  k 5 T M d f A C 0 m m
�> kfrmID  
�A 
FCpr� ���  i b y G L B M F C C T
�@ kfrmID  d �� ��=��<� D�;��:
�; 
docu� ���  k 5 T M d f A C 0 m m
�: kfrmID  
�= 
FCpr� ���  b g K 5 u 3 l m f V R
�< kfrmID  e ��  �9�8  D�7�6
�7 
docu �  k 5 T M d f A C 0 m m
�6 kfrmID  
�9 
FCpr �  d 1 7 x y O Y 6 R K a
�8 kfrmID  f  �5�4 D�3�2
�3 
docu �		  k 5 T M d f A C 0 m m
�2 kfrmID  
�5 
FCpr �

  i Z R k I p 2 k 7 f S
�4 kfrmID  g  �1�0 D�/�.
�/ 
docu �  k 5 T M d f A C 0 m m
�. kfrmID  
�1 
FCpr �  e v B 9 G C p _ t n L
�0 kfrmID  h  �-�, D�+�*
�+ 
docu �  k 5 T M d f A C 0 m m
�* kfrmID  
�- 
FCpr �  g i g Y m g 3 r T 2 g
�, kfrmID  i  �)�( D�'�&
�' 
docu �  k 5 T M d f A C 0 m m
�& kfrmID  
�) 
FCpr �  e 8 x D g P C m 0 p Y
�( kfrmID  j  �%�$ D�# �"
�# 
docu  �!!  k 5 T M d f A C 0 m m
�" kfrmID  
�% 
FCpr �""  e d g V F l 1 k t t I
�$ kfrmID  k ## $�!%� $ D�&�
� 
docu& �''  k 5 T M d f A C 0 m m
� kfrmID  
�! 
FCpr% �((  o d 1 S r G f g N 9 L
�  kfrmID  l )) *�+�* D�,�
� 
docu, �--  k 5 T M d f A C 0 m m
� kfrmID  
� 
FCpr+ �..  f s g K J o 6 b M C -
� kfrmID  m // 0�1�0 D�2�
� 
docu2 �33  k 5 T M d f A C 0 m m
� kfrmID  
� 
FCpr1 �44  m s m X h k q T T E z
� kfrmID  n 55 6�7�6 D�8�
� 
docu8 �99  k 5 T M d f A C 0 m m
� kfrmID  
� 
FCpr7 �::  k Z Q K 7 4 d t f P H
� kfrmID  o ;; <�=�< D�>�
� 
docu> �??  k 5 T M d f A C 0 m m
� kfrmID  
� 
FCpr= �@@  i G S K I b c 4 B V H
� kfrmID  p AA B�C�B D�D�

� 
docuD �EE  k 5 T M d f A C 0 m m
�
 kfrmID  
� 
FCprC �FF  e M P j X Q 4 v U 0 S
� kfrmID  q GG H�	I�H D�J�
� 
docuJ �KK  k 5 T M d f A C 0 m m
� kfrmID  
�	 
FCprI �LL  o 1 i D T t Y 1 c N C
� kfrmID  r MM N�O�N D�P�
� 
docuP �QQ  k 5 T M d f A C 0 m m
� kfrmID  
� 
FCprO �RR  g D D V 2 p p G - x _
� kfrmID  s SS T�U� T D��V��
�� 
docuV �WW  k 5 T M d f A C 0 m m
�� kfrmID  
� 
FCprU �XX  j 7 1 L r a 8 p s A j
�  kfrmID  t YY Z��[��Z D��\��
�� 
docu\ �]]  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr[ �^^  c i k f D z F c g j 8
�� kfrmID  u __ `��a��` D��b��
�� 
docub �cc  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpra �dd  g J z Z w Q 1 w 7 g s
�� kfrmID  v ee f��g��f D��h��
�� 
docuh �ii  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCprg �jj  d F A L T m n O Z z 8
�� kfrmID  w kk l��m��l D��n��
�� 
docun �oo  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCprm �pp  d y b s I G T 4 q Q I
�� kfrmID  x qq r��s��r D��t��
�� 
docut �uu  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCprs �vv  h 6 5 n h y P t O 4 G
�� kfrmID  y ww x��y��x D��z��
�� 
docuz �{{  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpry �||  a 7 W r Q O 2 - I W Y
�� kfrmID  z }} ~����~ D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr ���  j 3 L d r P s J q O 1
�� kfrmID  { �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  p X D F B P U I 3 - 9
�� kfrmID  | �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  k d l u A i o Q g A P
�� kfrmID  } �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  c 6 t M 5 H W L 7 D J
�� kfrmID  ~ �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  b 8 y 2 C n T W n e v
�� kfrmID   �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  d c b k 7 7 K M A _ D
�� kfrmID  � �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  m 4 V N D 9 W Q m 4 L
�� kfrmID  � �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  e _ C V E i 3 0 Q q N
�� kfrmID  � �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  m N j y L p j I I L S
�� kfrmID  � �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  g 1 s q 5 l s b f T P
�� kfrmID  � �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  c 3 A s x 0 p N S G 5
�� kfrmID  � �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  n f l o d n 4 D 3 E 9
�� kfrmID  � �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  e A b P J V i M x N a
�� kfrmID  / �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCpr� ���  o 1 - 2 W 8 P P r V w
�� kfrmID  0 ����� �  22 �� ������� D�����
�� 
docu� ���  k 5 T M d f A C 0 m m
�� kfrmID  
�� 
FCac� ���  l Q F y p S o v r b H
�� kfrmID  1 ���   S o m e d a y / M a y b e   >  3 ��� � S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 1 5 : 2 3 < b r > C o m p l e t i o n   D a t e :   F r i d a y ,   M a y   8 ,   2 0 1 5   a t   1 0 : 1 5 : 2 34 �� ������� ����
�� 
EVnb� ��� 
 I n b o x
�� 
EVnn� ��� v x - c o r e d a t a : / / E 2 4 3 4 B A A - 4 6 D 1 - 4 3 6 8 - 9 0 C C - B C 8 8 2 F A 7 6 2 F E / E N N o t e / p 2
�� kfrmID  �$  �#  �"  �!  �   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  ascr  ��ޭ