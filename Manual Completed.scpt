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
docuc m  HI�_�_ � m  >Add�                                                                                  OFOC  alis    F  Mac HD                     ϙZ4H+     OOmniFocus.app                                                   Ha����        ����  	                Applications    ϙ�t      ��O�       O  "Mac HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c   H D  Applications/OmniFocus.app  / ��  �  �  � efe l ��g�^�]g r  ��hih b  ��jkj o  ���\�\ &0 theprogressdetail theProgressDetailk m  ��ll �mm  < / b o d y > < / h t m l >i o      �[�[ &0 theprogressdetail theProgressDetail�^  �]  f non l     �Z�Y�X�Z  �Y  �X  o pqp l     �Wrs�W  r 9 3 Notify the user if no projects or tasks were found   s �tt f   N o t i f y   t h e   u s e r   i f   n o   p r o j e c t s   o r   t a s k s   w e r e   f o u n dq uvu l �w�V�Uw Z  �xy�T�Sx =  ��z{z o  ���R�R .0 modifiedtasksdetected modifiedTasksDetected{ m  ���Q
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
 0 thefolderpath theFolderPath�  �  � �	 L   ` b o   ` a�� 0 thefolderpath theFolderPath�	  � m     �                                                                                  OFOC  alis    F  Mac HD                     ϙZ4H+     OOmniFocus.app                                                   Ha����        ����  	                Applications    ϙ�t      ��O�       O  "Mac HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c   H D  Applications/OmniFocus.app  / ��  �  l     ����  �  �   	 l     �
�  
 6 0 This handler appends a value to the task detail    � `   T h i s   h a n d l e r   a p p e n d s   a   v a l u e   t o   t h e   t a s k   d e t a i l	 � i     I      ��� $0 appendtaskdetail appendTaskDetail  o      � �  0 thetaskdetail theTaskDetail  o      ���� 0 thevalue theValue  o      ���� 0 	theprefix 	thePrefix �� o      ���� 0 	thesuffix 	theSuffix��  �   k     2  Z    ���� >     o     ���� 0 thetaskdetail theTaskDetail m     �     r    !"! b    	#$# o    ���� 0 thetaskdetail theTaskDetail$ m    %% �&&  < b r >" o      ���� 0 thetaskdetail theTaskDetail��  ��   '(' Z    ))*��+) G    ,-, =    ./. o    ���� 0 thevalue theValue/ m    ��
�� 
msng- =    010 o    ���� 0 thevalue theValue1 m    22 �33  * r    !454 m    66 �77  N / A5 o      ���� 0 thevalue theValue��  + r   $ )898 b   $ ':;: o   $ %���� 0 thevalue theValue; o   % &���� 0 	thesuffix 	theSuffix9 o      ���� 0 thevalue theValue( <��< L   * 2== b   * 1>?> b   * /@A@ b   * -BCB o   * +���� 0 thetaskdetail theTaskDetailC o   + ,���� 0 	theprefix 	thePrefixA m   - .DD �EE  :  ? o   / 0���� 0 thevalue theValue��  �       .��F�������������� 0GHI��JKLM��NOPQRST������������������������������������������  F ,������������������������������������������������������������������������������������������ 20 includefullprojectpaths includeFullProjectPaths�� (0 includetaskcontext includeTaskContext�� 40 includetaskestimatedtime includeTaskEstimatedTime�� ,0 includetaskstartdate includeTaskStartDate�� :0 includetaskmodificationdate includeTaskModificationDate�� 60 includetaskcompletiondate includeTaskCompletionDate�� $0 includetasknotes includeTaskNotes�� 0 thenotename theNoteName�� ,0 getprojectfolderpath getProjectFolderPath�� $0 appendtaskdetail appendTaskDetail
�� .aevtoappnull  �   � ****��  0 thereportscope theReportScope�� 0 thestartdate theStartDate�� 0 
theenddate 
theEndDate�� 0 thedaterange theDateRange�� &0 theprogressdetail theProgressDetail�� .0 modifiedtasksdetected modifiedTasksDetected�� *0 themodifiedprojects theModifiedProjects�� &0 thecurrentproject theCurrentProject�� &0 thecompletedtasks theCompletedTasks�� ,0 theprojectfolderpath theProjectFolderPath��  0 thecurrenttask theCurrentTask�� 0 thetaskdetail theTaskDetail�� 0 thenote theNote��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue
�� boovfals
�� boovtrue
�� boovfalsG �������UV���� ,0 getprojectfolderpath getProjectFolderPath�� ��W�� W  ���� 0 
theproject 
theProject��  U �������� 0 
theproject 
theProject�� 0 thefolderpath theFolderPath�� 0 	thefolder 	theFolderV ��������������
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
��,E�Y [OY��Y hO��  �E�Y hO�UH ������XY���� $0 appendtaskdetail appendTaskDetail�� ��Z�� Z  ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffix��  X ���������� 0 thetaskdetail theTaskDetail�� 0 thevalue theValue�� 0 	theprefix 	thePrefix�� 0 	thesuffix 	theSuffixY %��2��6D
�� 
msng
�� 
bool�� 3�� 
��%E�Y hO�� 
 �� �& �E�Y ��%E�O��%�%�%I ��[����\]��
�� .aevtoappnull  �   � ****[ k    L^^  9__  <``  daa  kbb  zcc  dd  �ee  �ff  �gg  �hh �ii �jj �kk ell umm ���  ��  ��  \ �~�}
�~ 
OSav
�} 
OSbv] q�| F J N R U�{�z [�y _�x b�w�v�u�t�s�r�q�p�o�n�m�l ��k�j ��i ��h�g�f�eJS�d�c����b�ad�`�_n�^�]�\�[�Z�Y�X�W�V�U"(?�TC�SE�Rfs�Q�P�O�N���M�L�K���J�����I�H*-:DFT_l��G���F��E��D�C�B�A�@�?
�| .miscactvnull��� ��� null�{ 
�z 
inSL
�y 
prmp
�x 
appr�w 
�v .gtqpchltns    @   @ ns  �u  0 thereportscope theReportScope
�t 
cobj
�s .misccurdldt    ��� null�r 0 thestartdate theStartDate
�q 
hour
�p 
min 
�o 
scnd�n �m ;�l 0 
theenddate 
theEndDate
�k 
dstr�j 0 thedaterange theDateRange
�i 
days
�h 
wkdy
�g 
sun 
�f 
sat �e 
�d 
day 
�c 
mnth�b &0 theprogressdetail theProgressDetail�a .0 modifiedtasksdetected modifiedTasksDetected
�` 
docu
�_ 
FCfxn  
�^ 
FCDm�] *0 themodifiedprojects theModifiedProjects
�\ 
leng�[ &0 thecurrentproject theCurrentProject
�Z 
FCft
�Y 
FCcd
�X 
FC#t�W &0 thecompletedtasks theCompletedTasks�V ,0 theprojectfolderpath theProjectFolderPath�U ,0 getprojectfolderpath getProjectFolderPath
�T 
pnam
�S 
ret �R  0 thecurrenttask theCurrentTask�Q 0 thetaskdetail theTaskDetail
�P 
FCct�O 0 
thecontext 
theContext
�N 
msng�M �L $0 appendtaskdetail appendTaskDetail
�K 
FCEM
�J 
FCDs
�I 
FCdc
�H 
FCno
�G 
mesS
�F .sysodisAaleR        TEXT
�E 
Ennb
�D 
Entt
�C 
Enhl
�B .EVRNcrntnull��� ��� null�A 0 thenote theNote
�@ 
EV17
�? .EVRNonwnnull��� ��� null��M*j  O������v��kv����� E�O�f  hY hO�a k/E�O*j E` Oj_ a ,FOj_ a ,FOj_ a ,FO_ a _  a _  a E` O�a   _ a ,E` Y��a   ,_ k_  E` O_ k_  E` O_ a ,E` Yk�a   b !h_ a ,a   _ k_  E` [OY��O !h_ a ,a ! _ k_  E` [OY��O_ a ,a "%_ a ,%E` Y�a #  �_ a $_  E` O_ a $_  E` O !h_ a ,a   _ k_  E` [OY��O !h_ a ,a ! _ k_  E` [OY��O_ a ,a %%_ a ,%E` Y {�a &  r h_ a ',k _ k_  E` [OY��O %h_ a (,_ a (,_ k_  E` [OY��O_ k_  E` O_ a ,a )%_ a ,%E` Y hOa *_ %a +%E` ,OfE` -Oa .�*a /k/�*a 0-a 1[[a 2,\Z_ :\[a 2,\Z_ <A1E` 3Ook_ 3a 4,Ekh  _ 3a �E/E` 5O_ 5a 6-a 1[[[[a 7,\Ze8\[a 2,\Z_ :A\[a 2,\Z_ <A\[a 8,\Zj8A1E` 9O_ 9jveE` -Oa :E` ;Ob   e  +)_ 5k+ <E` ;O_ ;a = _ ;a >%E` ;Y hY hO_ ,a ?%_ ;%_ 5a @,%a A%_ B%a C%E` ,O�k_ 9a 4,Ekh _ 9a �E/E` DO_ ,a E%_ Da @,%E` ,Oa FE` GOb  e  :_ Da H,E` IO_ Ia J  )_ G_ Ia @,a Ka La M+ NE` GY hY hOb  e   )_ G_ Da O,a Pa Qa M+ NE` GY hOb  e   )_ G_ Da R,a Sa Ta M+ NE` GY hOb  e   )_ G_ Da 2,a Ua Va M+ NE` GY hOb  e   )_ G_ Da W,a Xa Ya M+ NE` GY hOb  e   )_ G_ Da Z,a [a \a M+ NE` GY hO_ Ga ] _ ,a ^%_ G%a _%E` ,Y hO_ ,a `%_ B%E` ,[OY��O_ ,a a%_ B%E` ,Y h[OY��UUO_ ,a b%E` ,O_ -f  a ca da e�%a f%l gOhY hOa h 1*j  O*a ia ja kb  a l_ ,� mE` nO*a o_ nl pU
�� boovfalsJ ldt     � � K ldt     �)gL �oo l F r i d a y ,   A u g u s t   1 ,   2 0 1 4   t h r o u g h   S u n d a y ,   A u g u s t   3 1 ,   2 0 1 4M �pp;� < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < b r > < b > F r i d a y ,   A u g u s t   1 ,   2 0 1 4   t h r o u g h   S u n d a y ,   A u g u s t   3 1 ,   2 0 1 4 < / b > < b r > < h r > < b r > < h 2 > M i s c e l l a n e o u s < / h 2 >  < b r > < u l > < l i > 4 1 0 . 9 3 3 . 4 1 4 1   h h c s t r e e m 0 1 < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   2 : 5 1 : 1 1   P M < b r > C o m p l e t i o n   D a t e :   T u e s d a y ,   J u l y   1 ,   2 0 1 4   a t   9 : 4 5 : 4 6   A M < / p > < / l i >  < l i > P T T   F O R   W I N D O W S   7 :   P T T   f o r   W i n d o w s   7   a n d   8   ( s k y p e ,   m s n . . . ) < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 4 0 : 0 3   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 7 : 2 1   A M < / p > < / l i >  < l i > D i s a b l e   R o u n d   R o b i n   f r o m   4 : 1 5 p m   t o   6 : 1 5 p m < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 0 1 : 2 9   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 0 0 : 1 6   A M < / p > < / l i >  < l i > s e n d   K e n   m s g   a b o u t   e a s   s t o r a g e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 0 1 : 2 9   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 0 1 : 2 5   A M < / p > < / l i >  < l i > M e d S t a r   R i s k   a s s e s s m e n t < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 0 8 : 1 6   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 0 7 : 4 6   A M < / p > < / l i >  < l i > C a l l   H O A   t o   g e t   a l l   c l e a r   f r o m   l o n g   a g o < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 0 8 : 1 6   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 0 2 : 1 2   A M < / p > < / l i >  < l i > G e t   J a r e d   t h e   p r o c e d u r e   f o r   s e t t i n g   u p   P a s s t h r o u g h < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   2 : 5 0 : 5 6   P M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   2 : 2 0 : 2 3   P M < / p > < / l i >  < / u l >  < h 2 > P e r s o n a l   :   H o u s e   >   M o v e   H o u s e s < / h 2 >  < b r > < u l > < l i > w w w . c o n d o c e r t s . c o m   t o   g e t   h o m e   o w n e r   r e s a l e   p a c k a g e   ( a l l   t h e   d o c u m e n t s ) < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 1 8   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 1 8   A M < / p > < / l i >  < l i > S e a l   d e c k   f u r n i t u r e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 2 0   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 2 0   A M < / p > < / l i >  < l i > A s k   D a w n   f o r   h o m e   i n s p e c t o r   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < / p > < / l i >  < l i > i n t e r v i e w   h o m e   i n s p e c t o r   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < / p > < / l i >  < l i > a s k   h o m e   i n s p e c t o r   f o r   r e f e r e n c e s   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < / p > < / l i >  < l i > c a l l   h o m e   i n s p e c t o r   r e f e r e n c e s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < / p > < / l i >  < l i > c h o o s e   h o m e   i n s p e c t o r < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 3 0   A M < / p > < / l i >  < l i > R e s e r v e   a   p o d < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 4 3   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 4 3   A M < / p > < / l i >  < l i > b u t   p l u m b e r ' s   p u t t y   < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 4 4   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 4 4   A M < / p > < / l i >  < l i > g e t   H O A   s a l e   p a c k a g e   f r o m   c m c - m a n a g e m e n t . c o m   ( 8 0 0 . 2 6 2 . 3 0 9 0 ? ) < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 4 8   A M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 1 : 2 2 : 4 8   A M < / p > < / l i >  < l i > c a l l   4 1 0 . 2 2 2 . 1 1 4 4   p r o p   t a x < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 3 3 : 0 5   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 3 2 : 5 8   A M < / p > < / l i >  < / u l >  < h 2 > P e r s o n a l   :   T e c h   >   T T R S S   S S L < / h 2 >  < b r > < u l > < l i > C o n s i d e r   b u y i n g   a   m a c d o r k . c o m   s s l   c e r t   t o   p r o t e c t   a l l   t t r s s   s i t e s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 : 1 1 : 2 8   P M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 : 1 1 : 2 8   P M < / p > < / l i >  < l i > w o r k   o u t   s e l f   s i g n e d   c e r t   f o r   t t r s s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 : 1 1 : 2 7   P M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 : 1 1 : 2 7   P M < / p > < / l i >  < l i > C o n f i g u r e   a l l   a p p s   t o   u s e   s s l < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 : 1 1 : 2 7   P M < b r > C o m p l e t i o n   D a t e :   W e d n e s d a y ,   A u g u s t   6 ,   2 0 1 4   a t   1 : 1 1 : 2 7   P M < / p > < / l i >  < / u l >  < h 2 > P r o   :   M S H   >   W e e k l y   M S H   M e e t i n g < / h 2 >  < b r > < u l > < l i > T S M   a l e r t s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   W e d n e s d a y ,   J u l y   2 ,   2 0 1 4   a t   8 : 0 0 : 0 0   A M < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 0 : 1 3 : 0 6   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 0 : 1 3 : 0 6   A M < / p > < / l i >  < l i > T a l k   w i t h   J o a n n e   t o   g e t   h e r   i n t o   J u m p   S e r v e r   a n d   d i s c u s s   w h a t   w e   n e e d   t o   d o   t o   g e t   i n t o   o n - c a l l   r o t a t i o n   a n d   o f f   o f   m e d s t a r < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 0 : 1 0 : 2 3   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 0 : 1 0 : 2 3   A M < / p > < / l i >  < l i > C h a n g e   D o m i n o   p w   f o r   J o a n n e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 0 : 1 0 : 2 6   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 0 : 1 0 : 2 6   A M < / p > < / l i >  < / u l >  < h 2 > P r o   :   M S H   :   M g m n t   >   M a n a g e r < / h 2 >  < b r > < u l > < l i > S e n d   n o t i c e   t o   g u h i t e l 0 2 . m e d s t a r . n e t   a n d   n d p . m e d s t a r . n e t   a b o u t   c e r t   e x p i r y < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 2 3 : 0 2   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 2 3 : 0 2   A M < / p > < / l i >  < l i > F i n d   o u t   w h a t   p o r t s   a r e   r e q u i r e d   f o r   P i s t o l S t a r   t o   w o r k   t h r o u g h   t h e   N e t s c a l e r < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 2 6 : 4 5   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 2 6 : 4 5   A M < / p > < / l i >  < l i > G e t   o u t l o o k   2 0 1 1   w o r k i n g ? < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 0 : 2 0   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 0 : 2 0   A M < / p > < / l i >  < l i > a s k   a b o u t   t a w a n d a ' s   d o m a i n   r e l a y i n g < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 0 : 2 3   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 0 : 2 3   A M < / p > < / l i >  < l i > C r e a t e   C R   ( ? )   f o r   S Q L   N I C   c h a n g e ? < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 0 : 3 6   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 0 : 3 6   A M < / p > < / l i >  < l i > R e n e w   c e r t s   a n d   s e n d   l i n k s   t o   Y v o n n e < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 0 : 5 2   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 0 : 5 2   A M < / p > < / l i >  < l i > p r o v i d e   c h r i s   s m t p   s i z i n g   s p e c s < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 0 : 5 9 : 0 3   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 0 : 5 9 : 0 1   A M < / p > < / l i >  < / u l >  < h 2 > P r o   :   M S H   :   E x c h a n g e   >   R e a d   P u b l i c   F o l d e r   p r o p o s a l < / h 2 >  < b r > < u l > < l i > R e a d   h t t p : / / i n s i d e . o m n i f o c u s . c o m / < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 3 : 5 1   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   4 ,   2 0 1 4   a t   1 0 : 3 3 : 5 1   A M < / p > < / l i >  < / u l >  < h 2 > P r o   :   M S H   >   S M T P   R e l a y < / h 2 >  < b r > < u l > < l i > A s k   C h r i s   h o w   t h e   S M T P   r e l a y   p r o j e c t   i s   g o i n g < b r > < p   s t y l e = " c o l o r :   g r a y " > S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 0 2 : 0 6   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 0 1 : 5 6   A M < / p > < / l i >  < / u l >  < / b o d y > < / h t m l >
�� boovtrueN �>q�> q  rstuvwxyz{|}~�Or �� ��=��<� d�;��:
�; 
docu� ���  p N O j k i E F O a I
�: kfrmID  
�= 
FCpr� ���  n 5 b 4 s H A S J j v
�< kfrmID  s �� ��9��8� d�7��6
�7 
docu� ���  p N O j k i E F O a I
�6 kfrmID  
�9 
FCpr� ���  c T 4 B I H P i j p s
�8 kfrmID  t �� ��5��4� d�3��2
�3 
docu� ���  p N O j k i E F O a I
�2 kfrmID  
�5 
FCpr� ���  g V I 0 B w 6 Z C G Q
�4 kfrmID  u �� ��1��0� d�/��.
�/ 
docu� ���  p N O j k i E F O a I
�. kfrmID  
�1 
FCpr� ���  h E c 4 0 6 c X f 3 L
�0 kfrmID  v �� ��-��,� d�+��*
�+ 
docu� ���  p N O j k i E F O a I
�* kfrmID  
�- 
FCpr� ���  k l g R B 7 A X k l 4
�, kfrmID  w �� ��)��(� d�'��&
�' 
docu� ���  p N O j k i E F O a I
�& kfrmID  
�) 
FCpr� ���  o U b 3 J K L 1 x N R
�( kfrmID  x �� ��%��$� d�#��"
�# 
docu� ���  p N O j k i E F O a I
�" kfrmID  
�% 
FCpr� ���  o 1 i D T t Y 1 c N C
�$ kfrmID  y �� ��!�� � d���
� 
docu� ���  p N O j k i E F O a I
� kfrmID  
�! 
FCpr� ���  n n 1 V x F B m V _ R
�  kfrmID  z �� ����� d���
� 
docu� ���  p N O j k i E F O a I
� kfrmID  
� 
FCpr� ���  q i Y E c 1 T v f Q O
� kfrmID  { �� ����� d���
� 
docu� ���  p N O j k i E F O a I
� kfrmID  
� 
FCpr� ���  b D h T - 2 8 0 r L Z
� kfrmID  | �� ����� d���
� 
docu� ���  p N O j k i E F O a I
� kfrmID  
� 
FCpr� ���  e g s W t o _ j E 1 Q
� kfrmID  } �� ����� d���
� 
docu� ���  p N O j k i E F O a I
� kfrmID  
� 
FCpr� ���  k T N 0 6 m z s c - 6
� kfrmID  ~ �� ����� d���

� 
docu� ���  p N O j k i E F O a I
�
 kfrmID  
� 
FCpr� ���  n l A E - P c O C Z 0
� kfrmID   �� ��	��� d���
� 
docu� ���  p N O j k i E F O a I
� kfrmID  
�	 
FCpr� ���  f 4 2 i J l 3 n 3 2 Q
� kfrmID  � �� ����� d���
� 
docu� ���  p N O j k i E F O a I
� kfrmID  
� 
FCpr� ���  k Z A 0 u l r a b 9 m
� kfrmID  O �� ���� � d�����
�� 
docu� ���  p N O j k i E F O a I
�� kfrmID  
� 
FCpr� ���  k U V F n D c 7 4 8 h
�  kfrmID  P �����  �   Q ���  P r o   :   M S H   >  R �� ������� d�����
�� 
docu� ���  p N O j k i E F O a I
�� kfrmID  
�� 
FCac� ���  o v I Z O T I p a w a
�� kfrmID  S ��� S t a r t   D a t e :   N / A < b r > M o d i f i c a t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 0 2 : 0 6   A M < b r > C o m p l e t i o n   D a t e :   M o n d a y ,   A u g u s t   1 1 ,   2 0 1 4   a t   1 1 : 0 1 : 5 6   A MT �� ������� ����
�� 
EVnb� ��� 
 I n b o x
�� 
EVnn� ��� z x - c o r e d a t a : / / 3 8 F C 6 8 7 C - D C A B - 4 0 B A - A 0 4 9 - F 5 5 4 7 C 9 7 E F 1 2 / E N N o t e / p 1 8 5
�� kfrmID  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ