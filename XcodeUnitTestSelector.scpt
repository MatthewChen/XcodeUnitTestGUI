FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �   
 D e b u g 	 o      ���� 0 build_config BUILD_CONFIG��  ��        l      ��  ��   tell application "Xcode"	set theProject to project of active project document	repeat with theTarget in targets of theProject		set isUnitTest to my isTargetUnitTest(theTarget)				if isUnitTest is yes then			--set myFiles to getUnitTestFiles(compile sources phase of theTarget)			--log myFiles			set active target of theProject to theTarget			set theTranscript to build with transcript			log theTranscript			exit repeat			my modifyBuildSetting(theTarget)		end if	end repeat -- iterate over targetsend tell     �    t e l l   a p p l i c a t i o n   " X c o d e "  	 s e t   t h e P r o j e c t   t o   p r o j e c t   o f   a c t i v e   p r o j e c t   d o c u m e n t  	 r e p e a t   w i t h   t h e T a r g e t   i n   t a r g e t s   o f   t h e P r o j e c t  	 	 s e t   i s U n i t T e s t   t o   m y   i s T a r g e t U n i t T e s t ( t h e T a r g e t )  	 	  	 	 i f   i s U n i t T e s t   i s   y e s   t h e n  	 	 	 - - s e t   m y F i l e s   t o   g e t U n i t T e s t F i l e s ( c o m p i l e   s o u r c e s   p h a s e   o f   t h e T a r g e t )  	 	 	 - - l o g   m y F i l e s  	 	 	 s e t   a c t i v e   t a r g e t   o f   t h e P r o j e c t   t o   t h e T a r g e t  	 	 	 s e t   t h e T r a n s c r i p t   t o   b u i l d   w i t h   t r a n s c r i p t  	 	 	 l o g   t h e T r a n s c r i p t  	 	 	 e x i t   r e p e a t  	 	 	 m y   m o d i f y B u i l d S e t t i n g ( t h e T a r g e t )  	 	 e n d   i f  	 e n d   r e p e a t   - -   i t e r a t e   o v e r   t a r g e t s  e n d   t e l l       l     ��������  ��  ��        l   @ ����  O    @    k    ?       l   ��  ��    * $	set theTarget to getCurrentTarget()     �   H 	 s e t   t h e T a r g e t   t o   g e t C u r r e n t T a r g e t ( )      r       !   n    " # " I   	 �� $���� $0 findtargetbyname findTargetByName $  %�� % m   	 
 & & � ' '   S Z C h a r t U n i t T e s t s��  ��   #  f    	 ! o      ���� 0 	thetarget 	theTarget   ( ) ( r     * + * n     , - , 1    ��
�� 
prdr - o    ���� 0 	thetarget 	theTarget + o      ���� 0 
theproduct 
theProduct )  . / . r     0 1 0 n     2 3 2 1    ��
�� 
abph 3 o    ���� 0 
theproduct 
theProduct 1 o      ���� 0 thename theName /  4 5 4 I   "�� 6��
�� .ascrcmnt****      � **** 6 o    ���� 0 thename theName��   5  7�� 7 X   # ? 8�� 9 8 I  5 :�� :��
�� .ascrcmnt****      � **** : o   5 6���� 0 
thecontent 
theContent��  �� 0 
thecontent 
theContent 9 n   & ) ; < ; 1   ' )��
�� 
ects < o   & '���� 0 
theproduct 
theProduct��    m     = =�                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��  ��  ��     > ? > l     ��������  ��  ��   ?  @ A @ i      B C B I      �������� $0 getcurrenttarget getCurrentTarget��  ��   C O      D E D L     F F n     G H G 1   	 ��
�� 
atar H n    	 I J I m    	��
�� 
proj J 1    ��
�� 
apdc E m      K K�                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��   A  L M L l     ��������  ��  ��   M  N O N i     P Q P I      �������� (0 getunittestbundles getUnitTestBundles��  ��   Q O     D R S R k    C T T  U V U r     W X W J    ����   X o      ���� 0 thelist theList V  Y Z Y r   	  [ \ [ n   	  ] ^ ] m    ��
�� 
proj ^ 1   	 ��
�� 
apdc \ o      ���� 0 
theproject 
theProject Z  _ ` _ X    @ a�� b a Z   # ; c d���� c l  # + e���� e =  # + f g f n  # ) h i h I   $ )�� j���� $0 istargetunittest isTargetUnitTest j  k�� k o   $ %���� 0 	thetarget 	theTarget��  ��   i  f   # $ g m   ) *���� ��  ��   d r   . 7 l m l b   . 5 n o n o   . /���� 0 thelist theList o J   / 4 p p  q�� q n   / 2 r s r 1   0 2��
�� 
pnam s o   / 0���� 0 	thetarget 	theTarget��   m o      ���� 0 thelist theList��  ��  �� 0 	thetarget 	theTarget b n     t u t 2   ��
�� 
tarR u o    ���� 0 
theproject 
theProject `  v w v l  A A��������  ��  ��   w  x�� x L   A C y y o   A B���� 0 thelist theList��   S m      z z�                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��   O  { | { l     ��������  ��  ��   |  } ~ } i      �  I      �� ����� .0 getunittestbundlepath getUnitTestBundlePath �  ��� � o      ���� 0 thetargetname theTargetName��  ��   � O      � � � k     � �  � � � r     � � � n   
 � � � I    
�� ����� $0 findtargetbyname findTargetByName �  ��� � o    ���� 0 thetargetname theTargetName��  ��   �  f     � o      ���� 0 	thetarget 	theTarget �  � � � r     � � � n     � � � 1    ��
�� 
prdr � o    ���� 0 	thetarget 	theTarget � o      ���� 0 
theproduct 
theProduct �  ��� � L     � � n     � � � 1    ��
�� 
abph � o    ���� 0 
theproduct 
theProduct��   � m      � ��                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��   ~  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� $0 setcurrenttarget setCurrentTarget �  ��� � o      ���� 0 thetargetname theTargetName��  ��   � O      � � � k     � �  � � � r     � � � n   
 � � � I    
�� ����� $0 findtargetbyname findTargetByName �  ��� � o    ���� 0 thetargetname theTargetName��  ��   �  f     � o      ���� 0 	thetarget 	theTarget �  ��� � r     � � � o    ���� 0 	thetarget 	theTarget � n       � � � 1    ��
�� 
atar � n     � � � m    ��
�� 
proj � 1    ��
�� 
apdc��   � m      � ��                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� $0 findtargetbyname findTargetByName �  ��� � o      ���� 0 thename theName��  ��   � O     5 � � � k    4 � �  � � � r     � � � n    	 � � � m    	��
�� 
proj � 1    ��
�� 
apdc � o      ���� 0 
theproject 
theProject �  � � � X    1 ��� � � Z    , � ����� � l   # ����� � =   # � � � n    ! � � � 1    !��
�� 
pnam � o    ���� 0 	thetarget 	theTarget � o   ! "���� 0 thename theName��  ��   � L   & ( � � o   & '���� 0 	thetarget 	theTarget��  ��  �� 0 	thetarget 	theTarget � n     � � � 2   ��
�� 
tarR � o    �� 0 
theproject 
theProject �  ��~ � L   2 4 � � m   2 3�}
�} 
null�~   � m      � ��                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��   �  � � � l     �|�{�z�|  �{  �z   �  � � � l     �y�x�w�y  �x  �w   �  � � � i     � � � I      �v ��u�v $0 getunittestfiles getUnitTestFiles �  ��t � o      �s�s "0 thecompilephase theCompilePhase�t  �u   � O     - � � � k    , � �  � � � r     � � � J    �r�r   � o      �q�q 0 thelist theList �  � � � X   	 ) ��p � � r    $ � � � b    " � � � o    �o�o 0 thelist theList � J    ! � �  ��n � n     � � � 1    �m
�m 
pnam � o    �l�l 0 thefile theFile�n   � o      �k�k 0 thelist theList�p 0 thefile theFile � n     � � � 2   �j
�j 
buif � o    �i�i "0 thecompilephase theCompilePhase �  ��h � L   * , � � o   * +�g�g 0 thelist theList�h   � m      � ��                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��   �  � � � l     �f�e�d�f  �e  �d   �  � � � i     � � � I      �c�b�a�c 0 dobuild doBuild�b  �a   � O      � � � k        r     I   �`�_
�` .pbpsbuiiutxt       obj �_   �^�]
�^ 
rebl m    �\
�\ boovtrue�]   o      �[�[ 0 thetranscript theTranscript �Z L     o    �Y�Y 0 thetranscript theTranscript�Z   � m     		�                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��   � 

 l     �X�W�V�X  �W  �V    i     I      �U�T�U $0 istargetunittest isTargetUnitTest �S o      �R�R 0 	thetarget 	theTarget�S  �T   O     a k    `  r     m    �Q�Q   o      �P�P 0 foundoctest foundOCTest  l   ] Z    ]�O�N =    !  n    "#" 1   	 �M
�M 
prty# o    	�L�L 0 	thetarget 	theTarget! m    $$ �%%  B u n d l e l   Y&'(& X    Y)�K*) l  " T+,-+ X   " T.�J/. Z   4 O01�I�H0 F   4 C232 =  4 9454 n   4 7676 1   5 7�G
�G 
pnam7 o   4 5�F�F 0 
thesetting 
theSetting5 m   7 888 �99 " W R A P P E R _ E X T E N S I O N3 =  < A:;: n   < ?<=< 1   = ?�E
�E 
valL= o   < =�D�D 0 
thesetting 
theSetting; m   ? @>> �??  o c t e s t1 k   F K@@ ABA r   F ICDC m   F G�C�C D o      �B�B 0 foundoctest foundOCTestB E�AE  S   J K�A  �I  �H  �J 0 
thesetting 
theSetting/ n   % (FGF 2  & (�@
�@ 
asbsG o   % &�?�? 0 thebuildconf theBuildConf, "  iterate over build settings   - �HH 8   i t e r a t e   o v e r   b u i l d   s e t t i n g s�K 0 thebuildconf theBuildConf* n    IJI 2   �>
�> 
bucfJ o    �=�= 0 	thetarget 	theTarget' !  iterate over build configs   ( �KK 6   i t e r a t e   o v e r   b u i l d   c o n f i g s�O  �N   ) # execute if this target is a bundle    �LL F   e x e c u t e   i f   t h i s   t a r g e t   i s   a   b u n d l e MNM l  ^ ^�<�;�:�<  �;  �:  N O�9O L   ^ `PP o   ^ _�8�8 0 foundoctest foundOCTest�9   m     QQ�                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��   RSR l     �7�6�5�7  �6  �5  S T�4T i     #UVU I      �3W�2�3 (0 modifybuildsetting modifyBuildSettingW X�1X o      �0�0 0 	thetarget 	theTarget�1  �2  V k     PYY Z[Z p      \\ �/�.�/ 0 build_config BUILD_CONFIG�.  [ ]�-] O     P^_^ X    O`�,a` Z    Jbc�+�*b =   ded n    fgf 1    �)
�) 
pnamg o    �(�( 0 thebuildconf theBuildConfe o    �'�' 0 build_config BUILD_CONFIGc X    Fh�&ih Z   0 Ajk�%�$j =  0 5lml n   0 3non 1   1 3�#
�# 
pnamo o   0 1�"�" 0 
thesetting 
theSettingm m   3 4pp �qq   O T H E R _ T E S T _ F L A G Sk r   8 =rsr m   8 9tt �uu  s n      vwv 1   : <�!
�! 
valLw o   9 :� �  0 
thesetting 
theSetting�%  �$  �& 0 
thesetting 
theSettingi n   ! $xyx 2  " $�
� 
asbsy o   ! "�� 0 thebuildconf theBuildConf�+  �*  �, 0 thebuildconf theBuildConfa n    
z{z 2   
�
� 
bucf{ o    �� 0 	thetarget 	theTarget_ m     ||�                                                                                  xcde   alis    Z  
STUNTAZ!!!                 �_�H+   ɍ	Xcode.app                                                       �M2ƃ�l        ����  	                Applications    ��)      Ƅ+�     ɍ ��  +STUNTAZ!!!:Developer:Applications:Xcode.app    	 X c o d e . a p p   
 S T U N T A Z ! ! !   Developer/Applications/Xcode.app  / ��  �-  �4       �}~���������  } 
����������� $0 getcurrenttarget getCurrentTarget� (0 getunittestbundles getUnitTestBundles� .0 getunittestbundlepath getUnitTestBundlePath� $0 setcurrenttarget setCurrentTarget� $0 findtargetbyname findTargetByName� $0 getunittestfiles getUnitTestFiles� 0 dobuild doBuild� $0 istargetunittest isTargetUnitTest� (0 modifybuildsetting modifyBuildSetting
� .aevtoappnull  �   � ****~ � C������ $0 getcurrenttarget getCurrentTarget�  �  �  �  K���

� 
apdc
� 
proj
�
 
atar� � *�,�,�,EU �	 Q������	 (0 getunittestbundles getUnitTestBundles�  �  � ���� 0 thelist theList� 0 
theproject 
theProject� 0 	thetarget 	theTarget� 	 z��� ����������
� 
apdc
� 
proj
�  
tarR
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� $0 istargetunittest isTargetUnitTest
�� 
pnam� E� AjvE�O*�,�,E�O .��-[��l kh )�k+ k  ���,kv%E�Y h[OY��O�U� �� ����������� .0 getunittestbundlepath getUnitTestBundlePath�� ����� �  ���� 0 thetargetname theTargetName��  � �������� 0 thetargetname theTargetName�� 0 	thetarget 	theTarget�� 0 
theproduct 
theProduct�  ��������� $0 findtargetbyname findTargetByName
�� 
prdr
�� 
abph�� � )�k+ E�O��,E�O��,EU� �� ����������� $0 setcurrenttarget setCurrentTarget�� ����� �  ���� 0 thetargetname theTargetName��  � ������ 0 thetargetname theTargetName�� 0 	thetarget 	theTarget�  ����������� $0 findtargetbyname findTargetByName
�� 
apdc
�� 
proj
�� 
atar�� � )�k+ E�O�*�,�,�,FU� �� ����������� $0 findtargetbyname findTargetByName�� ����� �  ���� 0 thename theName��  � �������� 0 thename theName�� 0 
theproject 
theProject�� 0 	thetarget 	theTarget� 	 �����������������
�� 
apdc
�� 
proj
�� 
tarR
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
null�� 6� 2*�,�,E�O $��-[��l kh ��,�  �Y h[OY��O�U� �� ����������� $0 getunittestfiles getUnitTestFiles�� ����� �  ���� "0 thecompilephase theCompilePhase��  � �������� "0 thecompilephase theCompilePhase�� 0 thelist theList�� 0 thefile theFile�  �����������
�� 
buif
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� .� *jvE�O ��-[��l kh ���,kv%E�[OY��O�U� �� ����������� 0 dobuild doBuild��  ��  � ���� 0 thetranscript theTranscript� 	����
�� 
rebl
�� .pbpsbuiiutxt       obj �� � *�el E�O�U� ������������ $0 istargetunittest isTargetUnitTest�� ����� �  ���� 0 	thetarget 	theTarget��  � ���������� 0 	thetarget 	theTarget�� 0 foundoctest foundOCTest�� 0 thebuildconf theBuildConf�� 0 
thesetting 
theSetting� Q��$������������8��>��
�� 
prty
�� 
bucf
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
asbs
�� 
pnam
�� 
valL
�� 
bool�� b� ^jE�O��,�  N H��-[��l kh  1��-[��l kh ��,� 	 	��,� �& 
kE�OY h[OY��[OY��Y hO�U� ��V���������� (0 modifybuildsetting modifyBuildSetting�� ����� �  ���� 0 	thetarget 	theTarget��  � �������� 0 	thetarget 	theTarget�� 0 thebuildconf theBuildConf�� 0 
thesetting 
theSetting� |��������������pt��
�� 
bucf
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 0 build_config BUILD_CONFIG
�� 
asbs
�� 
valL�� Q� M J��-[��l kh ��,�  - '��-[��l kh ��,�  
��,FY h[OY��Y h[OY��U� �����������
�� .aevtoappnull  �   � ****� k     @��  ��  ����  ��  ��  � ���� 0 
thecontent 
theContent�  
�� = &������������������������ 0 build_config BUILD_CONFIG�� $0 findtargetbyname findTargetByName�� 0 	thetarget 	theTarget
�� 
prdr�� 0 
theproduct 
theProduct
�� 
abph�� 0 thename theName
�� .ascrcmnt****      � ****
�� 
ects
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� A�E�O� 9)�k+ E�O��,E�O��,E�O�j 
O ��,[��l kh  �j 
[OY��U ascr  ��ޭ