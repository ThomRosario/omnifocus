FasdUAS 1.101.10   ��   ��    k             l      ��  ��    \ V
	LATER.SCPT
	By Chris Sauve of [pxldot](http://pxldot.com).
	See README for details.
     � 	 	 � 
 	 L A T E R . S C P T 
 	 B y   C h r i s   S a u v e   o f   [ p x l d o t ] ( h t t p : / / p x l d o t . c o m ) . 
 	 S e e   R E A D M E   f o r   d e t a i l s . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l          j     �� �� 00 usesflagsforscheduling usesFlagsForScheduling  m     ��
�� boovtrue  B < true or false, true flags any tasks that the script runs on     �   x   t r u e   o r   f a l s e ,   t r u e   f l a g s   a n y   t a s k s   t h a t   t h e   s c r i p t   r u n s   o n      l          j    �� �� *0 methodforscheduling methodForScheduling  m       �   
 S t a r t  #  Options are "Start" or "Due"     �   :   O p t i o n s   a r e   " S t a r t "   o r   " D u e "      l        ! "   j    �� #�� &0 usegrowlforalerts useGrowlForAlerts # m    ��
�� boovtrue !   true or false    " � $ $    t r u e   o r   f a l s e   % & % l      ' ( ) ' j   	 �� *�� ,0 promptforuseroptions promptForUserOptions * m   	 
��
�� boovtrue ( "  will change after first run    ) � + + 8   w i l l   c h a n g e   a f t e r   f i r s t   r u n &  , - , j    �� .�� *0 timesusedsinceerror timesUsedSinceError . m    ����   -  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 D > Get the selection FIRST and then exit if nothing is selected.    4 � 5 5 |   G e t   t h e   s e l e c t i o n   F I R S T   a n d   t h e n   e x i t   i f   n o t h i n g   i s   s e l e c t e d . 2  6 7 6 l    E 8���� 8 O     E 9 : 9 O    D ; < ; k    C = =  > ? > r    . @ A @ n    , B C B 1   * ,��
�� 
valL C l   * D���� D 6  * E F E 2   ��
�� 
OTst F F    ) G H G l    I���� I >    J K J n     L M L 1    ��
�� 
pcls M n    N O N 1    ��
�� 
valL O  g     K m    ��
�� 
cobj��  ��   H l   ( P���� P >   ( Q R Q n     $ S T S 1   " $��
�� 
pcls T n    " U V U 1     "��
�� 
valL V  g       R m   % '��
�� 
FCAr��  ��  ��  ��   A o      ���� 0 tasksselected tasksSelected ?  W�� W Z   / C X Y���� X =  / 4 Z [ Z n   / 2 \ ] \ 1   0 2��
�� 
leng ] o   / 0���� 0 tasksselected tasksSelected [ m   2 3����   Y k   7 ? ^ ^  _ ` _ I  7 <�� a��
�� .sysodisAaleR        TEXT a m   7 8 b b � c c L Y o u   d i d n ' t   s e l e c t   a n y   O m n i F o c u s   t a s k s .��   `  d�� d L   = ?����  ��  ��  ��  ��   < n     e f e 1    ��
�� 
FCcn f n     g h g 4   �� i
�� 
FCdw i m   	 
����  h 4   �� j
�� 
docu j m    ����  : m      k k�                                                                                  OFOC  alis    b  rosartl1-ml2-hd            �9��H+     OmniFocus.app                                                   i��у�        ����  	                Applications    �9�      у�X         +rosartl1-ml2-hd:Applications: OmniFocus.app     O m n i F o c u s . a p p     r o s a r t l 1 - m l 2 - h d  Applications/OmniFocus.app  / ��  ��  ��   7  l m l l     ��������  ��  ��   m  n o n l  F � p���� p Z   F � q r���� q o   F K���� ,0 promptforuseroptions promptForUserOptions r k   N � s s  t u t I  N h�� v w
�� .sysodlogaskr        TEXT v l 	 N O x���� x m   N O y y � z z � W o u l d   y o u   l i k e   t o   a u t o m a t i c a l l y   f l a g   t h e   t a s k s   o n   w h i c h   y o u   r u n   t h i s   s c r i p t ?��  ��   w �� { |
�� 
btns { J   P X } }  ~  ~ m   P S � � � � �  N o ,   D o n ' t   F l a g   ��� � m   S V � � � � �  Y e s ,   U s e   F l a g s��   | �� � �
�� 
dflt � m   [ \����  � �� ���
�� 
givu � m   _ b���� <��   u  � � � r   i t � � � n   i p � � � 1   l p��
�� 
bhit � 1   i l��
�� 
rslt � o      ���� "0 decisiononflags decisionOnFlags �  � � � Z  u � � ����� � =  u | � � � o   u x���� "0 decisiononflags decisionOnFlags � m   x { � � � � �  N o ,   D o n ' t   F l a g � r    � � � � m    ���
�� boovfals � o      ���� .0 usesflagsforsceduling usesFlagsForSceduling��  ��   �  � � � l  � ���������  ��  ��   �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � p W o u l d   y o u   l i k e   t o   u s e   D u e   o r   S t a r t   d a t e s   f o r   s c h e d u l i n g ? � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  D u e �  ��� � m   � � � � � � � 
 S t a r t��   � �� ���
�� 
dflt � m   � ����� ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
bhit � 1   � ���
�� 
rslt � o      ���� *0 methodforscheduling methodForScheduling �  ��� � r   � � � � � m   � ���
�� boovfals � o      ���� ,0 promptforuseroptions promptForUserOptions��  ��  ��  ��  ��   o  � � � l     ��������  ��  ��   �  � � � l  � ����� � Q   � � � � � k   � � � �  � � � r   � � � � � m   � � � � � � � T T o   w h e n   w o u l d   y o u   l i k e   t o   d e f e r   t h i s   t a s k ? � o      ���� 0 inputdialog inputDialog �  � � � Z  � � � ����� � =   � � � � � o   � ����� *0 timesusedsinceerror timesUsedSinceError � m   � �����   � r   � � � � � l  � � ����� � b   � � � � � o   � ����� 0 inputdialog inputDialog � m   � � � � � � �"   N o t e :   y o u   c a n   u s e   r e l a t i v e   d a y s   ( i . e . ,   " 1 w   4 d   2 p m " ) ,   a b s o l u t e   d a t e s   ( i . e . ,   " J a n   1 9   1 4 : 0 0 " )   o r   w e e k d a y s   ( i . e . ,   " S a t   5 p m " ) ,   j u s t     a s   i n   O m n i F o c u s .��  ��   � o      ���� 0 inputdialog inputDialog��  ��   �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � l 	 � � ����� � o   � ����� 0 inputdialog inputDialog��  ��   � �� ���
�� 
dtxt � m   � � � � � � �  1 d   1 2 a m��   �  ��� � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � 1   � ���
�� 
rslt � o      ���� 0 timedeferred timeDeferred��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 	errortext 	errorText � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � Z    � ����� � =   � � � o   ���� 0 errornumber errorNumber � m  ������ � L  
����  ��  ��  ��  ��   �  � � � l     ��~�}�  �~  �}   �  � � � l     �| � ��|   � u o Escape to manually choose start and due dates, regardless of the default (start with the input with that word)    � � � � �   E s c a p e   t o   m a n u a l l y   c h o o s e   s t a r t   a n d   d u e   d a t e s ,   r e g a r d l e s s   o f   t h e   d e f a u l t   ( s t a r t   w i t h   t h e   i n p u t   w i t h   t h a t   w o r d ) �  � � � l  ��{�z � r   � � � l  ��y�x � C   � � � o  �w�w 0 timedeferred timeDeferred � m   � � � � � 
 s t a r t�y  �x   � o      �v�v 0 escapetostart escapeToStart�{  �z   �  � � � l & ��u�t � r  & � � � l " ��s�r � C  " � � � o  �q�q 0 timedeferred timeDeferred � m  ! � � � � �  d u e�s  �r   � o      �p�p 0 escapetodue escapeToDue�u  �t   �  �  � l '@�o�n r  '@ F  '< l '.�m�l E  '. o  '*�k�k 0 timedeferred timeDeferred m  *-		 �

 
 s t a r t�m  �l   l 18�j�i E  18 o  14�h�h 0 timedeferred timeDeferred m  47 �  d u e�j  �i   o      �g�g 0 escapetoboth escapeToBoth�o  �n     l AF�f�e r  AF m  AB�d
�d boovtrue o      �c�c 0 
startfirst 
startFirst�f  �e    l     �b�a�`�b  �a  �`    l GO�_�^ Z  GO�] o  GJ�\�\ 0 escapetoboth escapeToBoth k  M1  r  Mx !  A  Mt"#" l M`$�[�Z$ I M`�Y�X%
�Y .sysooffslong    ��� null�X  % �W&'
�W 
psof& m  QT(( �)) 
 s t a r t' �V*�U
�V 
psin* o  WZ�T�T 0 timedeferred timeDeferred�U  �[  �Z  # l `s+�S�R+ I `s�Q�P,
�Q .sysooffslong    ��� null�P  , �O-.
�O 
psof- m  dg// �00  d u e. �N1�M
�N 
psin1 o  jm�L�L 0 timedeferred timeDeferred�M  �S  �R  ! o      �K�K 0 
startfirst 
startFirst 232 r  y�454 J  y�66 787 m  y|99 �::  s t a r t  8 ;<; m  |== �>> 
 s t a r t< ?@? m  �AA �BB  d u e  @ C�JC m  ��DD �EE  d u e�J  5 n     FGF 1  ���I
�I 
txdlG  f  ��3 HIH r  ��JKJ n  ��LML 2  ���H
�H 
citmM o  ���G�G 0 timedeferred timeDeferredK o      �F�F 0 adjustedinput adjustedInputI NON r  ��PQP J  ���E�E  Q o      �D�D 0 
fixedinput 
fixedInputO RSR Y  ��T�CUV�BT Z  ��WX�A�@W H  ��YY l ��Z�?�>Z G  ��[\[ l ��]�=�<] = ��^_^ n  ��`a` 4  ���;b
�; 
cobjb o  ���:�: 0 i  a o  ���9�9 0 adjustedinput adjustedInput_ m  ��cc �dd  �=  �<  \ l ��e�8�7e E ��fgf m  ��hh �ii                                  g n  ��jkj 4  ���6l
�6 
cobjl o  ���5�5 0 i  k o  ���4�4 0 adjustedinput adjustedInput�8  �7  �?  �>  X r  ��mnm n  ��opo 4  ���3q
�3 
cobjq o  ���2�2 0 i  p o  ���1�1 0 adjustedinput adjustedInputn l     r�0�/r n      sts  ;  ��t o  ���.�. 0 
fixedinput 
fixedInput�0  �/  �A  �@  �C 0 i  U m  ���-�- V l ��u�,�+u n  ��vwv 1  ���*
�* 
lengw o  ���)�) 0 adjustedinput adjustedInput�,  �+  �B  S xyx Z ��z{�(�'z > ��|}| n  ��~~ 1  ���&
�& 
leng o  ���%�% 0 
fixedinput 
fixedInput} m  ���$�$ { L  ���#�#  �(  �'  y ��� r  ���� I  ��"��!�" 0 getdate getDate� �� � n  ����� 4  ����
� 
cobj� m  ���� � o  ���� 0 
fixedinput 
fixedInput�   �!  � o      �� 0 desireddate1 desiredDate1� ��� r  ��� I  ���� 0 getdate getDate� ��� n  ��� 4  ��
� 
cobj� m  �� � o  �� 0 
fixedinput 
fixedInput�  �  � o      �� 0 desireddate2 desiredDate2� ��� Z 1����� G  (��� l ���� = ��� o  �� 0 desireddate2 desiredDate2� m  �����  �  � l $���� = $��� o  "�� 0 desireddate1 desiredDate1� m  "#�
�
���  �  � L  +-�	�	  �  �  �  �]   k  4O�� ��� r  4@��� I  4<���� 0 getdate getDate� ��� o  58�� 0 timedeferred timeDeferred�  �  � o      �� 0 desireddate1 desiredDate1� ��� Z AO����� = AF��� o  AD� �  0 desireddate1 desiredDate1� m  DE������� L  IK����  �  �  �  �_  �^   ��� l     ��������  ��  ��  � ��� l     ������  � H B Do the actual work of setting the date and the flag, if necessary   � ��� �   D o   t h e   a c t u a l   w o r k   o f   s e t t i n g   t h e   d a t e   a n d   t h e   f l a g ,   i f   n e c e s s a r y� ��� l P������� O  P���� Y  T��������� O  a���� k  h��� ��� Z  h������ o  hk���� 0 escapetoboth escapeToBoth� Z  n������� o  nq���� 0 
startfirst 
startFirst� k  t��� ��� r  t}��� o  tw���� 0 desireddate1 desiredDate1� n      ��� 1  x|��
�� 
FCDs�  g  wx� ���� r  ~���� o  ~����� 0 desireddate2 desiredDate2� n      ��� 1  ����
�� 
FCDd�  g  ����  ��  � k  ���� ��� r  ����� o  ������ 0 desireddate1 desiredDate1� n      ��� 1  ����
�� 
FCDd�  g  ��� ���� r  ����� o  ������ 0 desireddate2 desiredDate2� n      ��� 1  ����
�� 
FCDs�  g  ����  � ��� G  ����� l �������� F  ����� l �������� = ����� o  ������ *0 methodforscheduling methodForScheduling� m  ���� ��� 
 S t a r t��  ��  � H  ���� o  ������ 0 escapetodue escapeToDue��  ��  � o  ������ 0 escapetostart escapeToStart� ���� r  ����� o  ������ 0 desireddate1 desiredDate1� n      ��� 1  ����
�� 
FCDs�  g  ����  � r  ����� o  ������ 0 desireddate1 desiredDate1� n      ��� 1  ����
�� 
FCDd�  g  ��� ���� Z ��������� o  ������ 00 usesflagsforscheduling usesFlagsForScheduling� r  ����� m  ����
�� boovtrue� n     ��� 1  ����
�� 
FCfl�  g  ����  ��  ��  � n  ae��� 4  be���
�� 
cobj� o  cd���� 0 i  � o  ab���� 0 tasksselected tasksSelected�� 0 i  � m  WX���� � l X\������ n  X\��� 1  Y[��
�� 
leng� o  XY���� 0 tasksselected tasksSelected��  ��  ��  � m  PQ���                                                                                  OFOC  alis    b  rosartl1-ml2-hd            �9��H+     OmniFocus.app                                                   i��у�        ����  	                Applications    �9�      у�X         +rosartl1-ml2-hd:Applications: OmniFocus.app     O m n i F o c u s . a p p     r o s a r t l 1 - m l 2 - h d  Applications/OmniFocus.app  / ��  ��  ��  �    l     ��������  ��  ��    l     ��������  ��  ��    l     ����   P J//////// Understanding the date and time given in plain english ////////--    � � / / / / / / / /   U n d e r s t a n d i n g   t h e   d a t e   a n d   t i m e   g i v e n   i n   p l a i n   e n g l i s h   / / / / / / / / - - 	
	 l     ��������  ��  ��  
  i     I      ������ 0 englishtime englishTime �� o      ���� 0 datedesired dateDesired��  ��   k    �  Z    ���� =     o     ���� 0 datedesired dateDesired m     �  0 L     m    ����  ��  ��    l   ��������  ��  ��    r      m    ����    o      ���� 0 
monthfound 
monthFound !"! r    #$# m    ����  $ o      ���� 0 weekdayfound weekdayFound" %&% l   ��'(��  ' Z T Solves an issue with the treatment of leading zeros for the minutes (i.e., 12:01am)   ( �)) �   S o l v e s   a n   i s s u e   w i t h   t h e   t r e a t m e n t   o f   l e a d i n g   z e r o s   f o r   t h e   m i n u t e s   ( i . e . ,   1 2 : 0 1 a m )& *+* r    ,-, m    ��
�� boovfals- o      ���� &0 minuteleadingzero minuteLeadingZero+ ./. l   ��������  ��  ��  / 010 l   ��23��  2 = 7 Figures out if the user excluded any of the components   3 �44 n   F i g u r e s   o u t   i f   t h e   u s e r   e x c l u d e d   a n y   o f   t h e   c o m p o n e n t s1 565 r    787 m    ��
�� boovfals8 o      ���� 0 timemissing timeMissing6 9:9 r     ;<; m    ��
�� boovfals< o      ���� 0 daysmissing daysMissing: =>= r   ! $?@? m   ! "��
�� boovfals@ o      ���� 0 weeksmissing weeksMissing> ABA l  % %��������  ��  ��  B CDC l  % %��EF��  E 1 + Sets up the delimiters for different items   F �GG V   S e t s   u p   t h e   d e l i m i t e r s   f o r   d i f f e r e n t   i t e m sD HIH r   % .JKJ J   % ,LL MNM m   % &OO �PP  a mN QRQ m   & 'SS �TT  p mR UVU m   ' (WW �XX  aV YZY m   ( )[[ �\\  pZ ]��] m   ) *^^ �__  :��  K o      ����  0 timedelimiters timeDelimitersI `a` r   / 6bcb J   / 4dd efe m   / 0gg �hh  d a y sf iji m   0 1kk �ll  d a yj m��m m   1 2nn �oo  d��  c o      ���� 0 daydelimiters dayDelimitersa pqp r   7 >rsr J   7 <tt uvu m   7 8ww �xx 
 w e e k sv yzy m   8 9{{ �||  w e e kz }��} m   9 :~~ �  w��  s o      ����  0 weekdelimiters weekDelimitersq ��� r   ? c��� J   ? a�� ��� m   ? @�� ���  J a n� ��� m   @ A�� ���  F e b� ��� m   A B�� ���  M a r� ��� m   B E�� ���  A p r� ��� m   E H�� ���  M a y� ��� m   H K�� ���  J u n� ��� m   K N�� ���  J u l� ��� m   N Q�� ���  A u g� ��� m   Q T�� ���  S e p� ��� m   T W�� ���  O c t� ��� m   W Z�� ���  N o v� ���� m   Z ]�� ���  D e c��  � o      ���� "0 monthdelimiters monthDelimiters� ��� r   d ��� J   d }�� ��� m   d g�� ���  S u n� ��� m   g j�� ���  M o n� ��� m   j m�� ���  T u e� ��� m   m p�� ���  W e d� ��� m   p s�� ���  T h u� ��� m   s v�� ���  F r i� ���� m   v y�� ���  S a t��  � o      ���� &0 weekdaydelimiters weekdayDelimiters� ��� r   � ���� J   � ��� ��� m   � ��� ��� 
 T o d a y� ��� m   � ��� ���  T o m o r r o w� ���� m   � ��� ���  a t��  � o      ���� <0 specialrelativedaydelimiters specialRelativeDayDelimiters� ��� r   � ���� J   � ��� ��� m   � ��� ���   � ��� m   � ��� ���  t h� ��� m   � ��� ���  s t� ��� m   � ��� ���  r d� ��� m   � ��� ���  n d� ��� m   � ��� �   
 s t a r t�  m   � � �  d u e �� m   � � �  b o t h��  � o      ���� "0 otherdelimiters otherDelimiters� 	 l  � ���������  ��  ��  	 

 r   � � m   � � �  u n k n o w n o      ���� 0 inthe inThe  r   � � m   � �����   o      ���� 00 howmanynumbersinputted howManyNumbersInputted  r   � � J   � �����   o      ���� 0 numlist numList  l  � ���������  ��  ��    l  � �����   !  See if they included AM/PM    � 6   S e e   i f   t h e y   i n c l u d e d   A M / P M   Z  � �!"����! I   � ���#���� (0 isnumberidentifier isNumberIdentifier# $%$ m   � �&& �''  a% (��( o   � ����� 0 datedesired dateDesired��  ��  " r   � �)*) m   � �++ �,,  A M* o      ���� 0 inthe inThe��  ��    -.- Z  � �/0����/ I   � ���1���� (0 isnumberidentifier isNumberIdentifier1 232 m   � �44 �55  p3 6�6 o   � ��~�~ 0 datedesired dateDesired�  ��  0 r   � �787 m   � �99 �::  P M8 o      �}�} 0 inthe inThe��  ��  . ;<; l  � ��|�{�z�|  �{  �z  < =>= l  � ��y?@�y  ? [ U See if they gave an absolute date formatted in YY.MM.DD or some other similar format   @ �AA �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e   d a t e   f o r m a t t e d   i n   Y Y . M M . D D   o r   s o m e   o t h e r   s i m i l a r   f o r m a t> BCB r   � �DED b   � �FGF b   � �HIH o   � ��x�x <0 specialrelativedaydelimiters specialRelativeDayDelimitersI o   � ��w�w "0 otherdelimiters otherDelimitersG o   � ��v�v  0 timedelimiters timeDelimitersE n     JKJ 1   � ��u
�u 
txdlK  f   � �C LML r   � �NON n   � �PQP 2   � ��t
�t 
citmQ o   � ��s�s 0 datedesired dateDesiredO o      �r�r 0 
checkinput 
checkInputM RSR r   TUT J   �q�q  U o      �p�p &0 checkinputcleaned checkInputCleanedS VWV Y  AX�oYZ�nX Z  <[\�m�l[ > &]^] n  "_`_ 4  "�ka
�k 
cobja o  !�j�j 0 i  ` o  �i�i 0 
checkinput 
checkInput^ m  "%bb �cc  \ r  )8ded n  )3fgf 4  ,3�hh
�h 
cobjh o  /2�g�g 0 i  g o  ),�f�f 0 
checkinput 
checkInpute l     i�e�di n      jkj  ;  67k o  36�c�c &0 checkinputcleaned checkInputCleaned�e  �d  �m  �l  �o 0 i  Y m  
�b�b Z l l�a�`l n  mnm 1  �_
�_ 
lengn o  �^�^ 0 
checkinput 
checkInput�a  �`  �n  W opo r  BNqrq n  BJsts 4  EJ�]u
�] 
cobju m  HI�\�\ t o  BE�[�[ &0 checkinputcleaned checkInputCleanedr o      �Z�Z 0 thedatecheck theDateCheckp vwv Z  O�xy�Y�Xx G  Orz{z G  Od|}| l OV~�W�V~ E  OV� o  OR�U�U 0 thedatecheck theDateCheck� m  RU�� ���  .�W  �V  } l Y`��T�S� E  Y`��� o  Y\�R�R 0 thedatecheck theDateCheck� m  \_�� ���  -�T  �S  { l gn��Q�P� E  gn��� o  gj�O�O 0 thedatecheck theDateCheck� m  jm�� ���  /�Q  �P  y k  u��� ��� r  u~��� l uz��N�M� I uz�L�K�J
�L .misccurdldt    ��� null�K  �J  �N  �M  � o      �I�I 0 
todaysdate 
todaysDate� ��� r  ���� m  ��H�H  � n      ��� 1  ���G
�G 
time� o  ���F�F 0 
todaysdate 
todaysDate� ��� r  ����� n ����� I  ���E��D�E 00 understandabsolutedate understandAbsoluteDate� ��C� o  ���B�B 0 thedatecheck theDateCheck�C  �D  �  f  ��� o      �A�A 0 
targetdate 
targetDate� ��� Z �����@�?� =  ����� o  ���>�> 0 
targetdate 
targetDate� m  ���=�=��� L  ���� m  ���<�<���@  �?  � ��� r  ����� m  ���� ���  � n     ��� 1  ���;
�; 
txdl�  f  ��� ��:� Z  �����9�� = ����� n  ����� 1  ���8
�8 
leng� o  ���7�7 &0 checkinputcleaned checkInputCleaned� m  ���6�6 � L  ���� c  ����� l ����5�4� \  ����� o  ���3�3 0 
targetdate 
targetDate� o  ���2�2 0 
todaysdate 
todaysDate�5  �4  � m  ���1
�1 
nmbr�9  � k  ���� ��� r  ����� n  ����� 7 ���0��
�0 
cobj� m  ���/�/ � m  ���.�.��� o  ���-�- &0 checkinputcleaned checkInputCleaned� o      �,�, 0 thetime theTime� ��� r  ����� J  ���+�+  � o      �*�* 0 numlist numList� ��� l ���)�(�'�)  �(  �'  � ��� r  ����� n  ����� 1  ���&
�& 
leng� o  ���%�% 0 thetime theTime� o      �$�$ &0 timestorelocation timeStoreLocation� ��� V  ����� Q  �����#� k  �~�� ��� l ���"���"  � K E If the minutes have a leading zero, just combine them with the hours   � ��� �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r s� ��!� Z  �~��� �� F  ���� l ����� =  ���� o  ��� 0 numlist numList� J  ��  �  �  � l ���� C  ��� l ���� n  ��� 4  
��
� 
cobj� o  �� &0 timestorelocation timeStoreLocation� o  
�� 0 thetime theTime�  �  � m  �� ���  0�  �  � k  J�� ��� r  <��� c  7��� l 3���� b  3��� l (���� n  (��� 4  (��
� 
cobj� l "'���� \  "'   o  "%�� &0 timestorelocation timeStoreLocation m  %&�� �  �  � o  �� 0 thetime theTime�  �  � l (2�
�	 n  (2 4  +2�
� 
cobj o  .1�� &0 timestorelocation timeStoreLocation o  (+�� 0 thetime theTime�
  �	  �  �  � m  36�
� 
nmbr� l     �� n        ;  :; o  7:�� 0 numlist numList�  �  � 	
	 r  =@ m  =>�
� boovtrue o      � �  &0 minuteleadingzero minuteLeadingZero
 �� r  AJ \  AF o  AD���� &0 timestorelocation timeStoreLocation m  DE����  o      ���� &0 timestorelocation timeStoreLocation��  �   � k  M~  l MM����   &   Otherwise, get the numbers only    � @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l y  r  M_ c  M[ l MW���� n  MW  4  PW��!
�� 
cobj! o  SV���� &0 timestorelocation timeStoreLocation  o  MP���� 0 thetime theTime��  ��   m  WZ��
�� 
nmbr o      ���� 0 tempnum tempNum "#" Z `t$%����$ >  `e&'& o  `c���� 0 tempnum tempNum' m  cd����  % r  hp()( o  hk���� 0 tempnum tempNum) l     *����* n      +,+  ;  no, o  kn���� 0 numlist numList��  ��  ��  ��  # -��- r  u~./. \  uz010 o  ux���� &0 timestorelocation timeStoreLocation1 m  xy���� / o      ���� &0 timestorelocation timeStoreLocation��  �!  � R      ������
�� .ascrerr ****      � ****��  ��  �#  � ?  ��232 o  ������ &0 timestorelocation timeStoreLocation3 m  ������  � 454 l ����������  ��  ��  5 676 r  ��898 I  ����:���� $0 figureoutthetime figureOutTheTime: ;<; o  ������ 0 numlist numList< =>= m  ����
�� boovfals> ?@? m  ����
�� boovtrue@ ABA m  ����
�� boovtrueB C��C o  ������ &0 minuteleadingzero minuteLeadingZero��  ��  9 o      ���� 0 thetime theTime7 DED r  ��FGF I  ����H���� &0 understandthetime understandTheTimeH IJI o  ������ 0 thetime theTimeJ KLK o  ������ 0 inthe inTheL M��M m  ����
�� boovfals��  ��  G o      ���� 0 thetime theTimeE N��N L  ��OO c  ��PQP l ��R����R \  ��STS [  ��UVU o  ������ 0 
targetdate 
targetDateV o  ������ 0 thetime theTimeT o  ������ 0 
todaysdate 
todaysDate��  ��  Q m  ����
�� 
nmbr��  �:  �Y  �X  w WXW l ����������  ��  ��  X YZY l ����[\��  [ N H See if they gave an absolute date, a relative one, or a day of the week   \ �]] �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e   d a t e ,   a   r e l a t i v e   o n e ,   o r   a   d a y   o f   t h e   w e e kZ ^_^ Y  �`��ab��` k  �cc ded Z  ��fg����f E  ��hih o  ������ 0 datedesired dateDesiredi l ��j����j n  ��klk 4  ����m
�� 
cobjm o  ������ 0 i  l o  ������ "0 monthdelimiters monthDelimiters��  ��  g k  ��nn opo r  ��qrq o  ������ 0 i  r o      ���� 0 
monthfound 
monthFoundp s��s  S  ����  ��  ��  e t��t Z  �uv����u B  ��wxw o  ������ 0 i  x l ��y����y n  ��z{z 1  ����
�� 
leng{ o  ������ &0 weekdaydelimiters weekdayDelimiters��  ��  v Z  �|}����| E  � ~~ o  ������ 0 datedesired dateDesired l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 i  � o  ������ &0 weekdaydelimiters weekdayDelimiters��  ��  } r  ��� o  ���� 0 i  � o      ���� 0 weekdayfound weekdayFound��  ��  ��  ��  ��  �� 0 i  a m  ������ b l �������� n  ����� 1  ����
�� 
leng� o  ������ "0 monthdelimiters monthDelimiters��  ��  ��  _ ��� l ��������  ��  ��  � ��� l ������  � K E Getting rid of all the bits I could imagine being around the numbers   � ��� �   G e t t i n g   r i d   o f   a l l   t h e   b i t s   I   c o u l d   i m a g i n e   b e i n g   a r o u n d   t h e   n u m b e r s� ��� r  '��� l !������ b  !��� b  ��� b  ��� b  ��� b  ��� o  ���� <0 specialrelativedaydelimiters specialRelativeDayDelimiters� o  ���� "0 monthdelimiters monthDelimiters� o  ����  0 weekdelimiters weekDelimiters� o  ���� 0 daydelimiters dayDelimiters� o  ����  0 timedelimiters timeDelimiters� o   ���� "0 otherdelimiters otherDelimiters��  ��  � 1  !&��
�� 
txdl� ��� r  (1��� n  (-��� 2  )-��
�� 
citm� o  ()���� 0 datedesired dateDesired� o      ���� 0 	inputlist 	inputList� ��� l 22������  �   Resetting delimiters   � ��� *   R e s e t t i n g   d e l i m i t e r s� ��� r  2=��� J  27�� ���� m  25�� ���  ��  � 1  7<��
�� 
txdl� ��� l >>��������  ��  ��  � ��� Y  >��������� Z  O�������� F  Oy��� = O]��� n  OY��� 4  RY���
�� 
cobj� o  UX���� 0 i  � o  OR���� 0 	inputlist 	inputList� m  Y\�� ���  -� l `u������ E `u��� m  `c�� ���  1 2 3 4 5 6 7 8 9� n  ct��� 4  ot���
�� 
cha � m  rs���� � n  co��� 4  fo��
� 
cobj� l in��~�}� [  in��� o  il�|�| 0 i  � m  lm�{�{ �~  �}  � o  cf�z�z 0 	inputlist 	inputList��  ��  � r  |���� b  |���� n  |���� 4  ��y�
�y 
cobj� o  ���x�x 0 i  � o  |�w�w 0 	inputlist 	inputList� n  ����� 4  ���v�
�v 
cobj� l ����u�t� [  ����� o  ���s�s 0 i  � m  ���r�r �u  �t  � o  ���q�q 0 	inputlist 	inputList� n      ��� 4  ���p�
�p 
cobj� l ����o�n� [  ����� o  ���m�m 0 i  � m  ���l�l �o  �n  � o  ���k�k 0 	inputlist 	inputList��  ��  �� 0 i  � m  AB�j�j � l BJ��i�h� n  BJ��� 1  EI�g
�g 
leng� o  BE�f�f 0 	inputlist 	inputList�i  �h  ��  � ��� l ���e�d�c�e  �d  �c  � ��� l ���b���b  � ( " Count how many numbers were given   � ��� D   C o u n t   h o w   m a n y   n u m b e r s   w e r e   g i v e n� ��� Y  ���a���`� k  ��� ��� Z  ����_�^� > ����� l ����]�\� n  ����� 4  ���[�
�[ 
cobj� o  ���Z�Z 0 i  � o  ���Y�Y 0 	inputlist 	inputList�]  �\  � m  ���� �    � Q  ��X k  ��  r  �� c  ��	 l ��
�W�V
 n  �� 4  ���U
�U 
cobj o  ���T�T 0 i   o  ���S�S 0 	inputlist 	inputList�W  �V  	 m  ���R
�R 
long o      �Q�Q 0 tempitem tempItem �P Z ���O�N = �� n  �� m  ���M
�M 
pcls o  ���L�L 0 tempitem tempItem m  ���K
�K 
long r  �� [  �� o  ���J�J 00 howmanynumbersinputted howManyNumbersInputted m  ���I�I  o      �H�H 00 howmanynumbersinputted howManyNumbersInputted�O  �N  �P   R      �G�F�E
�G .ascrerr ****      � ****�F  �E  �X  �_  �^  � �D r   m  
 �   o      �C�C 0 tempitem tempItem�D  �a 0 i  � m  ���B�B � l ���A�@ n  ��  1  ���?
�? 
leng  o  ���>�> 0 	inputlist 	inputList�A  �@  �`  � !"! l �=�<�;�=  �<  �;  " #$# l �:%&�:  % R L Get the numbers of the input ��start from the back to get the minutes first   & �'' �   G e t   t h e   n u m b e r s   o f   t h e   i n p u t    � s t a r t   f r o m   t h e   b a c k   t o   g e t   t h e   m i n u t e s   f i r s t$ ()( r  *+* n  ,-, 1  �9
�9 
leng- o  �8�8 0 	inputlist 	inputList+ o      �7�7 &0 timestorelocation timeStoreLocation) ./. V   �010 Q  *�23�62 k  -�44 565 l --�578�5  7 K E If the minutes have a leading zero, just combine them with the hours   8 �99 �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r s6 :�4: Z  -�;<�3=; F  -H>?> l -3@�2�1@ =  -3ABA o  -0�0�0 0 numlist numListB J  02�/�/  �2  �1  ? l 6DC�.�-C C  6DDED l 6@F�,�+F n  6@GHG 4  9@�*I
�* 
cobjI o  <?�)�) &0 timestorelocation timeStoreLocationH o  69�(�( 0 	inputlist 	inputList�,  �+  E m  @CJJ �KK  0�.  �-  < k  KyLL MNM r  KkOPO c  KfQRQ l KbS�'�&S b  KbTUT l KWV�%�$V n  KWWXW 4  NW�#Y
�# 
cobjY l QVZ�"�!Z \  QV[\[ o  QT� �  &0 timestorelocation timeStoreLocation\ m  TU�� �"  �!  X o  KN�� 0 	inputlist 	inputList�%  �$  U l Wa]��] n  Wa^_^ 4  Za�`
� 
cobj` o  ]`�� &0 timestorelocation timeStoreLocation_ o  WZ�� 0 	inputlist 	inputList�  �  �'  �&  R m  be�
� 
nmbrP l     a��a n      bcb  ;  ijc o  fi�� 0 numlist numList�  �  N ded r  lofgf m  lm�
� boovtrueg o      �� &0 minuteleadingzero minuteLeadingZeroe h�h r  pyiji \  puklk o  ps�� &0 timestorelocation timeStoreLocationl m  st�� j o      �� &0 timestorelocation timeStoreLocation�  �3  = k  |�mm non l ||�pq�  p &   Otherwise, get the numbers only   q �rr @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l yo sts Q  |�uv�u k  �ww xyx r  �z{z c  �|}| l �~��~ n  �� 4  ���
�
�
 
cobj� o  ���	�	 &0 timestorelocation timeStoreLocation� o  ��� 0 	inputlist 	inputList�  �  } m  ���
� 
nmbr{ o      �� 0 tempnum tempNumy ��� Z ������� >  ����� o  ���� 0 tempnum tempNum� m  ����  � r  ����� o  ��� �  0 tempnum tempNum� l     ������ n      ���  ;  ��� o  ������ 0 numlist numList��  ��  �  �  �  v R      ������
�� .ascrerr ****      � ****��  ��  �  t ���� r  ����� \  ����� o  ������ &0 timestorelocation timeStoreLocation� m  ������ � o      ���� &0 timestorelocation timeStoreLocation��  �4  3 R      ������
�� .ascrerr ****      � ****��  ��  �6  1 ?  $)��� o  $'���� &0 timestorelocation timeStoreLocation� m  '(����  / ��� l ����������  ��  ��  � ��� l ��������  � I C Reverse it so the order is from biggest to smallest time increment   � ��� �   R e v e r s e   i t   s o   t h e   o r d e r   i s   f r o m   b i g g e s t   t o   s m a l l e s t   t i m e   i n c r e m e n t� ��� r  ����� n  ����� 1  ����
�� 
rvse� o  ������ 0 numlist numList� o      ���� 0 numlist numList� ��� l ����������  ��  ��  � ��� Z  ������� F  ����� l �������� = ����� o  ������ 0 
monthfound 
monthFound� m  ������  ��  ��  � l �������� = ����� o  ������ 0 weekdayfound weekdayFound� m  ������  ��  ��  � k  ���� ��� l ��������  � * $ If the user gave a relative date...   � ��� H   I f   t h e   u s e r   g a v e   a   r e l a t i v e   d a t e . . .� ��� O  ���� k  ��� ��� r  ����� H  ���� n ����� I  ��������� (0 isnumberidentifier isNumberIdentifier� ��� m  ���� ���  d� ����  g  ����  ��  �  f  ��� o      ���� 0 daysmissing daysMissing� ��� r  ���� H  ���� n ����� I  ��������� (0 isnumberidentifier isNumberIdentifier� ��� m  ���� ���  w� ����  g  ����  ��  �  f  ��� o      ���� 0 weeksmissing weeksMissing� ���� Z ������� =  ��� l ������ \  ��� \  
��� o  ���� 00 howmanynumbersinputted howManyNumbersInputted� l 	������ c  	��� l ������ H  �� o  ���� 0 daysmissing daysMissing��  ��  � m  ��
�� 
long��  ��  � l 
������ c  
��� l 
������ H  
�� o  
���� 0 weeksmissing weeksMissing��  ��  � m  ��
�� 
long��  ��  ��  ��  � m  ����  � r  ��� m  ��
�� boovtrue� o      ���� 0 timemissing timeMissing��  ��  ��  � o  ������ 0 datedesired dateDesired� ��� l ��������  ��  ��  � ��� l ������  �    Figure out how many weeks   � ��� 4   F i g u r e   o u t   h o w   m a n y   w e e k s� ��� Z  8������ H  !�� o   ���� 0 weeksmissing weeksMissing� r  $0��� n  $,��� 4  ',���
�� 
cobj� m  *+���� � o  $'���� 0 numlist numList� o      ���� 0 weeksdeferred weeksDeferred��  � r  38��� m  34����  � o      ���� 0 weeksdeferred weeksDeferred� � � l 99��������  ��  ��     l 99����     Figure out how many days    � 2   F i g u r e   o u t   h o w   m a n y   d a y s  Z  9c	��
 H  9; o  9:���� 0 daysmissing daysMissing	 r  >K I  >G������ 0 howmanydays howManyDays  o  ?B���� 0 numlist numList �� o  BC���� 0 weeksmissing weeksMissing��  ��   o      ���� 0 daysdeferred daysDeferred��  
 Z  Nc�� E  NS o  NO���� 0 datedesired dateDesired m  OR �  T o m o r r o w k  V[  l VV����   - ' Special case where they put "tomorrow"    � N   S p e c i a l   c a s e   w h e r e   t h e y   p u t   " t o m o r r o w " �� r  V[ !  m  VW���� ! o      ���� 0 daysdeferred daysDeferred��  ��   k  ^c"" #$# l ^^��%&��  % 1 + If they exclude it entirely or put "Today"   & �'' V   I f   t h e y   e x c l u d e   i t   e n t i r e l y   o r   p u t   " T o d a y "$ (��( r  ^c)*) m  ^_����  * o      ���� 0 daysdeferred daysDeferred��   +,+ l dd��������  ��  ��  , -.- l dd��/0��  /   Figure out the time   0 �11 (   F i g u r e   o u t   t h e   t i m e. 232 r  dt454 I  dp��6���� $0 figureoutthetime figureOutTheTime6 787 o  eh���� 0 numlist numList8 9:9 o  hi���� 0 timemissing timeMissing: ;<; o  ij���� 0 daysmissing daysMissing< =>= o  jk���� 0 weeksmissing weeksMissing> ?��? o  kl���� &0 minuteleadingzero minuteLeadingZero��  ��  5 o      ���� $0 timedeferredtemp timeDeferredTemp3 @A@ l uu��BC��  B 3 - Understand the meaning of the time component   C �DD Z   U n d e r s t a n d   t h e   m e a n i n g   o f   t h e   t i m e   c o m p o n e n tA EFE r  u�GHG I  u��I���� &0 understandthetime understandTheTimeI JKJ o  vy���� $0 timedeferredtemp timeDeferredTempK LML o  yz���� 0 inthe inTheM N��N o  z{���� 0 timemissing timeMissing��  ��  H o      ���� 0 timedeferred timeDeferredF OPO l ����������  ��  ��  P QRQ l ����ST��  S G A Creating the time deferred based on minutes and hours calculated   T �UU �   C r e a t i n g   t h e   t i m e   d e f e r r e d   b a s e d   o n   m i n u t e s   a n d   h o u r s   c a l c u l a t e dR VWV Z  ��XY��ZX @  ��[\[ o  ������ 0 timedeferred timeDeferred\ m  ������  Y r  ��]^] [  ��_`_ [  ��aba o  ������ 0 timedeferred timeDeferredb ]  ��cdc o  ������ 0 daysdeferred daysDeferredd 1  ���
� 
days` ]  ��efe o  ���~�~ 0 weeksdeferred weeksDeferredf 1  ���}
�} 
week^ o      �|�| &0 totaltimedeferred totalTimeDeferred��  Z r  ��ghg o  ���{�{ 0 timedeferred timeDeferredh o      �z�z &0 totaltimedeferred totalTimeDeferredW iji l ���ykl�y  k %  end of relative date-only code   l �mm >   e n d   o f   r e l a t i v e   d a t e - o n l y   c o d ej n�xn l ���w�v�u�w  �v  �u  �x  � opo F  ��qrq l ��s�t�ss ?  ��tut o  ���r�r 0 weekdayfound weekdayFoundu m  ���q�q  �t  �s  r l ��v�p�ov = ��wxw o  ���n�n 0 
monthfound 
monthFoundx m  ���m�m  �p  �o  p y�ly k  �"zz {|{ Z ��}~�k�j} A  ��� n  ����� 1  ���i
�i 
leng� o  ���h�h 0 numlist numList� m  ���g�g ~ r  ����� m  ���f
�f boovtrue� o      �e�e 0 timemissing timeMissing�k  �j  | ��� l ���d���d  � F @ Same as if the day and the week were missing on a relative date   � ��� �   S a m e   a s   i f   t h e   d a y   a n d   t h e   w e e k   w e r e   m i s s i n g   o n   a   r e l a t i v e   d a t e� ��� r  ����� I  ���c��b�c $0 figureoutthetime figureOutTheTime� ��� o  ���a�a 0 numlist numList� ��� o  ���`�` 0 timemissing timeMissing� ��� m  ���_
�_ boovtrue� ��� m  ���^
�^ boovtrue� ��]� o  ���\�\ &0 minuteleadingzero minuteLeadingZero�]  �b  � o      �[�[ $0 timedeferredtemp timeDeferredTemp� ��� r  ����� I  ���Z��Y�Z &0 understandthetime understandTheTime� ��� o  ���X�X $0 timedeferredtemp timeDeferredTemp� ��� o  ���W�W 0 inthe inThe� ��V� o  ���U�U 0 timemissing timeMissing�V  �Y  � o      �T�T 0 timedeferred timeDeferred� ��� r  � ��� I  ���S��R�S 00 daysfromtodaytoweekday daysFromTodayToWeekday� ��Q� o  ���P�P 0 weekdayfound weekdayFound�Q  �R  � o      �O�O 0 daysdeferred daysDeferred� ��N� Z  "���M�� @  ��� o  �L�L 0 timedeferred timeDeferred� m  �K�K  � r  	��� [  	��� ]  	��� o  	�J�J 0 daysdeferred daysDeferred� 1  �I
�I 
days� o  �H�H 0 timedeferred timeDeferred� o      �G�G &0 totaltimedeferred totalTimeDeferred�M  � r  "��� o  �F�F 0 timedeferred timeDeferred� o      �E�E &0 totaltimedeferred totalTimeDeferred�N  �l  � k  %��� ��� l %%�D���D  � + % If the user gave an absolute date...   � ��� J   I f   t h e   u s e r   g a v e   a n   a b s o l u t e   d a t e . . .� ��� Z %8���C�B� A  %.��� n  %,��� 1  (,�A
�A 
leng� o  %(�@�@ 0 numlist numList� m  ,-�?�? � r  14��� m  12�>
�> boovtrue� o      �=�= 0 timemissing timeMissing�C  �B  � ��� l 99�<���<  � G A Same as if the day were there but week wasn't on a relative date   � ��� �   S a m e   a s   i f   t h e   d a y   w e r e   t h e r e   b u t   w e e k   w a s n ' t   o n   a   r e l a t i v e   d a t e� ��� r  9I��� I  9E�;��:�; $0 figureoutthetime figureOutTheTime� ��� o  :=�9�9 0 numlist numList� ��� o  =>�8�8 0 timemissing timeMissing� ��� m  >?�7
�7 boovfals� ��� m  ?@�6
�6 boovtrue� ��5� o  @A�4�4 &0 minuteleadingzero minuteLeadingZero�5  �:  � o      �3�3 $0 timedeferredtemp timeDeferredTemp� ��� r  JX��� I  JT�2��1�2 &0 understandthetime understandTheTime� ��� o  KN�0�0 $0 timedeferredtemp timeDeferredTemp� ��� o  NO�/�/ 0 inthe inThe� ��.� o  OP�-�- 0 timemissing timeMissing�.  �1  � o      �,�, 0 timedeferred timeDeferred� ��� r  Yk��� I  Yg�+��*�+ 40 figuringtimetodesiredday figuringTimeToDesiredDay� ��� o  Z[�)�) 0 
monthfound 
monthFound� ��(� l [c��'�&� n  [c��� 4  ^c�%�
�% 
cobj� m  ab�$�$ � o  [^�#�# 0 numlist numList�'  �&  �(  �*  � o      �"�" 60 timefromtodayuntildesired timeFromTodayUntilDesired� ��!� Z  l���� �� @  lq��� o  lo�� 0 timedeferred timeDeferred� m  op��  � r  t��� [  t{��� o  tw�� 60 timefromtodayuntildesired timeFromTodayUntilDesired� o  wz�� 0 timedeferred timeDeferred� o      �� &0 totaltimedeferred totalTimeDeferred�   � r  ����� o  ���� 0 timedeferred timeDeferred� o      �� &0 totaltimedeferred totalTimeDeferred�!  � ��� l ������  �  �  � ��� L  ���� o  ���� &0 totaltimedeferred totalTimeDeferred�  �  l ������  �  �  �    l     ����  �  �    l     ����  �  �    i     I      �
	�	�
 (0 isnumberidentifier isNumberIdentifier	 

 o      �� (0 possibleidentifier possibleIdentifier � o      �� "0 containerstring containerString�  �	   k     �  r      m     �
� boovtrue o      �� $0 numberidentifier numberIdentifier  r     m    �
� boovfals o      �� 20 identifierisincontainer identifierIsInContainer  r     m    	��   o      � �  40 positionoflastidentifier positionOfLastIdentifier  r     n     2    ��
�� 
cha  o    ���� "0 containerstring containerString o      ���� 0 charlist charList  !  l   ��������  ��  ��  ! "#" Y    8$��%&��$ Z    3'(����' =    %)*) l   #+����+ n    #,-, 4     #��.
�� 
cobj. o   ! "���� 0 i  - o     ���� 0 charlist charList��  ��  * o   # $���� (0 possibleidentifier possibleIdentifier( k   ( /// 010 r   ( +232 m   ( )��
�� boovtrue3 o      ���� 20 identifierisincontainer identifierIsInContainer1 4��4 r   , /565 o   , -���� 0 i  6 o      ���� 40 positionoflastidentifier positionOfLastIdentifier��  ��  ��  �� 0 i  % m    ���� & l   7����7 n    898 1    ��
�� 
leng9 o    ���� 0 charlist charList��  ��  ��  # :;: l  9 9��������  ��  ��  ; <=< Z   9 �>?��@> G   9 DABA l  9 <C����C =  9 <DED o   9 :���� 40 positionoflastidentifier positionOfLastIdentifierE m   : ;����  ��  ��  B l  ? BF����F =  ? BGHG o   ? @���� 40 positionoflastidentifier positionOfLastIdentifierH m   @ A���� ��  ��  ? r   G JIJI m   G H��
�� boovfalsJ o      ���� $0 numberidentifier numberIdentifier��  @ k   M �KK LML r   M UNON n   M SPQP 4   N S��R
�� 
cha R l  O RS����S \   O RTUT o   O P���� 40 positionoflastidentifier positionOfLastIdentifierU m   P Q���� ��  ��  Q o   M N���� "0 containerstring containerStringO o      ���� "0 characterbefore characterBeforeM VWV r   V YXYX m   V W����  Y o      ���� 0 	numbefore 	numBeforeW Z[Z Q   Z k\]��\ r   ] b^_^ c   ] ``a` o   ] ^���� "0 characterbefore characterBeforea m   ^ _��
�� 
long_ o      ���� 0 	numbefore 	numBefore] R      ������
�� .ascrerr ****      � ****��  ��  ��  [ b��b Z  l �cd����c F   l yefe l  l og����g >  l ohih o   l m���� "0 characterbefore characterBeforei m   m njj �kk   ��  ��  f l  r wl����l >  r wmnm n   r uopo m   s u��
�� 
pclsp o   r s���� 0 	numbefore 	numBeforen m   u v��
�� 
long��  ��  d r   | qrq m   | }��
�� boovfalsr o      ���� $0 numberidentifier numberIdentifier��  ��  ��  = s��s L   � �tt o   � ����� $0 numberidentifier numberIdentifier��   uvu l     ��������  ��  ��  v wxw l     ��������  ��  ��  x yzy i    {|{ I      ��}���� 0 howmanydays howManyDays} ~~ o      ���� 0 numlist numList ���� o      ���� 0 weeksmissing weeksMissing��  ��  | k     �� ��� Z     ������ H     �� o     ���� 0 weeksmissing weeksMissing� r    ��� n    	��� 4    	���
�� 
cobj� m    ���� � o    ���� 0 numlist numList� o      ���� 0 daysdeferred daysDeferred��  � r    ��� n    ��� 4    ���
�� 
cobj� m    ���� � o    ���� 0 numlist numList� o      ���� 0 daysdeferred daysDeferred� ���� L    �� o    ���� 0 daysdeferred daysDeferred��  z ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 figureoutthetime figureOutTheTime� ��� o      ���� 0 numlist numList� ��� o      ���� 0 timemissing timeMissing� ��� o      ���� 0 daysmissing daysMissing� ��� o      ���� 0 weeksmissing weeksMissing� ���� o      ���� &0 minuteleadingzero minuteLeadingZero��  ��  � k     <�� ��� Z     9������ H     �� o     ���� 0 timemissing timeMissing� Z    3������ o    ���� &0 minuteleadingzero minuteLeadingZero� r   	 ��� n   	 ��� 4   
 ���
�� 
cobj� m    ������� o   	 
���� 0 numlist numList� o      ���� $0 timedeferredtemp timeDeferredTemp��  � k    3�� ��� r    ��� m    �� ���  � 1    ��
�� 
txdl� ���� r    3��� c    1��� l   /������ c    /��� l   -������ n    -��� 7   -����
�� 
cobj� m    ������� l    ,������ [     ,��� [   ! '��� m   ! "���� � l  " &����� c   " &��� l  " $��~�}� H   " $�� o   " #�|�| 0 daysmissing daysMissing�~  �}  � m   $ %�{
�{ 
long��  �  � l 	 ' +��z�y� l  ' +��x�w� c   ' +��� l  ' )��v�u� H   ' )�� o   ' (�t�t 0 weeksmissing weeksMissing�v  �u  � m   ) *�s
�s 
long�x  �w  �z  �y  ��  ��  � o    �r�r 0 numlist numList��  ��  � m   - .�q
�q 
ctxt��  ��  � m   / 0�p
�p 
long� o      �o�o $0 timedeferredtemp timeDeferredTemp��  ��  � r   6 9��� m   6 7�n�n  � o      �m�m $0 timedeferredtemp timeDeferredTemp� ��l� L   : <�� o   : ;�k�k $0 timedeferredtemp timeDeferredTemp�l  � ��� l     �j�i�h�j  �i  �h  � ��� l     �g�f�e�g  �f  �e  � ��� i   "��� I      �d��c�d &0 understandthetime understandTheTime� ��� o      �b�b $0 timedeferredtemp timeDeferredTemp� ��� o      �a�a 0 inthe inThe� ��`� o      �_�_ 0 timemissing timeMissing�`  �c  � k     ��� ��� Z     ����^�� o     �]�] 0 timemissing timeMissing� r    ��� m    �\�\  � o      �[�[ 0 timedeferred timeDeferred�^  � Z   
 �����Z� ?   
 ��� o   
 �Y�Y $0 timedeferredtemp timeDeferredTemp� m    �X�X	`� k    �� ��� l   �W���W  � 7 1 If the time is greater than the 24 hour clock...   � ��� b   I f   t h e   t i m e   i s   g r e a t e r   t h a n   t h e   2 4   h o u r   c l o c k . . .� ��� I   �V �U
�V .sysodisAaleR        TEXT  m     � � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .�U  �  r     m    �T�T�� o      �S�S 0 timedeferred timeDeferred �R l   �Q�P�O�Q  �P  �O  �R  � 	 =    !

 o    �N�N $0 timedeferredtemp timeDeferredTemp m     �M�M	`	  k   $ )  l  $ $�L�L   &   If the time is equal to 2400...    � @   I f   t h e   t i m e   i s   e q u a l   t o   2 4 0 0 . . .  r   $ ' 1   $ %�K
�K 
days o      �J�J 0 timedeferred timeDeferred �I l  ( (�H�G�F�H  �G  �F  �I    @   , / o   , -�E�E $0 timedeferredtemp timeDeferredTemp m   - .�D�D d  k   2 �  !  l  2 2�C"#�C  " p j if they entered the time as a full hour:minute pair (with or without AM/PM and with or without the colon)   # �$$ �   i f   t h e y   e n t e r e d   t h e   t i m e   a s   a   f u l l   h o u r : m i n u t e   p a i r   ( w i t h   o r   w i t h o u t   A M / P M   a n d   w i t h   o r   w i t h o u t   t h e   c o l o n )! %&% r   2 E'(' l  2 C)�B�A) c   2 C*+* l  2 A,�@�?, c   2 A-.- l  2 ?/�>�=/ n   2 ?010 7  5 ?�<23
�< 
cha 2 m   9 ;�;�;��3 m   < >�:�:��1 l  2 54�9�84 c   2 5565 o   2 3�7�7 $0 timedeferredtemp timeDeferredTemp6 m   3 4�6
�6 
ctxt�9  �8  �>  �=  . m   ? @�5
�5 
ctxt�@  �?  + m   A B�4
�4 
long�B  �A  ( o      �3�3 "0 minutesdeferred minutesDeferred& 787 r   F Y9:9 l  F W;�2�1; c   F W<=< l  F U>�0�/> c   F U?@? l  F SA�.�-A n   F SBCB 7  I S�,DE
�, 
cha D m   M O�+�+ E m   P R�*�*��C l  F IF�)�(F c   F IGHG o   F G�'�' $0 timedeferredtemp timeDeferredTempH m   G H�&
�& 
ctxt�)  �(  �.  �-  @ m   S T�%
�% 
ctxt�0  �/  = m   U V�$
�$ 
long�2  �1  : o      �#�# 0 hoursdeferred hoursDeferred8 IJI l  Z Z�"KL�"  K Z T Figuring out the minutes and hours in the time given (minutes are last two numbers)   L �MM �   F i g u r i n g   o u t   t h e   m i n u t e s   a n d   h o u r s   i n   t h e   t i m e   g i v e n   ( m i n u t e s   a r e   l a s t   t w o   n u m b e r s )J NON l  Z Z�!� ��!  �   �  O PQP Z   Z �RSTUR =   Z ]VWV o   Z [�� 0 inthe inTheW m   [ \XX �YY  P MS k   ` kZZ [\[ l  ` `�]^�  ] 3 - For any number specifically designated as PM   ^ �__ Z   F o r   a n y   n u m b e r   s p e c i f i c a l l y   d e s i g n a t e d   a s   P M\ `�` r   ` kaba l  ` ic��c [   ` ided ]   ` efgf l  ` ch��h [   ` ciji o   ` a�� 0 hoursdeferred hoursDeferredj m   a b�� �  �  g 1   c d�
� 
houre ]   e hklk o   e f�� "0 minutesdeferred minutesDeferredl 1   f g�
� 
min �  �  b o      �� 0 timedeferred timeDeferred�  T mnm F   n yopo =   n qqrq o   n o�� 0 hoursdeferred hoursDeferredr m   o p�� p =   t wsts o   t u�� 0 inthe inThet m   u vuu �vv  A Mn w�w k   | �xx yzy l  | |�{|�  {   For 12:00AM exactly   | �}} (   F o r   1 2 : 0 0 A M   e x a c t l yz ~�~ r   | �� ]   | ��� o   | }�� "0 minutesdeferred minutesDeferred� 1   } ~�

�
 
min � o      �	�	 0 timedeferred timeDeferred�  �  U k   � ��� ��� l  � �����  � \ V For times in the AM (implicit or explicit) and explicit times in the PM (i.e., 16:00)   � ��� �   F o r   t i m e s   i n   t h e   A M   ( i m p l i c i t   o r   e x p l i c i t )   a n d   e x p l i c i t   t i m e s   i n   t h e   P M   ( i . e . ,   1 6 : 0 0 )� ��� r   � ���� l  � ����� [   � ���� ]   � ���� o   � ��� 0 hoursdeferred hoursDeferred� 1   � ��
� 
hour� ]   � ���� o   � ��� "0 minutesdeferred minutesDeferred� 1   � ��
� 
min �  �  � o      � �  0 timedeferred timeDeferred�  Q ���� l  � ���������  ��  ��  ��   ��� ?   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� m   � ����� � ��� k   � ��� ��� l  � �������  � ; 5 If they entered the time as a single number above 24   � ��� j   I f   t h e y   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   a b o v e   2 4� ��� I  � ������
�� .sysodisAaleR        TEXT� m   � ��� ��� � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .��  � ��� r   � ���� m   � �������� o      ���� 0 timedeferred timeDeferred� ���� l  � ���������  ��  ��  ��  � ��� B   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� m   � ����� � ���� k   � ��� ��� l  � �������  � J D If the entered the time as a single number (with or without AM/PM)	   � ��� �   I f   t h e   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   ( w i t h   o r   w i t h o u t   A M / P M ) 	� ���� Z   � ������ =   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� m   � ����� � k   � ��� ��� l  � �������  � E ? If they entered 24 hours exactly (treat as a full extra delay)   � ��� ~   I f   t h e y   e n t e r e d   2 4   h o u r s   e x a c t l y   ( t r e a t   a s   a   f u l l   e x t r a   d e l a y )� ���� r   � ���� 1   � ���
�� 
days� o      ���� 0 timedeferred timeDeferred��  � ��� F   � ���� l  � ������� =   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� m   � ����� ��  ��  � l  � ������� >   � ���� o   � ����� 0 inthe inThe� m   � ��� ���  A M��  ��  � ��� k   � ��� ��� l  � �������  � . ( If they entered "12" (treat it as 12PM)   � ��� P   I f   t h e y   e n t e r e d   " 1 2 "   ( t r e a t   i t   a s   1 2 P M )� ���� r   � ���� ]   � ���� m   � ����� � 1   � ���
�� 
hour� o      ���� 0 timedeferred timeDeferred��  � ��� G   � ���� l  � ������� @   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� m   � ����� ��  ��  � l  � ������� >   � ���� o   � ����� 0 inthe inThe� m   � ��� ���  P M��  ��  � ���� k   � ��� ��� l  � �������  � G A For implicit and explicit AM entries and for implicit PM entries   � ��� �   F o r   i m p l i c i t   a n d   e x p l i c i t   A M   e n t r i e s   a n d   f o r   i m p l i c i t   P M   e n t r i e s� ���� r   � ���� ]   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� 1   � ���
�� 
hour� o      ���� 0 timedeferred timeDeferred��  ��  � k   � ��� ��� l  � �������  �   For explicit PM entries   � ��� 0   F o r   e x p l i c i t   P M   e n t r i e s� ���� r   � ���� ]   � ��	 � l  � �	����	 [   � �			 o   � ����� $0 timedeferredtemp timeDeferredTemp	 m   � ����� ��  ��  	  1   � ���
�� 
hour� o      ���� 0 timedeferred timeDeferred��  ��  ��  �Z  � 	��	 L   � �		 o   � ����� 0 timedeferred timeDeferred��  � 			 l     ��������  ��  ��  	 				 l     ��������  ��  ��  		 	
		
 i  # &			 I      ��	���� 40 figuringtimetodesiredday figuringTimeToDesiredDay	 			 o      ���� 0 monthdesired monthDesired	 	��	 o      ���� 0 
daydesired 
dayDesired��  ��  	 k     ;		 			 r     			 l    	����	 I    ������
�� .misccurdldt    ��� null��  ��  ��  ��  	 o      ���� 0 
todaysdate 
todaysDate	 			 r    			 m    	����  	 n      			 1   
 ��
�� 
time	 o   	 
���� 0 
todaysdate 
todaysDate	 			 l   ��	 	!��  	  %  Creating an intial date object   	! �	"	" >   C r e a t i n g   a n   i n t i a l   d a t e   o b j e c t	 	#	$	# s    	%	&	% o    ���� 0 
todaysdate 
todaysDate	& o      ���� $0 exactdesireddate exactDesiredDate	$ 	'	(	' r    	)	*	) o    ���� 0 
daydesired 
dayDesired	* l     	+����	+ n      	,	-	, 1    ��
�� 
day 	- o    ���� $0 exactdesireddate exactDesiredDate��  ��  	( 	.	/	. r    	0	1	0 o    ���� 0 monthdesired monthDesired	1 l     	2����	2 n      	3	4	3 m    ��
�� 
mnth	4 o    ���� $0 exactdesireddate exactDesiredDate��  ��  	/ 	5	6	5 Z    6	7	8����	7 A    &	9	:	9 o     ���� $0 exactdesireddate exactDesiredDate	: l    %	;����	; I    %������
�� .misccurdldt    ��� null��  ��  ��  ��  	8 r   ) 2	<	=	< l  ) .	>����	> [   ) .	?	@	? l  ) ,	A����	A n   ) ,	B	C	B 1   * ,��
�� 
year	C o   ) *���� 0 
todaysdate 
todaysDate��  ��  	@ m   , -���� ��  ��  	= l     	D����	D n      	E	F	E 1   / 1��
�� 
year	F o   . /���� $0 exactdesireddate exactDesiredDate��  ��  ��  ��  	6 	G��	G L   7 ;	H	H l  7 :	I����	I \   7 :	J	K	J o   7 8���� $0 exactdesireddate exactDesiredDate	K o   8 9���� 0 
todaysdate 
todaysDate��  ��  ��  	 	L	M	L l     ��������  ��  ��  	M 	N	O	N l     ��������  ��  ��  	O 	P	Q	P i   ' *	R	S	R I      ��	T���� 00 daysfromtodaytoweekday daysFromTodayToWeekday	T 	U��	U o      ����  0 weekdaydesired weekdayDesired��  ��  	S k     0	V	V 	W	X	W r     	Y	Z	Y c     		[	\	[ l    	]��~	] n     	^	_	^ m    �}
�} 
wkdy	_ l    	`�|�{	` I    �z�y�x
�z .misccurdldt    ��� null�y  �x  �|  �{  �  �~  	\ m    �w
�w 
long	Z o      �v�v  0 currentweekday currentWeekday	X 	a	b	a Z    -	c	d	e	f	c =    	g	h	g o    �u�u  0 currentweekday currentWeekday	h o    �t�t  0 weekdaydesired weekdayDesired	d r    	i	j	i m    �s�s  	j o      �r�r 0 daysdeferred daysDeferred	e 	k	l	k A    	m	n	m o    �q�q  0 currentweekday currentWeekday	n o    �p�p  0 weekdaydesired weekdayDesired	l 	o�o	o r    #	p	q	p \    !	r	s	r o    �n�n  0 weekdaydesired weekdayDesired	s o     �m�m  0 currentweekday currentWeekday	q o      �l�l 0 daysdeferred daysDeferred�o  	f r   & -	t	u	t \   & +	v	w	v [   & )	x	y	x m   & '�k�k 	y o   ' (�j�j  0 weekdaydesired weekdayDesired	w o   ) *�i�i  0 currentweekday currentWeekday	u o      �h�h 0 daysdeferred daysDeferred	b 	z�g	z L   . 0	{	{ o   . /�f�f 0 daysdeferred daysDeferred�g  	Q 	|	}	| l     �e�d�c�e  �d  �c  	} 	~		~ i   + .	�	�	� I      �b	��a�b 00 understandabsolutedate understandAbsoluteDate	� 	��`	� o      �_�_ 0 thetext theText�`  �a  	� k    :	�	� 	�	�	� r     	�	�	� l    	��^�]	� I    �\�[�Z
�\ .misccurdldt    ��� null�[  �Z  �^  �]  	� o      �Y�Y 0 thedate theDate	� 	�	�	� r    	�	�	� m    	�X�X 	� l     	��W�V	� n      	�	�	� 1   
 �U
�U 
day 	� o   	 
�T�T 0 thedate theDate�W  �V  	� 	�	�	� r    	�	�	� m    �S�S 	� l     	��R�Q	� n      	�	�	� m    �P
�P 
mnth	� o    �O�O 0 thedate theDate�R  �Q  	� 	�	�	� r    	�	�	� l   	��N�M	� \    	�	�	� o    �L�L 0 thedate theDate	� ]    	�	�	� m    �K�K 	� 1    �J
�J 
days�N  �M  	� o      �I�I 0 thedate theDate	� 	�	�	� r    !	�	�	� n    	�	�	� 1    �H
�H 
shdt	� o    �G�G 0 thedate theDate	� o      �F�F 0 thedate theDate	� 	�	�	� l  " "�E�D�C�E  �D  �C  	� 	�	�	� r   " /	�	�	� J   " +	�	� 	�	�	� m   " #	�	� �	�	�  .	� 	�	�	� m   # $	�	� �	�	�  -	� 	�	�	� m   $ %	�	� �	�	�  /	� 	�	�	� m   % &	�	� �	�	�  	� 	�	�	� m   & '	�	� �	�	�  	� 	�	�	� m   ' (	�	� �	�	�  |	� 	��B	� m   ( )	�	� �	�	�  \�B  	� 1   + .�A
�A 
txdl	� 	�	�	� r   0 5	�	�	� n   0 3	�	�	� 2   1 3�@
�@ 
citm	� o   0 1�?�? 0 thedate theDate	� o      �>�> 0 thedate theDate	� 	�	�	� r   6 F	�	�	� K   6 D	�	� �=	�	��= 0 theday theDay	� m   7 8�<�<  	� �;	�	��; 0 themonth theMonth	� m   ; <�:�:  	� �9	��8�9 0 theyear theYear	� m   ? @�7�7  �8  	� o      �6�6 0 thepositions thePositions	� 	�	�	� l  G G�5�4�3�5  �4  �3  	� 	�	�	� l  G G�2	�	��2  	� S M Checks the positions of the date components based on January 31 of this year   	� �	�	� �   C h e c k s   t h e   p o s i t i o n s   o f   t h e   d a t e   c o m p o n e n t s   b a s e d   o n   J a n u a r y   3 1   o f   t h i s   y e a r	� 	�	�	� Y   G �	��1	�	��0	� O   V �	�	�	� Z   _ �	�	�	�	�	� E  _ d	�	�	� m   _ b	�	� �	�	�  0 1	�  g   b c	� r   g n	�	�	� o   g h�/�/ 0 i  	� l     	��.�-	� n     	�	�	� o   i m�,�, 0 themonth theMonth	� o   h i�+�+ 0 thepositions thePositions�.  �-  	� 	�	�	� E  q v	�	�	� m   q t	�	� �	�	�  3 1	�  g   t u	� 	��*	� r   y ~	�	�	� o   y z�)�) 0 i  	� l     	��(�'	� n     	�	�	� o   { }�&�& 0 theday theDay	� o   z {�%�% 0 thepositions thePositions�(  �'  �*  	� r   � �
 

  o   � ��$�$ 0 i  
 l     
�#�"
 n     


 o   � ��!�! 0 theyear theYear
 o   � �� �  0 thepositions thePositions�#  �"  	� n   V \


 4   W \�

� 
cobj
 o   Z [�� 0 i  
 o   V W�� 0 thedate theDate�1 0 i  	� m   J K�� 	� l  K Q
��
 n   K Q
	


	 1   L P�
� 
leng

 o   K L�� 0 thedate theDate�  �  �0  	� 


 l  � �����  �  �  
 


 r   � �


 n   � �


 2   � ��
� 
citm
 o   � ��� 0 thetext theText
 o      �� 0 thetext theText
 


 l  � �����  �  �  
 


 r   � �


 l  � �
��
 I  � ����

� .misccurdldt    ��� null�  �
  �  �  
 o      �	�	 0 
targetdate 
targetDate
 


 r   � �


 m   � ���  
 n      


 1   � ��
� 
time
 o   � ��� 0 
targetdate 
targetDate
 
 
!
  Z   �7
"
#�
$
" F   � �
%
&
% l  � �
'��
' >  � �
(
)
( n   � �
*
+
* 1   � ��
� 
leng
+ o   � ��� 0 thetext theText
) m   � �� �  �  �  
& l  � �
,����
, >  � �
-
.
- n   � �
/
0
/ 1   � ���
�� 
leng
0 o   � ����� 0 thetext theText
. m   � ����� ��  ��  
# k   � �
1
1 
2
3
2 l  � ���
4
5��  
4 ; 5 If they don't input at 2-3 numbers, return the error   
5 �
6
6 j   I f   t h e y   d o n ' t   i n p u t   a t   2 - 3   n u m b e r s ,   r e t u r n   t h e   e r r o r
3 
7��
7 L   � �
8
8 m   � ���������  �  
$ k   �7
9
9 
:
;
: Z   � �
<
=��
>
< =  � �
?
@
? n   � �
A
B
A 1   � ���
�� 
leng
B o   � ����� 0 thetext theText
@ m   � ����� 
= k   � �
C
C 
D
E
D l  � ���
F
G��  
F %  If the input has three numbers   
G �
H
H >   I f   t h e   i n p u t   h a s   t h r e e   n u m b e r s
E 
I��
I r   � �
J
K
J I   � ���
L���� 0 solvetheyear solveTheYear
L 
M��
M c   � �
N
O
N l  � �
P����
P n   � �
Q
R
Q 4   � ���
S
�� 
cobj
S l  � �
T����
T n   � �
U
V
U o   � ����� 0 theyear theYear
V o   � ����� 0 thepositions thePositions��  ��  
R o   � ����� 0 thetext theText��  ��  
O m   � ���
�� 
nmbr��  ��  
K l     
W����
W n      
X
Y
X 1   � ���
�� 
year
Y o   � ����� 0 
targetdate 
targetDate��  ��  ��  ��  
> k   � �
Z
Z 
[
\
[ l  � ���
]
^��  
] 7 1 If the input has two numbers (left out the year)   
^ �
_
_ b   I f   t h e   i n p u t   h a s   t w o   n u m b e r s   ( l e f t   o u t   t h e   y e a r )
\ 
`��
` r   � �
a
b
a I   � ���
c���� 40 adjustpositionsfornoyear adjustPositionsForNoYear
c 
d��
d o   � ����� 0 thepositions thePositions��  ��  
b o      ���� 0 thepositions thePositions��  
; 
e
f
e r   �
g
h
g c   �
i
j
i l  � �
k����
k n   � �
l
m
l 4   � ���
n
�� 
cobj
n l  � �
o����
o n   � �
p
q
p o   � ����� 0 themonth theMonth
q o   � ����� 0 thepositions thePositions��  ��  
m o   � ����� 0 thetext theText��  ��  
j m   � ��
�� 
nmbr
h l     
r����
r n      
s
t
s m  ��
�� 
mnth
t o  ���� 0 
targetdate 
targetDate��  ��  
f 
u
v
u r  
w
x
w c  
y
z
y l 
{����
{ n  
|
}
| 4  ��
~
�� 
cobj
~ l 

����
 n  

�
�
� o  ���� 0 theday theDay
� o  
���� 0 thepositions thePositions��  ��  
} o  ���� 0 thetext theText��  ��  
z m  ��
�� 
nmbr
x l     
�����
� n      
�
�
� 1  ��
�� 
day 
� o  ���� 0 
targetdate 
targetDate��  ��  
v 
���
� Z  7
�
�����
� A 
�
�
� o  ���� 0 
targetdate 
targetDate
� l 
�����
� I ������
�� .misccurdldt    ��� null��  ��  ��  ��  
� r  "3
�
�
� [  "-
�
�
� l "+
�����
� l "+
�����
� n  "+
�
�
� 1  '+��
�� 
year
� l "'
�����
� I "'������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  
� m  +,���� 
� l     
�����
� n      
�
�
� 1  .2��
�� 
year
� o  -.���� 0 
targetdate 
targetDate��  ��  ��  ��  ��  
! 
���
� L  8:
�
� o  89���� 0 
targetdate 
targetDate��  	 
�
�
� l     ��������  ��  ��  
� 
�
�
� i  / 2
�
�
� I      ��
����� 40 adjustpositionsfornoyear adjustPositionsForNoYear
� 
���
� o      ���� 0 thepositions thePositions��  ��  
� k     J
�
� 
�
�
� Z     G
�
�
���
� =    
�
�
� l    
�����
� n    
�
�
� o    ���� 0 theyear theYear
� o     ���� 0 thepositions thePositions��  ��  
� m    ���� 
� k    
�
� 
�
�
� r    
�
�
� \    
�
�
� l   
�����
� n   
�
�
� o   	 ���� 0 themonth theMonth
� o    	���� 0 thepositions thePositions��  ��  
� m    ���� 
� l     
�����
� n     
�
�
� o    ���� 0 themonth theMonth
� o    ���� 0 thepositions thePositions��  ��  
� 
���
� r    
�
�
� \    
�
�
� l   
�����
� n   
�
�
� o    ���� 0 theday theDay
� o    ���� 0 thepositions thePositions��  ��  
� m    ���� 
� l     
�����
� n     
�
�
� o    ���� 0 theday theDay
� o    ���� 0 thepositions thePositions��  ��  ��  
� 
�
�
� =   !
�
�
� o    ���� 0 yearposition yearPosition
� m     ���� 
� 
���
� Z   $ C
�
���
�
� A   $ +
�
�
� l  $ '
�����
� n  $ '
�
�
� o   % '���� 0 theday theDay
� o   $ %�� 0 thepositions thePositions��  ��  
� l  ' *
��~�}
� n  ' *
�
�
� o   ( *�|�| 0 themonth theMonth
� o   ' (�{�{ 0 thepositions thePositions�~  �}  
� r   . 7
�
�
� \   . 3
�
�
� l  . 1
��z�y
� n  . 1
�
�
� o   / 1�x�x 0 themonth theMonth
� o   . /�w�w 0 thepositions thePositions�z  �y  
� m   1 2�v�v 
� l     
��u�t
� n     
�
�
� o   4 6�s�s 0 themonth theMonth
� o   3 4�r�r 0 thepositions thePositions�u  �t  ��  
� r   : C
�
�
� \   : ?
�
�
� l  : =
��q�p
� n  : =
�
�
� o   ; =�o�o 0 theday theDay
� o   : ;�n�n 0 thepositions thePositions�q  �p  
� m   = >�m�m 
� l     
��l�k
� n     
�
�
� o   @ B�j�j 0 theday theDay
� o   ? @�i�i 0 thepositions thePositions�l  �k  ��  ��  
� 
��h
� L   H J
�
� o   H I�g�g 0 thepositions thePositions�h  
� 
�
�
� l     �f�e�d�f  �e  �d  
� 
�
�
� i  3 6
�
�
� I      �c
��b�c 0 solvetheyear solveTheYear
� 
��a
� o      �`�` 0 num  �a  �b  
� Z     
�
��_
�
� @     
�
�
� o     �^�^ 0 num  
� m    �]�]�
� L    
�
� o    �\�\ 0 num  �_  
� L    
�
� l   
��[�Z
� [    
�
�
� m    �Y�Y�
� o    �X�X 0 num  �[  �Z  
� 
�
�
� l     �W�V�U�W  �V  �U  
� 
�
�
� i  7 :   I      �T�S�T 0 getdate getDate �R o      �Q�Q 0 theinput theInput�R  �S   k     <  l     �P�P   . ( Setting the desired date based on input    �		 P   S e t t i n g   t h e   d e s i r e d   d a t e   b a s e d   o n   i n p u t 

 r      l    �O�N I    �M�L�K
�M .misccurdldt    ��� null�L  �K  �O  �N   o      �J�J 0 desireddate desiredDate  r     m    	�I�I   n       1   
 �H
�H 
time o   	 
�G�G 0 desireddate desiredDate  r     I    �F�E�F 0 englishtime englishTime �D o    �C�C 0 theinput theInput�D  �E   o      �B�B "0 secondsdeferred secondsDeferred  Z    7�A =     !  o    �@�@ "0 secondsdeferred secondsDeferred! m    �?�?�� k    '"" #$# r    $%&% m    �>�>  & o      �=�= *0 timesusedsinceerror timesUsedSinceError$ '�<' L   % '(( m   % &�;�;���<  �A   r   * 7)*) [   * 1+,+ o   * /�:�: *0 timesusedsinceerror timesUsedSinceError, m   / 0�9�9 * o      �8�8 *0 timesusedsinceerror timesUsedSinceError -�7- L   8 <.. [   8 ;/0/ o   8 9�6�6 0 desireddate desiredDate0 o   9 :�5�5 "0 secondsdeferred secondsDeferred�7  
� 1�41 l     �3�2�1�3  �2  �1  �4       $�02�/3�.�-�,456789:;<=>?@A�+ �B�*�)�(�'C�&�%�$�#�"�!� �0  2 "����������������������
�	��������� ����� 00 usesflagsforscheduling usesFlagsForScheduling� *0 methodforscheduling methodForScheduling� &0 usegrowlforalerts useGrowlForAlerts� ,0 promptforuseroptions promptForUserOptions� *0 timesusedsinceerror timesUsedSinceError� 0 englishtime englishTime� (0 isnumberidentifier isNumberIdentifier� 0 howmanydays howManyDays� $0 figureoutthetime figureOutTheTime� &0 understandthetime understandTheTime� 40 figuringtimetodesiredday figuringTimeToDesiredDay� 00 daysfromtodaytoweekday daysFromTodayToWeekday� 00 understandabsolutedate understandAbsoluteDate� 40 adjustpositionsfornoyear adjustPositionsForNoYear� 0 solvetheyear solveTheYear� 0 getdate getDate
� .aevtoappnull  �   � ****� 0 tasksselected tasksSelected� "0 decisiononflags decisionOnFlags� .0 usesflagsforsceduling usesFlagsForSceduling� 0 inputdialog inputDialog�
 0 timedeferred timeDeferred�	 0 escapetostart escapeToStart� 0 escapetodue escapeToDue� 0 escapetoboth escapeToBoth� 0 
startfirst 
startFirst� 0 desireddate1 desiredDate1�  �  �  �  �   ��  ��  
�/ boovtrue3 �DD 
 S t a r t
�. boovtrue
�- boovfals�, 4 ������EF���� 0 englishtime englishTime�� ��G�� G  ���� 0 datedesired dateDesired��  E "���������������������������������������������������������������������� 0 datedesired dateDesired�� 0 
monthfound 
monthFound�� 0 weekdayfound weekdayFound�� &0 minuteleadingzero minuteLeadingZero�� 0 timemissing timeMissing�� 0 daysmissing daysMissing�� 0 weeksmissing weeksMissing��  0 timedelimiters timeDelimiters�� 0 daydelimiters dayDelimiters��  0 weekdelimiters weekDelimiters�� "0 monthdelimiters monthDelimiters�� &0 weekdaydelimiters weekdayDelimiters�� <0 specialrelativedaydelimiters specialRelativeDayDelimiters�� "0 otherdelimiters otherDelimiters�� 0 inthe inThe�� 00 howmanynumbersinputted howManyNumbersInputted�� 0 numlist numList�� 0 
checkinput 
checkInput�� &0 checkinputcleaned checkInputCleaned�� 0 i  �� 0 thedatecheck theDateCheck�� 0 
todaysdate 
todaysDate�� 0 
targetdate 
targetDate�� 0 thetime theTime�� &0 timestorelocation timeStoreLocation�� 0 tempnum tempNum�� 0 	inputlist 	inputList�� 0 tempitem tempItem�� 0 weeksdeferred weeksDeferred�� 0 daysdeferred daysDeferred�� $0 timedeferredtemp timeDeferredTemp�� 0 timedeferred timeDeferred�� &0 totaltimedeferred totalTimeDeferred�� 60 timefromtodayuntildesired timeFromTodayUntilDesiredF YOSW[^��gknw{~����������������������������������&��+49��������b���������������������������������J���������������� �� �� �� �� (0 isnumberidentifier isNumberIdentifier
�� 
txdl
�� 
citm
�� 
leng
�� 
cobj
�� 
bool
�� .misccurdldt    ��� null
�� 
time�� 00 understandabsolutedate understandAbsoluteDate
�� 
nmbr��  ��  �� $0 figureoutthetime figureOutTheTime�� &0 understandthetime understandTheTime
�� 
cha 
�� 
long
�� 
pcls
�� 
rvse�� 0 howmanydays howManyDays
�� 
days
�� 
week�� 00 daysfromtodaytoweekday daysFromTodayToWeekday�� 40 figuringtimetodesiredday figuringTimeToDesiredDay�����  jY hOjE�OjE�OfE�OfE�OfE�OfE�O������vE�O���mvE�O���mvE�O���a a a a a a a a a a vE�Oa a a a a a a  a !vE�Oa "a #a $mvE�Oa %a &a 'a (a )a *a +a ,a -vE�Oa .E�OjE�OjvE^ O*a /�l+ 0 
a 1E�Y hO*a 2�l+ 0 
a 3E�Y hO��%�%)a 4,FO�a 5-E^ OjvE^ O 9k] a 6,Ekh ] a 7] /a 8 ] a 7] /] 6FY h[OY��O] a 7k/E^ O] a 9
 ] a :a ;&
 ] a <a ;&M*j =E^ Oj] a >,FO)] k+ ?E^ O] i  iY hOa @)a 4,FO] a 6,k  ] ] a A&Y �] [a 7\[Zl\Zi2E^ OjvE^ O] a 6,E^ O �h] j �] jv 	 ] a 7] /a Ba ;& 3] a 7] k/] a 7] /%a A&] 6FOeE�O] lE^ Y 3] a 7] /a A&E^ O] j ] ] 6FY hO] kE^ W X C Dh[OY�kO*] fee��+ EE^ O*] �fm+ FE^ O] ] ] a A&Y hO Rk�a 6,Ekh ��a 7] / ] E�OY hO] �a 6, ��a 7] / 
] E�Y hY h[OY��O��%�%�%�%�%*a 4,FO�a 5-E^ Oa Gkv*a 4,FO jk] a 6,Ekh ] a 7] /a H 	 a I] a 7] k/a Jk/a ;& )] a 7] /] a 7] k/%] a 7] k/FY h[OY��O hk] a 6,Ekh ] a 7] /a K ; /] a 7] /a L&E^ O] a M,a L  
�kE�Y hW X C DhY hOa NE^ [OY��O] a 6,E^ O �h] j �] jv 	 ] a 7] /a Oa ;& 3] a 7] k/] a 7] /%a A&] 6FOeE�O] lE^ Y ? ,] a 7] /a A&E^ O] j ] ] 6FY hW X C DhO] kE^ W X C Dh[OY�_O] a P,E^ O�j 	 	�j a ;& Р 7)a Q*l+ 0E�O)a R*l+ 0E�O��a L&�a L&j  eE�Y hUO� ] a 7k/E^ Y jE^ O� *] �l+ SE^ Y �a T 
kE^ Y jE^ O*] �����+ EE^ O*] ��m+ FE^ O] j ] ] _ U ] _ V E^  Y 	] E^  OPY ٢j	 	�j a ;& e] a 6,k eE�Y hO*] �ee��+ EE^ O*] ��m+ FE^ O*�k+ WE^ O] j ] _ U ] E^  Y 	] E^  Y f] a 6,l eE�Y hO*] �fe��+ EE^ O*] ��m+ FE^ O*�] a 7k/l+ XE^ !O] j ] !] E^  Y 	] E^  O]  OP5 ������HI���� (0 isnumberidentifier isNumberIdentifier�� ��J�� J  ������ (0 possibleidentifier possibleIdentifier�� "0 containerstring containerString��  H 	�������������������� (0 possibleidentifier possibleIdentifier�� "0 containerstring containerString�� $0 numberidentifier numberIdentifier�� 20 identifierisincontainer identifierIsInContainer�� 40 positionoflastidentifier positionOfLastIdentifier�� 0 charlist charList�� 0 i  �� "0 characterbefore characterBefore�� 0 	numbefore 	numBeforeI 	��������������j��
�� 
cha 
�� 
leng
�� 
cobj
�� 
bool
�� 
long��  ��  
�� 
pcls�� �eE�OfE�OjE�O��-E�O %k��,Ekh ��/�  eE�O�E�Y h[OY��O�j 
 �k �& fE�Y 8��k/E�OjE�O 
��&E�W X  hO��	 	��,��& fE�Y hO�6 ��|����KL���� 0 howmanydays howManyDays�� ��M�� M  ������ 0 numlist numList�� 0 weeksmissing weeksMissing��  K �������� 0 numlist numList�� 0 weeksmissing weeksMissing�� 0 daysdeferred daysDeferredL ��
�� 
cobj�� � ��l/E�Y ��k/E�O�7 �������NO���� $0 figureoutthetime figureOutTheTime�� ��P�� P  ������������ 0 numlist numList�� 0 timemissing timeMissing�� 0 daysmissing daysMissing�� 0 weeksmissing weeksMissing�� &0 minuteleadingzero minuteLeadingZero��  N �������������� 0 numlist numList�� 0 timemissing timeMissing�� 0 daysmissing daysMissing�� 0 weeksmissing weeksMissing�� &0 minuteleadingzero minuteLeadingZero�� $0 timedeferredtemp timeDeferredTempO ���������
�� 
cobj
�� 
txdl
�� 
long
�� 
ctxt�� =� 3� ��i/E�Y #�*�,FO�[�\[Zi\Zk��&��&2�&�&E�Y jE�O�8 �������QR���� &0 understandthetime understandTheTime�� �S� S  �~�}�|�~ $0 timedeferredtemp timeDeferredTemp�} 0 inthe inThe�| 0 timemissing timeMissing��  Q �{�z�y�x�w�v�{ $0 timedeferredtemp timeDeferredTemp�z 0 inthe inThe�y 0 timemissing timeMissing�x 0 timedeferred timeDeferred�w "0 minutesdeferred minutesDeferred�v 0 hoursdeferred hoursDeferredR �u�t�s�r�q�p�o�n�mX�l�k�ju�i�h����u	`
�t .sysodisAaleR        TEXT
�s 
days�r d
�q 
ctxt
�p 
cha �o��
�n 
long�m���l 
�k 
hour
�j 
min 
�i 
bool�h �� �� jE�Y �� �j OiE�OPY ߠ�  
�E�OPY Ѡ� b��&[�\[Z�\Zi2�&�&E�O��&[�\[Zk\Z�2�&�&E�O��  ��� �� E�Y !�� 	 �� �& 
�� E�Y �� �� E�OPY k�a  a j OiE�OPY S�a  J�a   �E�Y 9�� 	 	�a �& 
�� E�Y !��
 	�a �& 
�� E�Y 	��� E�Y hO�9 �g	�f�eTU�d�g 40 figuringtimetodesiredday figuringTimeToDesiredDay�f �cV�c V  �b�a�b 0 monthdesired monthDesired�a 0 
daydesired 
dayDesired�e  T �`�_�^�]�` 0 monthdesired monthDesired�_ 0 
daydesired 
dayDesired�^ 0 
todaysdate 
todaysDate�] $0 exactdesireddate exactDesiredDateU �\�[�Z�Y�X
�\ .misccurdldt    ��� null
�[ 
time
�Z 
day 
�Y 
mnth
�X 
year�d <*j  E�Oj��,FO�EQ�O���,FO���,FO�*j   ��,k��,FY hO��: �W	S�V�UWX�T�W 00 daysfromtodaytoweekday daysFromTodayToWeekday�V �SY�S Y  �R�R  0 weekdaydesired weekdayDesired�U  W �Q�P�O�Q  0 weekdaydesired weekdayDesired�P  0 currentweekday currentWeekday�O 0 daysdeferred daysDeferredX �N�M�L�K
�N .misccurdldt    ��� null
�M 
wkdy
�L 
long�K �T 1*j  �,�&E�O��  jE�Y �� 
��E�Y 	��E�O�; �J	��I�HZ[�G�J 00 understandabsolutedate understandAbsoluteDate�I �F\�F \  �E�E 0 thetext theText�H  Z �D�C�B�A�@�D 0 thetext theText�C 0 thedate theDate�B 0 thepositions thePositions�A 0 i  �@ 0 
targetdate 
targetDate[ �?�>�=�<�;	�	�	�	�	�	�	��:�9�8�7�6�5�4�3�2	�	��1�0�/�.�-�,
�? .misccurdldt    ��� null
�> 
day 
�= 
mnth
�< 
days
�; 
shdt�: 
�9 
txdl
�8 
citm�7 0 theday theDay�6 0 themonth theMonth�5 0 theyear theYear�4 
�3 
leng
�2 
cobj
�1 
time
�0 
bool
�/ 
nmbr�. 0 solvetheyear solveTheYear
�- 
year�, 40 adjustpositionsfornoyear adjustPositionsForNoYear�G;*j  E�Ok��,FOl��,FO�k� E�O��,E�O��������v*�,FO��-E�O�ja ja ja E�O Fk�a ,Ekh �a �/ +a * ��a ,FY a * 
���,FY 	��a ,FU[OY��O��-E�O*j  E�Oj�a ,FO�a ,l	 �a ,ma & iY w�a ,m  *�a �a ,E/a &k+ �a ,FY 
*�k+ E�O�a �a ,E/a &��,FO�a ��,E/a &��,FO�*j   *j  a ,k�a ,FY hO�< �+
��*�)]^�(�+ 40 adjustpositionsfornoyear adjustPositionsForNoYear�* �'_�' _  �&�& 0 thepositions thePositions�)  ] �%�$�% 0 thepositions thePositions�$ 0 yearposition yearPosition^ �#�"�!�# 0 theyear theYear�" 0 themonth theMonth�! 0 theday theDay�( K��,k  ��,k��,FO��,k��,FY +�l  $��,��, ��,k��,FY ��,k��,FY hO�= � 
���`a��  0 solvetheyear solveTheYear� �b� b  �� 0 num  �  ` �� 0 num  a ������� �� �Y �> ���cd�� 0 getdate getDate� �e� e  �� 0 theinput theInput�  c ���� 0 theinput theInput� 0 desireddate desiredDate� "0 secondsdeferred secondsDeferredd ���
� .misccurdldt    ��� null
� 
time� 0 englishtime englishTime� =*j  E�Oj��,FO*�k+ E�O�i  jEc  OiY b  kEc  O��? �f�
�	gh�
� .aevtoappnull  �   � ****f k    �ii  6jj  nkk  �ll  �mm  �nn  �oo pp qq ���  �
  �	  g ���� 0 	errortext 	errorText� 0 errornumber errorNumber� 0 i  h I k���� r������������ b�� y�� � ����������������� ��� � � ��� ��� ��� �������s�� ��� ���	��������(����/9=AD��������ch�������������
� 
docu
� 
FCdw
� 
FCcn
�  
OTstr  
�� 
valL
�� 
pcls
�� 
cobj
�� 
FCAr�� 0 tasksselected tasksSelected
�� 
leng
�� .sysodisAaleR        TEXT
�� 
btns
�� 
dflt
�� 
givu�� <�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� "0 decisiononflags decisionOnFlags�� .0 usesflagsforsceduling usesFlagsForSceduling�� �� 0 inputdialog inputDialog
�� 
dtxt
�� 
ttxt�� 0 timedeferred timeDeferred�� 0 	errortext 	errorTexts ������
�� 
errn�� 0 errornumber errorNumber��  ������ 0 escapetostart escapeToStart�� 0 escapetodue escapeToDue
�� 
bool�� 0 escapetoboth escapeToBoth�� 0 
startfirst 
startFirst
�� 
psof
�� 
psin
�� .sysooffslong    ��� null
�� 
txdl
�� 
citm�� 0 adjustedinput adjustedInput�� 0 
fixedinput 
fixedInput�� 0 getdate getDate�� 0 desireddate1 desiredDate1�� 0 desireddate2 desiredDate2
�� 
FCDs
�� 
FCDd
�� 
FCfl��� B*�k/�k/�, 5*�-�[[�,�,\Z�9\[�,�,\Z�9A1�,E�O��,j  �j OhY hUUOb   l��a a lva la a a  O_ a ,E` O_ a   
fE` Y hOa �a a lva la  O_ a ,Ec  OfEc  Y hO @a  E` !Ob  j  _ !a "%E` !Y hO_ !a #a $l O_ a %,E` &W X ' (�a )  hY hO_ &a *E` +O_ &a ,E` -O_ &a .	 _ &a /a 0&E` 1OeE` 2O_ 1 �*a 3a 4a 5_ &a  6*a 3a 7a 5_ &a  6E` 2Oa 8a 9a :a ;a v)a <,FO_ &a =-E` >OjvE` ?O Ak_ >�,Ekh _ >�/a @ 
 a A_ >�/a 0& _ >�/_ ?6FY h[OY��O_ ?�,l hY hO*_ ?�k/k+ BE` CO*_ ?�l/k+ BE` DO_ Di 
 _ Ci a 0& hY hY *_ &k+ BE` CO_ Ci  hY hO� � �k��,Ekh ��/ �_ 1 4_ 2 _ C*a E,FO_ D*a F,FY _ C*a F,FO_ D*a E,FY 8b  a G 	 
_ -a 0&
 	_ +a 0& _ C*a E,FY _ C*a F,FOb    e*a H,FY hU[OY�pU@ ��t�� t  uu vv w��x��w  k��y��
�� 
docuy �zz  k w l h h 1 o 4 i g 0
�� kfrmID  
�� 
FCacx �{{  g l M k u L a q 6 5 i
�� kfrmID  A �||  N o ,   D o n ' t   F l a g
�+ boovfalsB �}}  4 d
�* boovfals
�) boovfals
�( boovfals
�' boovtrueC ldt     ёQ �&  �%  �$  �#  �"  �!  �   ascr  ��ޭ