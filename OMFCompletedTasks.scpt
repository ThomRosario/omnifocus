FasdUAS 1.101.10   ��   ��    k             l     ��  ��    a [ This property controls whether full project paths (including parent folders) are displayed     � 	 	 �   T h i s   p r o p e r t y   c o n t r o l s   w h e t h e r   f u l l   p r o j e c t   p a t h s   ( i n c l u d i n g   p a r e n t   f o l d e r s )   a r e   d i s p l a y e d   
  
 j     �� �� 20 includefullprojectpaths includeFullProjectPaths  m     ��
�� boovtrue      l     ��������  ��  ��        l     ��  ��    L F These properties control whether additional task content is displayed     �   �   T h e s e   p r o p e r t i e s   c o n t r o l   w h e t h e r   a d d i t i o n a l   t a s k   c o n t e n t   i s   d i s p l a y e d      j    �� �� (0 includetaskcontext includeTaskContext  m    ��
�� boovtrue      j    �� �� 40 includetaskestimatedtime includeTaskEstimatedTime  m    ��
�� boovtrue      j   	 �� �� ,0 includetaskstartdate includeTaskStartDate  m   	 
��
�� boovtrue      j    �� �� :0 includetaskmodificationdate includeTaskModificationDate  m    ��
�� boovtrue     !   j    �� "�� 60 includetaskcompletiondate includeTaskCompletionDate " m    ��
�� boovtrue !  # $ # j    �� %�� $0 includetasknotes includeTaskNotes % m    ��
�� boovfals $  & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * 5 / This setting specifies a name for the new note    + � , , ^   T h i s   s e t t i n g   s p e c i f i e s   a   n a m e   f o r   t h e   n e w   n o t e )  - . - j    �� /�� 0 thenotename theNoteName / m     0 0 � 1 1 > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t .  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 7 1 Prompt the user to choose a scope for the report    7 � 8 8 b   P r o m p t   t h e   u s e r   t o   c h o o s e   a   s c o p e   f o r   t h e   r e p o r t 5  9 : 9 l     ;���� ; I    ������
�� .miscactvnull��� ��� null��  ��  ��  ��   :  < = < l    >���� > r     ? @ ? I   �� A B
�� .gtqpchltns    @   @ ns   A J     C C  D E D m     F F � G G 
 T o d a y E  H I H m     J J � K K  Y e s t e r d a y I  L M L m    	 N N � O O  T h i s   W e e k M  P Q P m   	 
 R R � S S  L a s t   W e e k Q  T�� T m   
  U U � V V  T h i s   M o n t h��   B �� W X
�� 
inSL W J     Y Y  Z�� Z m     [ [ � \ \  Y e s t e r d a y��   X �� ] ^
�� 
prmp ] m     _ _ � ` ` , G e n e r a t e   a   r e p o r t   f o r : ^ �� a��
�� 
appr a m     b b � c c > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t��   @ o      ����  0 thereportscope theReportScope��  ��   =  d e d l   ( f���� f Z   ( g h���� g =     i j i o    ����  0 thereportscope theReportScope j m    ��
�� boovfals h L   " $����  ��  ��  ��  ��   e  k l k l  ) 1 m���� m r   ) 1 n o n n   ) / p q p 4   * /�� r
�� 
cobj r m   - .����  q o   ) *����  0 thereportscope theReportScope o o      ����  0 thereportscope theReportScope��  ��   l  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w K E Calculate the task start and end dates, based on the specified scope    x � y y �   C a l c u l a t e   t h e   t a s k   s t a r t   a n d   e n d   d a t e s ,   b a s e d   o n   t h e   s p e c i f i e d   s c o p e v  z { z l  2 ; |���� | r   2 ; } ~ } I  2 7������
�� .misccurdldt    ��� null��  ��   ~ o      ���� 0 thestartdate theStartDate��  ��   {   �  l  < E ����� � r   < E � � � m   < =����   � n       � � � 1   @ D��
�� 
hour � o   = @���� 0 thestartdate theStartDate��  ��   �  � � � l  F O ����� � r   F O � � � m   F G����   � n       � � � 1   J N��
�� 
min  � o   G J���� 0 thestartdate theStartDate��  ��   �  � � � l  P Y ����� � r   P Y � � � m   P Q����   � n       � � � m   T X��
�� 
scnd � o   Q T���� 0 thestartdate theStartDate��  ��   �  � � � l  Z u ����� � r   Z u � � � [   Z q � � � [   Z m � � � [   Z e � � � o   Z ]���� 0 thestartdate theStartDate � l  ] d ����� � ]   ] d � � � m   ] `����  � 1   ` c��
�� 
hour��  ��   � l  e l ����� � ]   e l � � � m   e h���� ; � 1   h k��
�� 
min ��  ��   � m   m p���� ; � o      ���� 0 
theenddate 
theEndDate��  ��   �  � � � l     ��������  ��  ��   �  � � � l  v' ����� � Z   v' � � ��� � =   v { � � � o   v w����  0 thereportscope theReportScope � m   w z � � � � � 
 T o d a y � r   ~ � � � � n   ~ � � � � 1   � ���
�� 
dstr � o   ~ ����� 0 thestartdate theStartDate � o      ���� 0 thedaterange theDateRange �  � � � =   � � � � � o   � �����  0 thereportscope theReportScope � m   � � � � � � �  Y e s t e r d a y �  � � � k   � � � �  � � � r   � � � � � \   � � � � � o   � ����� 0 thestartdate theStartDate � ]   � � � � � m   � �����  � 1   � ���
�� 
days � o      ���� 0 thestartdate theStartDate �  � � � r   � � � � � \   � � � � � o   � ����� 0 
theenddate 
theEndDate � ]   � � � � � m   � �����  � 1   � ���
�� 
days � o      ���� 0 
theenddate 
theEndDate �  ��� � r   � � � � � n   � � � � � 1   � ���
�� 
dstr � o   � ����� 0 thestartdate theStartDate � o      ���� 0 thedaterange theDateRange��   �  � � � =   � � � � � o   � �����  0 thereportscope theReportScope � m   � � � � � � �  T h i s   W e e k �  � � � k   �# � �  � � � W   � � � � � r   � � � � � \   � � � � � o   � ����� 0 thestartdate theStartDate � ]   � � � � � m   � �����  � 1   � ���
�� 
days � o      ���� 0 thestartdate theStartDate � =   � � � � � l  � � ����� � n   � � � � � m   � ���
�� 
wkdy � o   � ����� 0 thestartdate theStartDate��  ��   � m   � ���
�� 
sun  �  � � � W   � � � � r   � � � � [   � � � � o   � ��� 0 
theenddate 
theEndDate � ]   � � � � m   � ��~�~  � 1   � �}
�} 
days � o      �|�| 0 
theenddate 
theEndDate � =   � � � � � l  � � ��{�z � n   � � � � � m   � ��y
�y 
wkdy � o   � ��x�x 0 
theenddate 
theEndDate�{  �z   � m   � ��w
�w 
sat  �  ��v � r  # � � � b   � � � b   �  � l �u�t n   1  �s
�s 
dstr o  �r�r 0 thestartdate theStartDate�u  �t    m   �    t h r o u g h   � l �q�p n   1  �o
�o 
dstr o  �n�n 0 
theenddate 
theEndDate�q  �p   � o      �m�m 0 thedaterange theDateRange�v   � 	
	 =  &+ o  &'�l�l  0 thereportscope theReportScope m  '* �  L a s t   W e e k
  k  .�  r  .= \  .9 o  .1�k�k 0 thestartdate theStartDate ]  18 m  14�j�j  1  47�i
�i 
days o      �h�h 0 thestartdate theStartDate  r  >M \  >I o  >A�g�g 0 
theenddate 
theEndDate ]  AH !  m  AD�f�f ! 1  DG�e
�e 
days o      �d�d 0 
theenddate 
theEndDate "#" W  Np$%$ r  ^k&'& \  ^g()( o  ^a�c�c 0 thestartdate theStartDate) ]  af*+* m  ab�b�b + 1  be�a
�a 
days' o      �`�` 0 thestartdate theStartDate% =  R],-, l RY.�_�^. n  RY/0/ m  UY�]
�] 
wkdy0 o  RU�\�\ 0 thestartdate theStartDate�_  �^  - m  Y\�[
�[ 
sun # 121 W  q�343 r  ��565 [  ��787 o  ���Z�Z 0 
theenddate 
theEndDate8 ]  ��9:9 m  ���Y�Y : 1  ���X
�X 
days6 o      �W�W 0 
theenddate 
theEndDate4 =  u�;<; l u|=�V�U= n  u|>?> m  x|�T
�T 
wkdy? o  ux�S�S 0 
theenddate 
theEndDate�V  �U  < m  |�R
�R 
sat 2 @�Q@ r  ��ABA b  ��CDC b  ��EFE l ��G�P�OG n  ��HIH 1  ���N
�N 
dstrI o  ���M�M 0 thestartdate theStartDate�P  �O  F m  ��JJ �KK    t h r o u g h  D l ��L�L�KL n  ��MNM 1  ���J
�J 
dstrN o  ���I�I 0 
theenddate 
theEndDate�L  �K  B o      �H�H 0 thedaterange theDateRange�Q   OPO =  ��QRQ o  ���G�G  0 thereportscope theReportScopeR m  ��SS �TT  T h i s   M o n t hP U�FU k  �#VV WXW W  ��YZY r  ��[\[ \  ��]^] o  ���E�E 0 thestartdate theStartDate^ ]  ��_`_ m  ���D�D ` 1  ���C
�C 
days\ o      �B�B 0 thestartdate theStartDateZ =  ��aba l ��c�A�@c n  ��ded 1  ���?
�? 
day e o  ���>�> 0 thestartdate theStartDate�A  �@  b m  ���=�= X fgf W  ��hih r  ��jkj [  ��lml o  ���<�< 0 
theenddate 
theEndDatem ]  ��non m  ���;�; o 1  ���:
�: 
daysk o      �9�9 0 
theenddate 
theEndDatei > ��pqp l ��r�8�7r n  ��sts m  ���6
�6 
mntht o  ���5�5 0 
theenddate 
theEndDate�8  �7  q l ��u�4�3u n  ��vwv m  ���2
�2 
mnthw o  ���1�1 0 thestartdate theStartDate�4  �3  g xyx r  �z{z \  �|}| o  ��0�0 0 
theenddate 
theEndDate} ]  ~~ m  �/�/  1  �.
�. 
days{ o      �-�- 0 
theenddate 
theEndDatey ��,� r  #��� b  ��� b  ��� l ��+�*� n  ��� 1  �)
�) 
dstr� o  �(�( 0 thestartdate theStartDate�+  �*  � m  �� ���    t h r o u g h  � l ��'�&� n  ��� 1  �%
�% 
dstr� o  �$�$ 0 
theenddate 
theEndDate�'  �&  � o      �#�# 0 thedaterange theDateRange�,  �F  ��  ��  ��   � ��� l     �"�!� �"  �!  �   � ��� l     ����  � - ' Begin preparing the task list as HTML.   � ��� N   B e g i n   p r e p a r i n g   t h e   t a s k   l i s t   a s   H T M L .� ��� l (7���� r  (7��� b  (3��� b  (/��� m  (+�� ��� V < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < b r > < b >� o  +.�� 0 thedaterange theDateRange� m  /2�� ���   < / b > < b r > < h r > < b r >� o      �� &0 theprogressdetail theProgressDetail�  �  � ��� l     ����  �  �  � ��� l     ����  � F @ Retrieve a list of projects modified within the specified scope   � ��� �   R e t r i e v e   a   l i s t   o f   p r o j e c t s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� l 8=���� r  8=��� m  89�
� boovfals� o      �� .0 modifiedtasksdetected modifiedTasksDetected�  �  � ��� l >����� O  >���� O  D���� k  M��� ��� r  Ms��� 6Mo��� 2  MR�
� 
FCfx� F  Un��� ? Va��� n W[��� 1  W[�
� 
FCDm�  g  WW� o  \`�� 0 thestartdate theStartDate� A bm��� 1  cg�
� 
FCDm� o  hl�� 0 
theenddate 
theEndDate� o      �� *0 themodifiedprojects theModifiedProjects� ��� l tt�
���
  � ) # Loop through any detected projects   � ��� F   L o o p   t h r o u g h   a n y   d e t e c t e d   p r o j e c t s� ��	� Y  t������� k  ���� ��� r  ����� n  ����� 4  ����
� 
cobj� 1  ���
� 
OSav� o  ���� *0 themodifiedprojects theModifiedProjects� o      �� &0 thecurrentproject theCurrentProject� ��� l ������  � E ? Retrieve any project tasks modified within the specified scope   � ��� ~   R e t r i e v e   a n y   p r o j e c t   t a s k s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� r  ����� l ����� � 6����� n  ����� 2  ����
�� 
FCft� o  ������ &0 thecurrentproject theCurrentProject� F  ����� F  ����� F  ����� =  ����� n ����� 1  ����
�� 
FCcd�  g  ��� m  ����
�� boovtrue� ? ����� 1  ����
�� 
FCDm� o  ������ 0 thestartdate theStartDate� A ����� 1  ����
�� 
FCDm� o  ������ 0 
theenddate 
theEndDate� =  ����� 1  ����
�� 
FC#t� m  ������  �  �   � o      ���� &0 thecompletedtasks theCompletedTasks� ��� l ��������  � . ( Process the project if tasks were found   � ��� P   P r o c e s s   t h e   p r o j e c t   i f   t a s k s   w e r e   f o u n d� ���� Z  ��������� > ����� o  ������ &0 thecompletedtasks theCompletedTasks� J  ������  � k  ���� � � r  �� m  ����
�� boovtrue o      ���� .0 modifiedtasksdetected modifiedTasksDetected   l ������   9 3 Append the project folder path to the project name    � f   A p p e n d   t h e   p r o j e c t   f o l d e r   p a t h   t o   t h e   p r o j e c t   n a m e 	 r  ��

 m  �� �   o      ���� ,0 theprojectfolderpath theProjectFolderPath	  Z  ����� =  �� o  ������ 20 includefullprojectpaths includeFullProjectPaths m  ����
�� boovtrue k  �  r  � n  �� I  �������� ,0 getprojectfolderpath getProjectFolderPath �� o  ������ &0 thecurrentproject theCurrentProject��  ��    f  �� o      ���� ,0 theprojectfolderpath theProjectFolderPath �� Z ���� > 	 !  o  ���� ,0 theprojectfolderpath theProjectFolderPath! m  "" �##   r  $%$ b  &'& o  ���� ,0 theprojectfolderpath theProjectFolderPath' m  (( �))    >  % o      ���� ,0 theprojectfolderpath theProjectFolderPath��  ��  ��  ��  ��   *+* l   ��,-��  , , & Append the project name to the report   - �.. L   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   r e p o r t+ /0/ r   C121 b   ?343 b   ;565 b   7787 b   39:9 b   +;<; b   '=>= o   #���� &0 theprogressdetail theProgressDetail> m  #&?? �@@  < h 2 >< o  '*���� ,0 theprojectfolderpath theProjectFolderPath: n  +2ABA 1  .2��
�� 
pnamB o  +.���� &0 thecurrentproject theCurrentProject8 m  36CC �DD 
 < / h 2 >6 o  7:��
�� 
ret 4 m  ;>EE �FF  < b r > < u l >2 o      ���� &0 theprogressdetail theProgressDetail0 GHG l DD��IJ��  I 6 0 Loop through the detected tasks for the project   J �KK `   L o o p   t h r o u g h   t h e   d e t e c t e d   t a s k s   f o r   t h e   p r o j e c tH LML Y  D�N��OP��N k  U�QQ RSR r  UbTUT n  U^VWV 4  X^��X
�� 
cobjX 1  []��
�� 
OSbvW o  UX���� &0 thecompletedtasks theCompletedTasksU o      ����  0 thecurrenttask theCurrentTaskS YZY l cc��[\��  [ / ) Append the tasks's name to the task list   \ �]] R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s tZ ^_^ r  cv`a` b  crbcb b  cjded o  cf���� &0 theprogressdetail theProgressDetaile m  fiff �gg  < l i >c n  jqhih 1  mq��
�� 
pnami o  jm����  0 thecurrenttask theCurrentTaska o      ���� &0 theprogressdetail theProgressDetail_ jkj l ww��lm��  l 9 3 Set up a variable for the task detail, if relevant   m �nn f   S e t   u p   a   v a r i a b l e   f o r   t h e   t a s k   d e t a i l ,   i f   r e l e v a n tk opo r  w~qrq m  wzss �tt  r o      ���� 0 thetaskdetail theTaskDetailp uvu l ��wx��  w , & Append the context to the task detail   x �yy L   A p p e n d   t h e   c o n t e x t   t o   t h e   t a s k   d e t a i lv z{z Z  �|}����| =  �~~ o  ����� (0 includetaskcontext includeTaskContext m  ����
�� boovtrue} k  ���� ��� r  ����� n  ����� m  ����
�� 
FCct� o  ������  0 thecurrenttask theCurrentTask� o      ���� 0 
thecontext 
theContext� ���� Z ��������� > ����� o  ������ 0 
thecontext 
theContext� m  ����
�� 
msng� r  ����� n  ����� I  ��������� $0 appendtaskdetail appendTaskDetail� ��� o  ������ 0 thetaskdetail theTaskDetail� ��� n  ����� 1  ����
�� 
pnam� o  ������ 0 
thecontext 
theContext� ��� m  ���� ���  C o n t e x t� ���� m  ���� ���  ��  ��  �  f  ��� o      ���� 0 thetaskdetail theTaskDetail��  ��  ��  ��  ��  { ��� l ��������  � 3 - Append the estimated time to the task detail   � ��� Z   A p p e n d   t h e   e s t i m a t e d   t i m e   t o   t h e   t a s k   d e t a i l� ��� Z ��������� =  ����� o  ������ 40 includetaskestimatedtime includeTaskEstimatedTime� m  ����
�� boovtrue� r  ����� n  ����� I  ��������� $0 appendtaskdetail appendTaskDetail� ��� o  ������ 0 thetaskdetail theTaskDetail� ��� n  ����� 1  ����
�� 
FCEM� o  ������  0 thecurrenttask theCurrentTask� ��� m  ���� ���  E s t i m a t e d   T i m e� ���� m  ���� ���    m i n u t e s��  ��  �  f  ��� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l ��������  � / ) Append the start date to the task detail   � ��� R   A p p e n d   t h e   s t a r t   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z �������� =  ����� o  ������ ,0 includetaskstartdate includeTaskStartDate� m  ����
�� boovtrue� r  ���� n  ���� I  �������� $0 appendtaskdetail appendTaskDetail� ��� o  ������ 0 thetaskdetail theTaskDetail� ��� n  ���� 1  ���
�� 
FCDs� o  ������  0 thecurrenttask theCurrentTask� ��� m  �� ���  S t a r t   D a t e� ���� m  �� ���  ��  ��  �  f  ��� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l ������  � 6 0 Append the modification date to the task detail   � ��� `   A p p e n d   t h e   m o d i f i c a t i o n   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z @������� =  ��� o  ���� ,0 includetaskstartdate includeTaskStartDate� m  ��
�� boovtrue� r  !<��� n  !8��� I  "8������� $0 appendtaskdetail appendTaskDetail� ��� o  "%���� 0 thetaskdetail theTaskDetail� ��� n  %,��� 1  (,��
�� 
FCDm� o  %(����  0 thecurrenttask theCurrentTask� ��� m  ,/�� ��� " M o d i f i c a t i o n   D a t e� ���� m  /2�� ���  ��  ��  �  f  !"� o      ���� 0 thetaskdetail theTaskDetail��  ��  � ��� l AA������  � 4 . Append the completion date to the task detail   � ��� \   A p p e n d   t h e   c o m p l e t i o n   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z Aj������� =  AH��� o  AF���� ,0 includetaskstartdate includeTaskStartDate� m  FG��
�� boovtrue� r  Kf   n  Kb I  Lb������ $0 appendtaskdetail appendTaskDetail  o  LO���� 0 thetaskdetail theTaskDetail  n  OV	
	 1  RV��
�� 
FCdc
 o  OR����  0 thecurrenttask theCurrentTask  m  VY �  C o m p l e t i o n   D a t e �� m  Y\ �  ��  ��    f  KL o      ���� 0 thetaskdetail theTaskDetail��  ��  �  l kk����   1 + Append the task's notes to the task detail    � V   A p p e n d   t h e   t a s k ' s   n o t e s   t o   t h e   t a s k   d e t a i l  Z k����� =  kr o  kp�� $0 includetasknotes includeTaskNotes m  pq�~
�~ boovtrue r  u� n  u�  I  v��}!�|�} $0 appendtaskdetail appendTaskDetail! "#" o  vy�{�{ 0 thetaskdetail theTaskDetail# $%$ n  y�&'& 1  |��z
�z 
FCno' o  y|�y�y  0 thecurrenttask theCurrentTask% ()( m  ��** �++  N o t e) ,�x, m  ��-- �..  �x  �|     f  uv o      �w�w 0 thetaskdetail theTaskDetail��  ��   /0/ l ���v12�v  1 . ( Append the task detail to the task list   2 �33 P   A p p e n d   t h e   t a s k   d e t a i l   t o   t h e   t a s k   l i s t0 454 Z  ��67�u�t6 > ��898 o  ���s�s 0 thetaskdetail theTaskDetail9 m  ��:: �;;  7 r  ��<=< b  ��>?> b  ��@A@ b  ��BCB o  ���r�r &0 theprogressdetail theProgressDetailC m  ��DD �EE 6 < b r > < p   s t y l e = " c o l o r :   g r a y " >A o  ���q�q 0 thetaskdetail theTaskDetail? m  ��FF �GG  < / p >= o      �p�p &0 theprogressdetail theProgressDetail�u  �t  5 HIH l ���oJK�o  J 0 * Finish adding the task's HTML to the list   K �LL T   F i n i s h   a d d i n g   t h e   t a s k ' s   H T M L   t o   t h e   l i s tI M�nM r  ��NON b  ��PQP b  ��RSR o  ���m�m &0 theprogressdetail theProgressDetailS m  ��TT �UU 
 < / l i >Q o  ���l
�l 
ret O o      �k�k &0 theprogressdetail theProgressDetail�n  
�� 
OSbvO m  GH�j�j P n  HPVWV 1  KO�i
�i 
lengW o  HK�h�h &0 thecompletedtasks theCompletedTasks��  M X�gX r  ��YZY b  ��[\[ b  ��]^] o  ���f�f &0 theprogressdetail theProgressDetail^ m  ��__ �`` 
 < / u l >\ o  ���e
�e 
ret Z o      �d�d &0 theprogressdetail theProgressDetail�g  ��  ��  ��  
� 
OSav� m  wx�c�c � n  x�aba 1  {�b
�b 
lengb o  x{�a�a *0 themodifiedprojects theModifiedProjects�  �	  � 4 DJ�`c
�` 
docuc m  HI�_�_ � m  >Add�                                                                                  OFOC  alis    F  Mac HD                     ϙZ4H+     OOmniFocus.app                                                   1E�����        ����  	                Applications    ϙ�t      ���%       O  "Mac HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c   H D  Applications/OmniFocus.app  / ��  �  �  � efe l ��g�^�]g r  ��hih b  ��jkj o  ���\�\ &0 theprogressdetail theProgressDetailk m  ��ll �mm  < / b o d y > < / h t m l >i o      �[�[ &0 theprogressdetail theProgressDetail�^  �]  f non l     �Z�Y�X�Z  �Y  �X  o pqp l     �Wrs�W  r 9 3 Notify the user if no projects or tasks were found   s �tt f   N o t i f y   t h e   u s e r   i f   n o   p r o j e c t s   o r   t a s k s   w e r e   f o u n dq uvu l �w�V�Uw Z  �xy�T�Sx =  ��z{z o  ���R�R .0 modifiedtasksdetected modifiedTasksDetected{ m  ���Q
�Q boovfalsy k  �|| }~} I ��P�
�P .sysodisAaleR        TEXT m  ���� ��� > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t� �O��N
�O 
mesS� b  
��� b  ��� m  �� ��� B N o   m o d i f i e d   t a s k s   w e r e   f o u n d   f o r  � o  �M�M  0 thereportscope theReportScope� m  	�� ���  .�N  ~ ��L� L  �K�K  �L  �T  �S  �V  �U  v ��� l     �J�I�H�J  �I  �H  � ��� l     �G���G  � #  Create the note in Evernote.   � ��� :   C r e a t e   t h e   n o t e   i n   E v e r n o t e .� ��� l L��F�E� O  L��� k  K�� ��� I !�D�C�B
�D .miscactvnull��� ��� null�C  �B  � ��� r  "?��� I ";�A�@�
�A .EVRNcrntnull��� ��� null�@  � �?��
�? 
Ennb� m  &)�� ��� 
 I n b o x� �>��
�> 
Entt� o  ,1�=�= 0 thenotename theNoteName� �<��;
�< 
Enhl� o  47�:�: &0 theprogressdetail theProgressDetail�;  � o      �9�9 0 thenote theNote� ��8� I @K�7�6�
�7 .EVRNonwnnull��� ��� null�6  � �5��4
�5 
EV17� o  DG�3�3 0 thenote theNote�4  �8  � m  ���                                                                                  EVRN  alis    D  Mac HD                     ϙZ4H+     OEvernote.app                                                    S�WW�        ����  	                Applications    ϙ�t      �W�+       O  !Mac HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c   H D  Applications/Evernote.app   / ��  �F  �E  � ��� l     �2�1�0�2  �1  �0  � ��� l     �/���/  � 6 0 This handler gets the folder path for a project   � ��� `   T h i s   h a n d l e r   g e t s   t h e   f o l d e r   p a t h   f o r   a   p r o j e c t� ��� i    ��� I      �.��-�. ,0 getprojectfolderpath getProjectFolderPath� ��,� o      �+�+ 0 
theproject 
theProject�,  �-  � O     c��� k    b�� ��� r    ��� m    �� ���  � o      �*�* 0 thefolderpath theFolderPath� ��� Z    Q���)�(� I   �'��&
�' .coredoexnull���     ****� n    ��� m   	 �%
�% 
FCAr� o    	�$�$ 0 
theproject 
theProject�&  � k    M�� ��� r    ��� n    ��� m    �#
�# 
FCAr� o    �"�" 0 
theproject 
theProject� o      �!�! 0 	thefolder 	theFolder� �� � T    M�� k    H�� ��� Z   ,����� >    ��� o    �� 0 thefolderpath theFolderPath� m    �� ���  � r   # (��� b   # &��� m   # $�� ���    :  � o   $ %�� 0 thefolderpath theFolderPath� o      �� 0 thefolderpath theFolderPath�  �  � ��� r   - 4��� b   - 2��� n   - 0��� 1   . 0�
� 
pnam� o   - .�� 0 	thefolder 	theFolder� o   0 1�� 0 thefolderpath theFolderPath� o      �� 0 thefolderpath theFolderPath� ��� Z   5 H����� =   5 <��� n   5 :��� m   8 :�
� 
pcls� n   5 8��� 1   6 8�
� 
ctnr� o   5 6�� 0 	thefolder 	theFolder� m   : ;�
� 
FCAr� r   ? D��� n   ? B��� 1   @ B�
� 
ctnr� o   ? @�� 0 	thefolder 	theFolder� o      �� 0 	thefolder 	theFolder�  �  S   G H�  �   �)  �(  � ��� Z  R _����� =   R U��� o   R S�� 0 thefolderpath theFolderPath� m   S T�� ���  � r   X [� � m   X Y �    o      �
�
 0 thefolderpath theFolderPath�  �  � �	 L   ` b o   ` a�� 0 thefolderpath theFolderPath�	  � m     �                                                                                  OFOC  alis    F  Mac HD                     ϙZ4H+     OOmniFocus.app                                                   1E�����        ����  	                Applications    ϙ�t      ���%       O  "Mac HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c   H D  Applications/OmniFocus.app  / ��  �  l     ����  �  �   	 l     �
�  
 6 0 This handler appends a value to the task detail    � `   T h i s   h a n d l e r   a p p e n d s   a   v a l u e   t o   t h e   t a s k   d e t a i l	 � i     I      ��� $0 appendtaskdetail appendTaskDetail  o      � �  0 thetaskdetail theTaskDetail  o      ���� 0 thevalue theValue  o      ���� 0 	theprefix 	thePrefix �� o      ���� 0 	thesuffix 	theSuffix��  �   k     2  Z    ���� >     o     ���� 0 thetaskdetail theTaskDetail m     �     r    !"! b    	#$# o    ���� 0 thetaskdetail theTaskDetail$ m    %% �&&  < b r >" o      ���� 0 thetaskdetail theTaskDetail��  ��   '(' Z    ))*��+) G    ,-, =    ./. o    ���� 0 thevalue theValue/ m    ��
�� 
msng- =    010 o    ���� 0 thevalue theValue1 m    22 �33  * r    !454 m    66 �77  N / A5 o      ���� 0 thevalue theValue��  + r   $ )898 b   $ ':;: o   $ %���� 0 thevalue theValue; o   % &���� 0 	thesuffix 	theSuffix9 o      ���� 0 thevalue theValue( <��< L   * 2== b   * 1>?> b   * /@A@ b   * -BCB o   * +���� 0 thetaskdetail theTaskDetailC o   + ,���� 0 	theprefix 	thePrefixA m   - .DD �EE  :  ? o   / 0���� 0 thevalue theValue��  �       ��F�������������� 0GHI��  F ������������������������ 20 includefullprojectpaths includeFullProjectPaths�� (0 includetaskcontext includeTaskContext�� 40 includetaskestimatedtime includeTaskEstimatedTime�� ,0 includetaskstartdate includeTaskStartDate�� :0 includetaskmodificationdate includeTaskModificationDate�� 60 includetaskcompletiondate includeTaskCompletionDate�� $0 includetasknotes includeTaskNotes�� 0 thenotename theNoteName�� ,0 getprojectfolderpath getProjectFolderPath�� $0 appendtaskdetail appendTaskDetail
�� .aevtoappnull  �   � ****
�� boovtrue
�� boovtrue
�� boovtrue
�� boovtrue
�� boovtrue
�� boovtrue
�� boovfalsG �������JK���� ,0 getprojectfolderpath getProjectFolderPath�� ��L�� L  ���� 0 
theproject 
theProject��  J �������� 0 
theproject 
theProject�� 0 thefolderpath theFolderPath�� 0 	thefolder 	theFolderK ��������������
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
��,E�Y [OY��Y hO��  �E�Y hO�UH ������MN���� $0 appendtaskdetail appendTaskDetail�� ��O�� O  ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffix��  M ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffixN %��2��6D
�� 
msng
�� 
bool�� 3�� 
��%E�Y hO�� 
 �� �& �E�Y ��%E�O��%�%�%I ��P����QR��
�� .aevtoappnull  �   � ****P k    LSS  9TT  <UU  dVV  kWW  zXX  YY  �ZZ  �[[  �\\  �]] �^^ �__ �`` eaa ubb �����  ��  ��  Q ����
�� 
OSav
�� 
OSbvR q�� F J N R U���� [�� _�� b������������������������ ����� ��� ���������JS�����������d����c��������������������"(?��C��E��fs���������������������������*-:DFT_l��~���}��|��{�z�y�x�w�v
�� .miscactvnull��� ��� null�� 
�� 
inSL
�� 
prmp
�� 
appr�� 
�� .gtqpchltns    @   @ ns  ��  0 thereportscope theReportScope
�� 
cobj
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
dstr�� 0 thedaterange theDateRange
�� 
days
�� 
wkdy
�� 
sun 
�� 
sat �� 
�� 
day 
�� 
mnth�� &0 theprogressdetail theProgressDetail�� .0 modifiedtasksdetected modifiedTasksDetected
�� 
docu
�� 
FCfxc  
�� 
FCDm�� *0 themodifiedprojects theModifiedProjects
�� 
leng�� &0 thecurrentproject theCurrentProject
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
� 
FCno
�~ 
mesS
�} .sysodisAaleR        TEXT
�| 
Ennb
�{ 
Entt
�z 
Enhl
�y .EVRNcrntnull��� ��� null�x 0 thenote theNote
�w 
EV17
�v .EVRNonwnnull��� ��� null��M*j  O������v��kv����� E�O�f  hY hO�a k/E�O*j E` Oj_ a ,FOj_ a ,FOj_ a ,FO_ a _  a _  a E` O�a   _ a ,E` Y��a   ,_ k_  E` O_ k_  E` O_ a ,E` Yk�a   b !h_ a ,a   _ k_  E` [OY��O !h_ a ,a ! _ k_  E` [OY��O_ a ,a "%_ a ,%E` Y�a #  �_ a $_  E` O_ a $_  E` O !h_ a ,a   _ k_  E` [OY��O !h_ a ,a ! _ k_  E` [OY��O_ a ,a %%_ a ,%E` Y {�a &  r h_ a ',k _ k_  E` [OY��O %h_ a (,_ a (,_ k_  E` [OY��O_ k_  E` O_ a ,a )%_ a ,%E` Y hOa *_ %a +%E` ,OfE` -Oa .�*a /k/�*a 0-a 1[[a 2,\Z_ :\[a 2,\Z_ <A1E` 3Ook_ 3a 4,Ekh  _ 3a �E/E` 5O_ 5a 6-a 1[[[[a 7,\Ze8\[a 2,\Z_ :A\[a 2,\Z_ <A\[a 8,\Zj8A1E` 9O_ 9jveE` -Oa :E` ;Ob   e  +)_ 5k+ <E` ;O_ ;a = _ ;a >%E` ;Y hY hO_ ,a ?%_ ;%_ 5a @,%a A%_ B%a C%E` ,O�k_ 9a 4,Ekh _ 9a �E/E` DO_ ,a E%_ Da @,%E` ,Oa FE` GOb  e  :_ Da H,E` IO_ Ia J  )_ G_ Ia @,a Ka La M+ NE` GY hY hOb  e   )_ G_ Da O,a Pa Qa M+ NE` GY hOb  e   )_ G_ Da R,a Sa Ta M+ NE` GY hOb  e   )_ G_ Da 2,a Ua Va M+ NE` GY hOb  e   )_ G_ Da W,a Xa Ya M+ NE` GY hOb  e   )_ G_ Da Z,a [a \a M+ NE` GY hO_ Ga ] _ ,a ^%_ G%a _%E` ,Y hO_ ,a `%_ B%E` ,[OY��O_ ,a a%_ B%E` ,Y h[OY��UUO_ ,a b%E` ,O_ -f  a ca da e�%a f%l gOhY hOa h 1*j  O*a ia ja kb  a l_ ,� mE` nO*a o_ nl pUascr  ��ޭ