GDPC                                                                            $   D   res://.import/axesprite1.png-3e25783ca2d2d3d3db191b4ca061ee73.stex  �T      s      Z.C 42ů#ǳ�䥣T   res://.import/characterholdingaxesprite1.png-d483afda3c331a1aa8a958b2fe36be4b.stex  [      I      #��m�tE�[|�L   res://.import/characterspriteright.png-042c28917bd255fee7afcd180a189df9.stex0d      w      �Ρ��%Bk$�nN=<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      �      �G�ZY�O�c�o>L   res://.import/pixil-frame-0 (4).png-75e3618916635664201450310f910f85.stex   P            Co�������fŷM�"L   res://.import/userStandingRight.png-26e9a1546856d68028fea7f351b302f5.stex   ��      U      ��%h7*����[!4H   res://.import/walkcyclepart1.png-e1f451589913e9613267d167b918f03c.stex   )      �      �6K�Z?5B��()�H   res://.import/walkcyclepart2.png-ec52b32a2677a1896bfa074856aef4af.stex  �0      �      "�E/Ͽ��~�����H   res://.import/walkcyclepart3.png-660c6b3fa3f25e364ccd59b5ed2ce953.stex  �7      r      ���"�<�r�L�9�H   res://.import/walkcyclepart4.png-283325040bf7894195e8aac696da3a33.stex  ?      �      a�ŵ5��I�~�Rv�sH   res://.import/walkcyclepart5.png-76f54b37b423f83ba9901deb7b9323d7.stex  `F      �      �v'I�1S�C�3��H   res://.import/walkcyclepart6.png-136f127f8af7a5ead7210411d76ddc0b.stex  �M      �      �!�op�m=1�~   res://Actors/User.tscn  �      �      ����zPf�8� B   res://Finding Hyperion 1.png       *      ��$x��.f�,#�p�K,   res://assets/pixil-frame-0 (4).png.import   p&      �      F-�1S�QƟ���8Bj@   res://assets/user/animations/walkcycle/walkcyclepart1.png.import�-      �      ���V�)Ď"{oy�ԃ@   res://assets/user/animations/walkcycle/walkcyclepart2.png.import5      �      �5�)�dO�����@   res://assets/user/animations/walkcycle/walkcyclepart3.png.importP<      �      �E�r�eu��Օ3/�@   res://assets/user/animations/walkcycle/walkcyclepart4.png.import�C      �      ���JE�e���1��a@   res://assets/user/animations/walkcycle/walkcyclepart5.png.import�J      �      l��
UO|xA�G~��Z@   res://assets/user/animations/walkcycle/walkcyclepart6.png.import0R      �      D�ɲ�s��Wu��&(   res://assets/user/axesprite1.png.import pX      �      ِ	�u���X#`���8   res://assets/user/characterholdingaxesprite1.png.import `a      �      Q���9l���t�"4   res://assets/user/characterspriteright.png.import   �h      �      q^���$߹HHh   res://assets/user/icon.ico  pk      >      �i��:2���].6�a0   res://assets/user/userStandingRight.png.import  �      �      �_���uc(��C���   res://default_env.tres  Љ      �       um�`�N��<*ỳ�8   res://icon.png.import   p�      �      �����%��(#AB�   res://project.binary@�      @      �Xv�,��(��+�    res://scenes/worldTesting.tscn  �      g      ����!����M�k~4b   res://src/Actor.gd.remap��      $       
M�{�F!45����   res://src/Actor.gdc `�      �      'ѿƷY���}5z    res://src/axeonplayer.gd.remap  �      *       ��d�;�x4z���ye�   res://src/axeonplayer.gdc   �      �       t/�;T!<�q%��۲�   res://src/player.gd.remap   �      %       �x�I����.`�U�   res://src/player.gdc`�      E      �	�XͱFr��bd#��    [gd_scene load_steps=13 format=2]

[ext_resource path="res://assets/user/characterspriteright.png" type="Texture" id=1]
[ext_resource path="res://src/player.gd" type="Script" id=2]
[ext_resource path="res://assets/user/axesprite1.png" type="Texture" id=3]
[ext_resource path="res://assets/user/animations/walkcycle/walkcyclepart1.png" type="Texture" id=4]
[ext_resource path="res://assets/user/animations/walkcycle/walkcyclepart2.png" type="Texture" id=5]
[ext_resource path="res://assets/user/animations/walkcycle/walkcyclepart3.png" type="Texture" id=6]
[ext_resource path="res://assets/user/animations/walkcycle/walkcyclepart4.png" type="Texture" id=7]
[ext_resource path="res://assets/user/animations/walkcycle/walkcyclepart6.png" type="Texture" id=8]
[ext_resource path="res://assets/user/animations/walkcycle/walkcyclepart5.png" type="Texture" id=9]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 48, 96 )

[sub_resource type="SpriteFrames" id=2]
animations = [ {
"frames": [ ExtResource( 1 ) ],
"loop": true,
"name": "default",
"speed": 5.0
}, {
"frames": [ ExtResource( 4 ), ExtResource( 5 ), ExtResource( 9 ), ExtResource( 7 ), ExtResource( 8 ), ExtResource( 6 ) ],
"loop": true,
"name": "walking",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 32, 40 )

[node name="player" type="KinematicBody2D"]
collision_layer = 17
collision_mask = 16
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, -96 )
shape = SubResource( 1 )

[node name="characterSprite" type="AnimatedSprite" parent="."]
position = Vector2( 0, -91.9999 )
scale = Vector2( 2, 1.91667 )
frames = SubResource( 2 )
animation = "walking"
speed_scale = 1.8

[node name="Camera2D" type="Camera2D" parent="."]
current = true
limit_left = 0
limit_bottom = 0

[node name="axeCollision" type="CollisionShape2D" parent="."]
position = Vector2( 56, -128 )
rotation = 1.5708
shape = SubResource( 3 )
one_way_collision = true

[node name="AxeSprite" type="Sprite" parent="axeCollision"]
position = Vector2( 23.7057, -0.154343 )
rotation = -1.5708
scale = Vector2( 0.833333, 1 )
texture = ExtResource( 3 )
           �PNG

   IHDR   `   `   �w8   sRGB ���  �IDATx^�]Mh]ENl�l�-��Kc��F���@n���h7��(El�E�?P��D���؍���B�-�X�\U�Y�JE[�X���Ԕ��1R�3�{��;3w�������ߜo�y3�νin
��䨪ّ�.�C� xL���"> hg����9���ٳ��㇓�je�8�&LU� Ȭ�R������}��}}}B���h��dhH�7r9" >�6�LU� x��Q�9>>.�<�&,A����S(��ܻ�a��e@�`��J�kbsllL[^�!=00 �Ƿmc	�AO�% >s�T��<��4D;�_�%��ٿ�ɑ�����
���P��q�]M� c4@���訸�x�B߿�e��O��g�-���=r}xx�%�h@ؔq.A c ������M��7�������[�<��=/�GFFX��J`��@�ڜ�Ý��'׊���P�����������=�����/����U�@ؔa����6g ޜ�#��w��v�����<�-;7���~�k��c;X�F� 8O�Hf@�x:k�m�j���_j�����u����C ��lX6���l@�R�]�R�����Rc�W>�� S���<70�G��2?�z�|��}[�37o
=TX��r��*S�|^x�_�l��g���!3�Y��5L � ���]�J���K�	����\Te���\����Z~4����r%�!��ƛ/� �� h8ݕ0�v��qD4������Q(�z}�� �Oڠ h8ݕ�@�j��:�������AsI�q��jo�����]�z.A�}��`��� 6Ù�����d��l�~�tk�փ˖iWG�u��������J�@��3E �	 �|ao}4�Sɲ���ZVA�OY���[�%@ *���1/�h\��z;�iz6M�:�N�M/h��%qj��_����F���VA�2&P��`T&�F+�;aL���w�lzG���B�(�;:��^S=�)# ̀�&̪�� S/7>x7J���k/�F�n�@��U/��0% �v�XKC;Փ��|L�`�aqN�/B����ڈ�����<�n
K �y�vL�}�sAe���?uU�lL �fx73 .B)o<��v{�([r˅n�/�V��߲S��1}Q�������!G�L����{�v� �4`�[+Ͷ�,���v�vD�0�Y�&N[FP�����Fe��@j�� d��e ,ˈ�|Y�f���'� � �	@��<҂3 ^ܧU�����8<�' �ǘ�q��`nN����FK�-����Us��������1L���5�Z�2b�R�^���D��a�1J�� x�!uG}��g�"*�Q.1ٌÓ�y��"�" a��9�w�'�;۔xg�z"�쥬�1��0��P�>k�����YpYX[ Ъ��؜�1��ǧ�Q��6���� ����Q��W�����    IEND�B`�      GDST�   �              PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  
�IDATx��Ɏ�F���Hm#ˉm� ��SNy��y`$�� c�H�$����X0r�����d�٪�_[W�?��۔�`L�]���gS����Y>��[����=�2?�1�����+�zq��h|?�������׎ �p�8�͉�e�[��R�T��?���yC�q�r����x=?r�����;9�/�.f��z[�����g��z� 8G�s����i���$�)����|�a_���t�<ax�aaw��?װ�K�S��,��[-�.��5�����:���$��! ���v-���>6���Vx������?�D{1��ygy�C��o��J�TW��l�l��i�x^����j�ɛ�\�E'���s�_�����xi�|J9����k� 8G�s��Fr��Yrd�K�^$���t��ac!��$'���?�D�����Үn���[���E�O�*Fvz�����OS!���z�K䟞e��߈�����/u��?Qɒ���R�?��r9~|�#�9B �#���_i�s���?���~%9{ �w��rB�a!�O�������!�PJΜkHI��e/u������O���hh���o���П�oRBG��f借��XK|�#�9B �#�a��Ng��><���� �j/��Zrb3�� |�#�����=�x 8�o��G�!#9�����c�Ds���Y�6u�r���N�(e!g�l�����/�&�p� �p�Ԝ����N�i�>=Ig�۵�38r�l�OP/��voY��h��7ؽ�5T�	Z�)�\^?b��SBgi�r=��x���و���$�+�߄�f�_]��,�?�%��8G�s� 8G���G���� �k��/7o���:DN�����n����Ѧ"�^Β�y}�X�_�����#G����2�������A��,؞}Z��#�9B �#����g�öE��vqκ�cW�L9Z���7��{r0����|��d��W�[��`,��c���@'����q�J��C�x>��w�����	�!�9B �#M���!}�o�S���v=}��N�O�>�siE����_�K�F6B���B�v��:0P�zK�&��|�  �! Α�7p�
v���؏�8KI��;��hs�l3Ǐ� ��oigϧN���������}V|?r>9���؇���+G�s� 8G:�.Vv��)-t���*g�3'�6r9?���F|��+��3?B�3�}����g�#߇�S��D(� ��! Α��K�BGX�����n�O3'��_��H;�:k��A\� ̇�KPG��\K����|
�c���z��G�s� 8G"'�GѦo� ��!�ș�n�ޙC��v5u���͚=�/�vx���t
�3���·�^����@�p� �p���3��	D�����F? ����dp*���=��� +6A�g�u����ԡ8_�+���#b1�g�C���=B �#�9�t捿E�@���hGs��~ �> �S�u9��ٴ�U��~U�0��g~ ��ߣ���xk.�����G�s� 8G�o���5�˗�r�x��0��dr|ɼ~�Ǻ*V`�*8;�/��at�߁v���j/�=��U�E�,��ň�!�9B �#�s*p�ʋ7|��	��o�~ޯ|����>��5�ϯ���*����9��
�?����z�+�M�G�� 8G�s$r,�գ]��yk�>9�v2A�9���x:��
Ό㓳�~V��~� N��c_E��V_ �p� �H�X��y��~+o�0j3>O�Uu��O�~U/��3���/�ϳV1u�h�W���| �hr�;�B�����/�s� 8G�s$��y֮:��� 3{iWs|r4�x�c�/AN�t���{� ��uU��'���E+�P9�< ���! ΑX���N�Υ]˼x���[{������sh��x=}��K�<|c_�ը#���PuY��g7���1��!�9B �#M���� �'��ڽ����'s>ʷm��S��X�|��F�ڈ}�؅�G��y���g&~�m��p� �H�zĻ_��~�x3�	�Z��L�����	�q�d���صz��G��`�s�X
s��>#��{����T��{A��! ��4ӳ��}@<�0��̳?BǠ]��슓s�N�Ug��2ҡj��:�ʇ����X��#)��j,�o��?׃:Vp� �p�����Z����瓃�:����y����o`� ��~<c�~���FN�c�U,����FP�! ���v��u��o8W�v89t>Z���:�̡�>r>�f�T�*���ç��L+'�c��Y:T����! ���g4�<<<���g� /�g)߼���@�O��ıt#�:�|����F�Uo���@��g+�@�C�_���! ΑhGn���P��7�p@����-;�s�>�f��֯�Q�}	����ЉZ��7�	,���
�L*b�{� 8G�s$�5S���ށ��^��ў�C4�4rk16Q��VF�Br0k3Gob�^r(���v<ߏ:	���ð�չ�<K8b�{� 8G�s$k?��13���e=p�{��	��~F��~��G��s_��\�O�x��z�5� �����-$<3R�����C�s� 8��=ܘ��    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/pixil-frame-0 (4).png-75e3618916635664201450310f910f85.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/pixil-frame-0 (4).png"
dest_files=[ "res://.import/pixil-frame-0 (4).png-75e3618916635664201450310f910f85.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST0   `           w  PNG �PNG

   IHDR   0   `   [��p   sRGB ���  -IDATx��[AH�Q�).��l2�F�A���u��t+ED��HaYz2/]�.Eu�BB=u1�t��I�\""�)�K|�����m���w�9���߷���}���l"s�m�o��C�d"��4�	�B�T*w��t�B��C��O���G�A�,ll>=0@����p4�Gv�B(K#9�g�}�tI%��"��B	��~���p����iub� �t��Ԫ��	�$����`s`� ���K+���q]�{���|�����E��Cw~B�,`�}�U�ޞ^��Z��~*�=yQ�3::j:2��O�XB>��p��K�O�Ù4�LMN�N��=�0�Paa!a\����]� }�B�s��4ᎎ���g�}��6xe�'�mW	c_�� �������K=+K�~�۴Թ�@���l����2�?�=�Hkw�hi)}X��$�RQYNB��}Z/�hg���nm[[#�ĤGf,���n��H$��	!���	줈dS[Y)pp�R��n�R��%���U�n����H�U�_��'��"`����n��#����r�܅X^�����������3�>�P����c�6*C��c������aAe�`�@�(��6X7`�yǠ������K�U�&.>�gX���DH��`�@��⪇�WQ�+LY���߃UH�Ϟ�	�i�0�����Xt�p
o�;a���_��S��g�}�2����Rd�����D1>{�'���gg	�v"�*��ɴ� �� '�?{�''���$h��AM{�����ml}U�Ss�a��O NBe���Daܝ��L{!�w�'�*c� ����h�c̈́�k�00��u��ЩV�+s3���5�?>Q�I�â���1��#�I&��Tq�c�[gj(�q�ƞ�	�u�^U�v�`��/��.�$|ԛ��A�`����4e�ό=�H�
�`Ҋ�����3�>�D"��%���@xoYyF&Q��O������3�>�+gg��׳Ok����C��貎h�l��'�[��`����ҡX'�����]i�_S��׌=��n]-.
<    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/walkcyclepart1.png-e1f451589913e9613267d167b918f03c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/animations/walkcycle/walkcyclepart1.png"
dest_files=[ "res://.import/walkcyclepart1.png-e1f451589913e9613267d167b918f03c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST0   `           l  PNG �PNG

   IHDR   0   `   [��p   sRGB ���  "IDATx��[AHTQ}�888������e�5`д��lڕ� ��An��,]�l�$m�j#��$�
jcH��	4F2u�1E�l���wg����;xW��}��9�w��
T�b�0� 7ݗ�Iv3��DF�U54M��d��T( ���f�����A�b?���z±XL?c0H�#A[�I��	ؕKk!���� ��Z(�z���mm�M��x��[��QSSC-��ǆ�X�x�H��\[y�~��pwg�эtu~>�D��r�]�R*O��
��>��Jxn�v���5m��Ȉ�2(�+ �����~?�ħ7ڜB�;�<�351e�
�
�'`l���b¸aU�}�vl��km���ӄ��ۍ�#^��-�m���/�wo�"�}��w�0��VVV�-��EEV��?��ɥN��m3�m=�u��O ���S��t�γI��Ş���x��1.UW�om][#�&��X6�x<����O)�
�'�S"�M]U�v��m�Yn��J��m��q�����i���.,�Z�R*O�m�	c�	TT�ҕZY��KJ���s���+ ��C1���%���h�|�6���y�8@�B��	$i���R �l:��5h�3sEE�|��$��6Aĸ�F�����O �BIՃ�U�|&���̏�^�BL�x�H��qhw����Z�t��޴w�9�@~	Z����xl����Vd�q����Eq~�
�'`������D�U��ɴ���`'._��	$Y�铇i[�נ������g֫��z\�S{�>a�
�'�d!�~�6�{��0�N��L{!����s!^���i��&��ulXcz����؅«s3�K}��'^pk�~X�w��߄���[�	}=ܼ4��K16m�W@<��>�窐i~�{�ý!��W@<�T")Qb�po���M�'�z�V3���xYU�l´�q!^�vZH۷�\^$���ݕ��xl���^��э�|��^7�Y�x������*'],uZ�e��jN���x����g�W@<�߭�Z�[�\�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/walkcyclepart2.png-ec52b32a2677a1896bfa074856aef4af.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/animations/walkcycle/walkcyclepart2.png"
dest_files=[ "res://.import/walkcyclepart2.png-ec52b32a2677a1896bfa074856aef4af.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST0   `           V  PNG �PNG

   IHDR   0   `   [��p   sRGB ���  IDATx��\AHTQ}�88��L|��,�́��MH�ٴ+ED�*ȍ��+C�M��MQm���DWA+C���"s$q�BBtD1'�����{�3�y�W9�ͻ��}����"�������C��c����FF�U�76jM���!D(�>�M���cu����>���ɤ|�p�`W,��Բ{�'`W.���6�W�Zh�P(D�0�юºՉ���[��Q[[K-���FsX{�'��\Zyn�����#��ݭ��w{z?�'��x�OQ 
�O@�
��>��Fxv��tl��5)gxxXw�`������ ����RN�ǻ�<ș��]{�'�m���R¸aUi�qU:6����������N���W�}��6xq�7���7	c_�	"����UUU��C=���~diJJ./��^�6��V�Y�_�^�	�t:}���~X�_#�VQ�c��`����z��55�S��G��	���t¡i�f~��p<��f}B�P�}[%"��WWK�0��u��T4m��g*E��`E�������\��
!
@�	(���ń�ڄ|>]���_V��W̏Xu��^�	���U�8o�c�Q�@�����</��`� �,Z�m�����k�m�~f���U��2?�W���O$���`���B���U�|E(��b~�X�|�
�O��c�G�u��x�^�w�9O�-��W�}�2b����H�R�Ɔ��1�+�>[�P|f�0'b���t{�1�;���`���B���v@�ռ��m�����W�镔�Sw�a�
�O�b�����d�m!���vz'�^�;}U�W�}��i���f�.�yl��15d�S}�|+���i��:���֤�b�s��kB�����6)a��#ռұh���Н�=x��G'�����N{�'`��tXn��3�ʣ��r�`�@N_�e����=�F�W�}J���'#*Zֶq,����D��� ll��:�4�ȗM2Y����{�b��B,{�'���"�����U~�j�    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/walkcyclepart3.png-660c6b3fa3f25e364ccd59b5ed2ce953.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/animations/walkcycle/walkcyclepart3.png"
dest_files=[ "res://.import/walkcyclepart3.png-660c6b3fa3f25e364ccd59b5ed2ce953.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST0   `           s  PNG �PNG

   IHDR   0   `   [��p   sRGB ���  )IDATx��\AHTQ���89�Ɍ��F�A�A�"��iW.��2Z��²ten�$m�j��$��jcI��Yd�d 3N""6���m�3����?������9�w�?�a؇-�x�7�e� ���EF�U�65i��X��ay� ��&��6h���u�g�766O$�C!�ݑ�R�N�`��Y��B�_k���� q��G<��I\�:�W�}f��uuu����N��ڰ�9�W�}��˥�����K��}==Z7���K���"q��ev~�a��ЮB�`�����v�xl��Z���Ҙ��1�i�+�>m⩏/�1E.w�q0fzjZw�
�O@�B����q1ª�q�����Ҙ{og�wuui͇��ж��+����J�"�?q�^[]]��(|�gK_�ǿ�H��K����׵\���+�>K��G�����**,��0��q���xrs����*�/%ptV���������0�<P�}�%"�4��H/8�%��v�V*��YJ&�{!>PQ!�W��j~>�\���'�l�[���c�	z<�p�X^�eez�����+�>��h��/�c�6*�t���s���*�@P���H�m���,:�����Xq�4^Um��|�E9.��x�l�^�	�Y(�z(ze����}X���`�@�C���Q���E����y���r�x�
�O@YF��6���B*�clhQ�^�	�ꅢss�q;{U��MB�7��*���H�Ѓ�w�^jǠ���������6����ԟ�E���H�PI�O�;�Fw���N��>w�'�*�W�}��i��X+q�KlǦ�g��n'��%^�'�i�jN��w���҆#��Iy䜨?�Ĺ��N�+���d@�l���I=�	�V	?�b�*FwN�`���_p�"�*��`�@.�*1�l�*R�囶LH�`��mU�������KıG��
�O���
5{�1ky��xhdۓ��̃����Bfp���xk�iV��-��ŰW�}���Q�l�r�    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/walkcyclepart4.png-283325040bf7894195e8aac696da3a33.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/animations/walkcycle/walkcyclepart4.png"
dest_files=[ "res://.import/walkcyclepart4.png-283325040bf7894195e8aac696da3a33.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST0   `           k  PNG �PNG

   IHDR   0   `   [��p   sRGB ���  !IDATx��\AHTQ}����A���1��������rD��"ȍ��+Cp�&iST� $� �UTS��N�1R�8N""6���m��3���7(�0gu�������}����y"s�Ԍ���E�eb��	�	�#��*����D��C�
�O�a1�l�V�_[#~���xMM�x<.1"���-���^�	X�Kj!���� �5�Z(�z���mm�u�{�'`�
I�����%�����as`� �v�+�V��ccį�(%��٩u�]]ğ�/7����Y� ���.X=�=�5��|.=��xE3<<�;{�'�m�@ @<��4&�p�:�LML�N��^�	h[����8.FXUZ�_���J���4���v���W�}��6xy�7�[�7�c_d����m�ܲ�2�Dl�ԏ����������t���+�>[��'KJ�`�g�8ZE�����>K7����GVV���I�C�L�y<��X,��	!�@�	l��lS]^.=���,��l��I�6��q����������4W!D(�>e;]��O�M��T.�Ғ_X����9{�'��V�スc��F��n<V��ns�� l ��^�	�h�����,:/�1h�3�N�4^UmR�|�E9.��X�l�^�	�X(�z(ze����X���`�@�j��UU�(�W¢ㆧ��y��r�x�
�O@YF��6���B*�klhQ�^�	Xꅢ33�q;{U���C���*���H�У��v=!�l>��m���?6�&WҘ�Kw��W�})r��J��g����I�����ɾ
�`��rw�;�@�a�ۆN���!���k���#�ċ|��'������(���g���6���H�c��ӂ��ju�{F��}�d�*�r�
�O����L�襊t�b�<Z�M�I�(��[��(S���+�>[��_���wh��{�'`�BG>�J�㧅����٤��)�^�	ح��)w��"�������7���̃����b���?�I��\�M���    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/walkcyclepart5.png-76f54b37b423f83ba9901deb7b9323d7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/animations/walkcycle/walkcyclepart5.png"
dest_files=[ "res://.import/walkcyclepart5.png-76f54b37b423f83ba9901deb7b9323d7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST0   `           d  PNG �PNG

   IHDR   0   `   [��p   sRGB ���  IDATx��[AH�a��M��b��,��AA��a�n塈(;u�B��d�t)��%
	1H�t2�t�I�\!!6Q�e������o��mQ��{z���߳����������Ŗa~I>n�-���`O �V���l4Hw4��<�� {�yd����u§755N$�C!���(���N�`O��\J�m�������B�`����#��$lZ��+����*����z�h	�h'�xm$�9�W�=�t����sm|��ᾞ����%�hb����;?!D(���q�+�&���*����k�'/*sFGGM�A�^��-�޽P攺������i�iP�W�=c������J���k��+s%���e4�
�'`l!l�W6���q�0�E.��h����oQ|�g9=ԏ}�U&W������ǵl��G�W�=��v��TWӇ���h]-�+���P�q���prs����*�/�pdN���������OQ 
�'�Dd���Z�������JER�6_�I�^�TU)�u�\\L7W!D(�����>\ZJ�M��Q���,�+*��5�#֝��W�=�д�o��1V]�L���v�������
�'`�m��Xt��1h+�3N�2_Wm,�C|�E1.��x�l�^�,�TM���ׄ�:i��|V!M>{��x� ������Xt�p
o�;�� �-��g� {�2b����ȴ��Ɔ��1�+����^(6?O��W��N����;���+����B����xA�]���6v�ȣ��ZR��p�a�
�'`�P�v�2�w��0�N��L{!|�O�u�^��������.�m��1;"ߩ�������J��~ݜt?,*n-�7a|R蜬h���0�+m��bL>��͜�� {9�~�&2�,QW�L���	[Ȏ�g�ʜ���ʓ�`� {9U�ok���4�f�3
�
�'`l!���BOg��2GS�3�0�Ё���ϧ���v���	?��x�ʄ�n��|��j'�+�������=�
�
�'�$�Q�� �     IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/walkcyclepart6.png-136f127f8af7a5ead7210411d76ddc0b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/animations/walkcycle/walkcyclepart6.png"
dest_files=[ "res://.import/walkcyclepart6.png-136f127f8af7a5ead7210411d76ddc0b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST`   `           W  PNG �PNG

   IHDR   `   `   �w8   sRGB ���  IDATx�흱�Q���,RL�-iҹ��4y��>Cb��R�@��,��1�)B,e!Y��B$�,	�N���{������˙a>�s�x���c)OR�q*�=��"2@F�H 	 ��8gt���+I��0�h4��~�Ɨ��a���+���^ƛ�&�'�yI�� 2@F�H 	 s+���Xq����e���z�GGI��Td$���� 2@&dɲ����9\ou;�]ӡ�;#�RY��Hs��,@7v���;�t��.�L�Y���Z����6\_�VN�8�ng0x�Q�� 2@&�0�N�֧iz�R�
 m 삪��ů���"�s���F#���V*�:D$���� 2@&�,�v;ϟ<��g����}�>A�fJ���X�ܩ�H 	 #d$�L�Y�v^>{����+y���\�t#�|:�\��va|<�x�V��[�o���-���\9%� ��'aO��)������QxT;��������Vx�4�L`<V�c�
 #d$���� 2!�^3��E�!� ��J�R��,z�
 �� k�f��:��V�6�˝ނ$�8�|��b���������9L���Ư��o�;���A]	 #d$����Y�ɬn'U 	 �����*@��?oA��_����yn�3���Ϣ���M���� 2@FȘ�������_0�e��G3"�
�#d$���� 2�:��|Y���m�9�ɠ
 #d$���� 2��S>�1NU 	 #d$�����a�+��S    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/axesprite1.png-3e25783ca2d2d3d3db191b4ca061ee73.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/axesprite1.png"
dest_files=[ "res://.import/axesprite1.png-3e25783ca2d2d3d3db191b4ca061ee73.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST`   `           -  PNG �PNG

   IHDR   `   `   �w8   sRGB ���  �IDATx��Oh\U�g�gHHRIeҤ1��F�&�.Rua\dSS[(H�ve�E�&��"d��A��,�PbC�FL5!K�i�v��q���&��̛��;��7oν��;s>��O0`&��w�t�Spr�H^���|t"d�$���2�2L��9<<L����i�^B{`�8`����i����J0#	`�8��vIwww�nmm%���N���;�����,�>�|�<���f��x\�cG����Y�T 3� f�(ρ���hG����h4��{h-mgll�4�)ZP[[�H$Bz��)Ҷ�#� f$��Lb�����Ak���$�F=5:jhh ����5���a���0c\�!�D�tOO�p8��o�����q�'[�Ip�U�}gϒ����m�Q*�I 3i���<B_<yԸԬ',���[�^��Z��}}��-��t��7I/^�L�a��ژ�Jҝ���D,��H�)�e���la;�,���y�6�(\�m?s�����G*�I 3ikA����&b/�u
���q���~�d
G5��_ն��6��ws�{{{����
����"�%@N�3�=��u��?T����j�[	O-;#�������۱7H�P�v?i�l[SS�?!�w� f�ւ�����p9�b1m�sM�/�.e�n�]���9mpE����s��5�JnMܩH�I�ՠ����vyv����S�h���I�νG�����Ө��Єm�S<�F���]д{�4Z��H0#	`�8C;�����d�9Le>:1�����۪-���E��E��u,&Vm��"���Kz��=�_�7IwDZ.-(�jڳ���͛Y[�T 39% � ��x_�D��d|�A������B��;�^���V��PV�XTDz��J5��,yB)/V��W����V�b'���6!՞CG`y�[�$���02}?�ĄB!�ݝ8�&q�I5��'���������8�i��օ�ozp��z@>*�t�ҏ|*'?�
ȅ����?�1 ��r�N
�����/h#8:r���}0{����`�����Ȟ�	���� '����j��ōdY�`;���A�'Y��NZ<0�8Ԧ���%��������OXP!1�vk;��Gp�a��
`F���,ȴVc�8����!�-�/��$��Y�	۵ ��FX��� f$��΂LW��t�o�����0�;r{-h���+��4W�P�
`F���,��� |��~iB*�I 3�z��E�"�C���%�2m��%�N���F:��@�������6�z�M*�I 3�U�u �>�?�Ě���<���+yF��H��!m�U���0�;��vܰ,� f$��΂���լ��͡-"��$��Y�N��F�vĂ�'H����0��>���9�5!��$��]�o�.���A���g�&�-RW������R�H��!N^����'m�E*�I 3��?�j8�    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/characterholdingaxesprite1.png-d483afda3c331a1aa8a958b2fe36be4b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/characterholdingaxesprite1.png"
dest_files=[ "res://.import/characterholdingaxesprite1.png-d483afda3c331a1aa8a958b2fe36be4b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST0   `           [  PNG �PNG

   IHDR   0   `   [��p   sRGB ���  IDATx��\AHTQ}��88��L�N�F�Q�@A�NZ̦]�"�VAn��,]��6E�"�!!���V�5���H�8���Ȉ9���?c��������A�{��x���=ǥr���\|�\L�/C<��Ȩ�ʽ�F�I:c1��PJ��	�m�m�*_WV���'���@8�L�g�Dv�bhK#;�W@<�ri-��$��B��a@�p����iu��xv��6jkk	�%���ب�5�W@<���ʵ�����M>�=]]F|������������Ry��x�UX�=�����z�<{E�322b�
�
�'`l�P(D8��6����v̙��2]�x�0�Pii)a|aU�q��vl��Km���ӄ;::��#^��-�m���O·n\'�}�'x�0��VUU�G^�E������������m3�9��u��O������J�a��0Z����6B<[/�jj����./�2�	�g,���~��Db'�SJ��	l��lS_]�px�r��m�Rьe�o�a?�**�������Z�R*O�m�O�j��t�J-.Z�eef�����s4�
�'�VL��n��1�j���4��A��_�6���xYZ�m>���p���\q�6��6Y�C|�� b|���߶w�W@<�,eU�Wa�`�3?��
1��O �Ǡ��G����Sx��	�<�eh9&_��	�e�No��"�^��Ɔ��1�+ ���^(>;K��W�z'�^h򿀝�|�
�'�e�G�n; �j���6v�[G��tJ�Sw�6a�
�'�e���mR�Laܝ��;��Bx�O����x��4F�T3a���6,�1=lݩ>r�������`�Ɂ>nM�?���0>�?~�M�0��!7�v,�/����=d����\��!^��-��6�a9�
�'�
����'1���X�
�'`l!�ͺ��6m�x�jzߧ�����G��B��	��5����`�~ѦK�8c��r��X�
�'��o��b�]���
�'���XO3���    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/characterspriteright.png-042c28917bd255fee7afcd180a189df9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/characterspriteright.png"
dest_files=[ "res://.import/characterspriteright.png-042c28917bd255fee7afcd180a189df9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        0`    (     (   0   �                                   ( 4 / % @ = L 	 K X !!c &Y @7 %%m %%n K@ ))y --� VI$ aR) l[* l[. wd3 ggg  ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         


      


                        


      


                        


      


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ######   			      ######      ######   			      ######      ######   			      ######               			                     			                     			            			   						   			      			   						   			      			   						   			      			   			   			      			   			   			      			   			   			      			   			         			   			         			   			            						            						            						         			   			   						      			   			   						      			   			   						      									            									            									               									            									            									            						               						               						                     			                           			                           			                              








                                 








                                 








                              








                              








                              








                           (((


###


                        (((


###


                        (((


###


                        %%%"""###&&&                     %%%"""###&&&                     %%%"""###&&&                     $$$   ######   ###                     $$$   ######   ###                     $$$   ######   ###                           """"""   """                           """"""   """                           """"""   """                     ''''''                     ''''''                     ''''''                        '''!!!$$$                        '''!!!$$$                        '''!!!$$$                        $$$!!!                        $$$!!!                        $$$!!!                        $$$(((&&&&&&                           $$$(((&&&&&&                           $$$(((&&&&&&                                                                                                                                                                                                                                                                           �� �  �� �  �� �  ��  �  ��  �  ��  �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �� �  �     �     �                                                                                                                                                                             �      �      �      �    ?  �    ?  �    ?  �   �  �   �  �   �  ��  �  ��  �  ��  �  ��  �  ��  �  ��  �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  ��  �  ��  �  ��  �  ��  �  ��  �  ��  �  ��  �  ��  �  ��  �  ��  �  ��  �  ��  �  �����  �����  �����    GDST    @           9  PNG �PNG

   IHDR       @   {�u�   sRGB ���  �IDATh��X9n�0	��� �����~���p�:p����&�Q�1	�\"�� �I�h��ы�pэp9��=3��"za���{#� K �M��4�4��:���w�?�En���� �~���o���.KX�i�(��ՙ�	�߃�&�-"t��-��,��B7E@t���z	�?J������W3-�9%B��R����0ǹ|Y�{�Z�Ψ�GQ�|%��or�0�I�0s@q��*Q�JD��ND9HMb7��j����b�~�JD�	=��/�E��$A��:�� 9p�M�1��0YDl�X������g��F��Y`��pW`Ɋ[�q6y�+~��\Gl9N���H
�c.1
�r̎�㹷)e�|�&fC������@� ���>^p
`v¨���zH�RD�E�#b�{?@�����������Z���� >���5���f�"^5K�(��{��"$�+�$�EPk���L&�sjO�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/userStandingRight.png-26e9a1546856d68028fea7f351b302f5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/user/userStandingRight.png"
dest_files=[ "res://.import/userStandingRight.png-26e9a1546856d68028fea7f351b302f5.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST`   `           �  PNG �PNG

   IHDR   `   `   �w8   sRGB ���  {IDATx��OHTQ�5��� N����d�9Pд�n�U� �?� 7QH��
�M��MQm���DWA+�rQ.4�
�?�����f�o�^}�'���Vùw.��yg�{���~,:���wg-����a�Y���f]��&���Q��� e� e�CƉ������}��Sѵ�������;66�l��G[�Pv�
P�	P&l�-m���S�,XZP:��L&E�57��h�+@&@��]����*�h)�юP�ھ(��rX�0ʬ�e;��oߊ>__&����鋯ݸ!���	ѱX,�������s�\��w�h=��ȸ���YcLOO��1�������R)��_c�b�U���������V�2L�2�TTT$/����t�q���gƘ[��E����)�a(�(�lA8F�5�W��KE�\(V�K4��-//ǯ�~����a����|��acpI�9�h;]_g�r�`(�(��胥��aMbN4Z�Z�� e� eB�(����=5?/�wzZtcr��a��������ѵ��X�0�,/q���mیv/��FI}������������x��/��V:���a�������n']Vf
�ə�⋋��-����92V�2L�2�9�Q���e�vl����c��3�/�n �V�2L�2^���)�hz��6�<g���o�v2�>�Ej�0��#b(�(�aA݋eVc��`�,�c|����FX�0�dx�>ۺ�!�����8<�:;�=C|1Z�%>�a(�(cmc��v�
�ud_�����+@&@�P���o�D��8��͎\gA �;ؑ->�a(�(�aAwo__uA��1R��N�����G_f��1է��z�l���L�nI��GN�ƻ��̎\gA��!|��WX�0�X�F*5�Ώ��F���wJ�9vN���/�K*�E<h;�폁��*c(�(�����SMƀ�����5�E������KX�0�Dz}��"�a(�(�lAQl���?� e� e"uA33ӫY�a�O��a�q� ��EGAۡ-�
P�	P�ق��=4~>b��k}�����/b�e��%�����-{)��k����	7�]Y�0�Dzwt�}����z+@&@�k�XO�<0�    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_scene load_steps=5 format=2]

[ext_resource path="res://assets/pixil-frame-0 (4).png" type="Texture" id=1]
[ext_resource path="res://Actors/User.tscn" type="PackedScene" id=2]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 128, 128, 0, 128, 0, 0, 128, 0 )

[sub_resource type="TileSet" id=2]
0/name = "pixil-frame-0 (4).png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 128, 128 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[node name="Node2D" type="Node2D"]

[node name="KinematicBody2D" parent="." instance=ExtResource( 2 )]
position = Vector2( 1352, -904 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = SubResource( 2 )
cell_size = Vector2( 128, 128 )
cell_custom_transform = Transform2D( 128, 0, 0, 128, 0, 0 )
collision_layer = 24
collision_mask = 23
format = 1
tile_data = PoolIntArray( -1507328, 0, 0, -1441792, 0, 0, -1376256, 0, 0, -1376255, 0, 0, -1376254, 0, 0, -1376253, 0, 0, -1376252, 0, 0, -1376248, 0, 0, -1310720, 0, 0, -1310709, 0, 0, -1245184, 0, 0, -1245168, 0, 0, -1245158, 0, 0, -1245157, 0, 0, -1179648, 0, 0, -1179621, 0, 0, -1114093, 0, 0, -1114085, 0, 0, -1048549, 0, 0, -983040, 0, 0, -983024, 0, 0, -983013, 0, 0, -917504, 0, 0, -917477, 0, 0, -917476, 0, 0, -917475, 0, 0, -851968, 0, 0, -851949, 0, 0, -851939, 0, 0, -786432, 0, 0, -786403, 0, 0, -720896, 0, 0, -720894, 0, 0, -720874, 0, 0, -720867, 0, 0, -655360, 0, 0, -655358, 0, 0, -655345, 0, 0, -655331, 0, 0, -589824, 0, 0, -589822, 0, 0, -589806, 0, 0, -589795, 0, 0, -524288, 0, 0, -524286, 0, 0, -524285, 0, 0, -524273, 0, 0, -524259, 0, 0, -458752, 0, 0, -458749, 0, 0, -458737, 0, 0, -458723, 0, 0, -393216, 0, 0, -393213, 0, 0, -393204, 0, 0, -393203, 0, 0, -393202, 0, 0, -393201, 0, 0, -393200, 0, 0, -393187, 0, 0, -327680, 0, 0, -327677, 0, 0, -327676, 0, 0, -327675, 0, 0, -327674, 0, 0, -327673, 0, 0, -327672, 0, 0, -327663, 0, 0, -327662, 0, 0, -327661, 0, 0, -327660, 0, 0, -327659, 0, 0, -327658, 0, 0, -327657, 0, 0, -327656, 0, 0, -327651, 0, 0, -262144, 0, 0, -262135, 0, 0, -262115, 0, 0, -196608, 0, 0, -196598, 0, 0, -196581, 0, 0, -196579, 0, 0, -131072, 0, 0, -131055, 0, 0, -131054, 0, 0, -131053, 0, 0, -131052, 0, 0, -131051, 0, 0, -131050, 0, 0, -131049, 0, 0, -131048, 0, 0, -131047, 0, 0, -131046, 0, 0, -131045, 0, 0, -131044, 0, 0, -131043, 0, 0, -131042, 0, 0, -131041, 0, 0, -65536, 0, 0, -65535, 0, 0, -65534, 0, 0, -65533, 0, 0, -65532, 0, 0, -65528, 0, 0, -65524, 0, 0, -65523, 0, 0, -65522, 0, 0, -65520, 0, 0, -65519, 0, 0, -65518, 0, 0, -65517, 0, 0, -65516, 0, 0, -65515, 0, 0, -65514, 0, 0, -65513, 0, 0, -65512, 0, 0, -65511, 0, 0, -65510, 0, 0, -65509, 0, 0, -65508, 0, 0, -65507, 0, 0, -65506, 0, 0, 2, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 21, 0, 0, 22, 0, 0, 23, 0, 0, 24, 0, 0, 25, 0, 0, 26, 0, 0, 27, 0, 0, 28, 0, 0, 29, 0, 0, 30, 0, 0, 65537, 0, 0 )
         GDSC            4      ������������τ�   ����Ķ��   ����Ҷ��   ������϶   ��������϶��   ��������   ����������������   �涶     HD     �D     zE                                     	               	   $   
   ,      -      .      /      0      1      2      3Y2�  YYYYY8;�  V�  PR�  QY8;�  V�  Y;�  V�  T�  Y:�  V�  T�  YYYYYYY`GDSC                   �������������ӄ򶶶�   �����϶�                         
            3YYY0�  PQV�  -Y`GDSC   "      0   o     ����Ķ��   ����������������������϶   ��������������϶   ��������ض��   ����Ҷ��   ������������������Ҷ   ��¶   ζ��   ϶��   ������϶    �����������������������������Ӷ�   ������������ض��   ����¶��   ������������������޶   ���������������������Ҷ�   ����������Ķ   �������������Ӷ�   �������Ӷ���   ���������޶�   �������ض���   ��������������Ӷ   ���϶���   ����������Ѷ   �����������ض���   �����������Ҷ���   ����������Ҷ   ��������Ӷ��   ������Ӷ   ���������������Ŷ���   �����׶�   ����������������������Ҷ   ��������϶��   �������������Ӷ�   ����������������     �?          
   move_right     	   move_left         jump             characterSprite              axeCollision/AxeSprite        axeCollision   8               walking       default    
   axe_toggle                                                      	       
   %      1      ;      D      P      T      [      ^      _      g      k      z      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &     '     (   )  )   4  *   8  +   I  ,   Q  -   W  .   d  /   m  0   3YYY0�  P�  �  V�  R�  �  V�  R�  �  V�  R�  �  V�  �  QX�  V�  ;�  �  �  �  T�  �  T�  �  T�  �  �  T�  �	  �
  PQ�  &�  T�  V�  �  T�  �  T�  �  T�  �  &�  V�  �  T�  �  S�  .�  �  Y0�  PQX�  V�  .�  P�  �  T�  P�  Q�  T�  P�  QR�  &�  T�  P�  Q�  PQ(�  �  QY0�  P�  QV�  &�  T�  �  V�  �  P�  QT�  P�  Q�  �  P�  QT�  P�  Q�  �  P�	  QT�  T�  �
  �  '�  T�  	�  V�  �  P�  QT�  P�  Q�  �  P�  QT�  P�  Q�  �  P�	  QT�  T�  �
  �  &�  T�  �  V�  W�  T�  P�  Q�  (V�  W�  T�  P�  QY0�  PQV�  &�  T�  P�  QV�  W�  T�  PW�  T�  PQQ�  W�  �  T�  W�  �  T�  Y0�  P�  V�  QX=V�  �  PQ�  ;�  V�  T�  P�  Q�  T�  	�  �  ;�  V�  PQ�  �  P�  QS�  �  �  P�  R�  R�  R�  Q�  �  �   P�  R�!  QY`           [remap]

path="res://src/Actor.gdc"
            [remap]

path="res://src/axeonplayer.gdc"
      [remap]

path="res://src/player.gdc"
           ECFG      _global_script_classes�                     class         Actor         language      GDScript      path      res://src/Actor.gd        base      KinematicBody2D    _global_script_class_icons                Actor             application/config/name         Finding_Hyperion   application/config/descriptionD      9   Finding Hyperion is about a lumberjack losing their mind.      application/run/main_scene(         res://scenes/worldTesting.tscn     display/window/size/width      �     display/window/size/height      8     display/window/size/test_width            display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         expand  
   input/jumpP              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index          pressure          pressed           script         input/move_left8              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script         input/move_right8              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script         input/axe_toggle�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index   
      pressure          pressed           script         layer_names/2d_physics/layer_1         player     layer_names/2d_physics/layer_2      	   attackers      layer_names/2d_physics/layer_3      
   enviroment     layer_names/2d_physics/layer_4         land   layer_names/2d_physics/layer_5         all )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres  