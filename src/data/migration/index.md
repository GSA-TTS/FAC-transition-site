PK  �j�Z               word/numbering.xml��Kn�0�O�; �!��FE�� l�X������u 
U�U��oƓ�3_��8:atJƣ����	�����u8#�A3�F��#���|��B�9�}���.Q4%��6�"Gs�����:7���Y� ��R�,x�R�c4��)�0&%�B��h���R���FP^=jv�{��-���1B.C
F�\XW�T_Z�5d��!vJ����K6��}V�ho�Y4�;VW�`C�X"E�~�+Q t�)�qjr�B�i'T{��Nv)�zk<�V=�y������A�
l� As@_d�4t��
�4ffY';_���A�&uw��q|e��,oi��hoh
���������Ln �� �[ �~�((/9��Ǚ6Qσn n�J�sĪ)xZj���P��^Km���a =
d-�PK �p��  �  PK  �j�Z               word/settings.xml���r�0�����ѽ�!��0��h��Es��dI��:�$L��� ���W���~+��./���-�D*E��,�@SQ������X
�L
��1�u����֝2
G&�( ��*�"�*¡y��g,��к�.#��VK$����)���q�=F��"�KN��Fֻd�(("�O��S�v.o՜�F�4a�R��*h|.�� 9��!���s��
kظDs�j��JKD�q�[g�I<!�1xL��e�p�0�8�@C�---
# Metadata
layout: home.njk
title: Historic data migration
meta:
  name: Historic data migration
  description: Documentation about the data migration from Census to GSA.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Historic migration
    parent: Data
in_page_nav: true
---

# {{title}}

A critical part of the move of the Clearinghouse from Census to GSA was the migration of the data. GSA began collecting Single Audits in October of 2023; we completed migration of 98% of the data from Census in February of 2024, and the final 2% in July of 2024.

The GSA team treated this work as an act of [data curation](https://en.wikipedia.org/wiki/Data_curation). Instead of copying the data over "as-is," we instead worked to annotate and, where possible, improve the data through the migration process.

## Migration process

In the simplest possible terms: we re-submitted all prior audits collected at Census to the GSA Clearinghouse.

1. We began with the data from an old SF-SAC record from the Census data.
2. We constructed a new, virtual SF-SAC submission, using the [workbook templates]({{config.baseUrl}}audit-resources/sf-sac/) that auditors and auditees use for their data entry at GSA.
3. We submitted this virtual data collection form to the FAC.
4. Where the data fell short of our validations in manageable/measurable ways, we annotated the data and migrated it into the FAC.
5. Where an SF-SAC was too incomplete to consider usable, we set it aside for further processing.

This work was completely automated, from the analysis through to the annotation. All data was accounted for, regardless of whether it was annotated and accepted, or set aside.

We did our initial migration of data in February of 2024, and 98% of the data (approximately 277K records) were migrated successfully. The remaining 2% (roughly 3200 records) required further  processing, and those were integrated into the Clearinghouse in July of 2024. 

### Identifiers, old and new

Census had a system by which a `DBKEY` was assigned to each audit as it came in. The `AUDITYEAR` and `DBKEY` effectively formed a unique identifier. This identifier was **manually assigned** as each audit came in.

GSA's intent is that an audit's report identifier should be automatically assigned. Once assigned, will never change.

When migrating historical records, all audit report packages from Census were given a new-style report ID. For example, Berea College submitted an audit in 2023, and their audit had the record identifier [2023-06-GSAFAC-0000020471](https://app.fac.gov/dissemination/summary/2023-06-GSAFAC-0000020471); this clearly denotes the record as being collected by GSA. Their submission in 2022 was given the identifier [2022-06-CENSUS-0000091651](https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000091651), which clearly denotes it as a record that originated with Census. 

In constructing new-style identifiers for `CENSUS` records, we used the `AUDITYEAR` for the first portion of the id (e.g. `2022`), and the `DBKEY` for the last portion of the report id (e.g. `0000091651`). 

### Transforms and annotations

It is possible to see the annotation `GSA_MIGRATION` in some records at this time (last updated February 2024). The record of these annotations can be [downloaded as a CSV for offline analysis]({{'/data/download/migration/' | htmlBaseUrl(baseUrl)}}).


* [General data transformations]({{ "/data/migration/general-transforms/" | htmlBaseUrl(baseUrl) }})<br>These are transformations that were applied wholesale to files as data was migrated from Census to GSA.
* [Specific field transformations]({{"/data/migration/table-transforms/" | htmlBaseUrl(baseUrl) }})<br>These are transformations applied to specific portions of the data. Each table in the Census data required unique, field-by-field handling.


 �OZ�d̅aS.ҙ~ѽ��t{
8#����N��+��
rUP� `sL��ߠ8¡�q9���H��RC>���M�r�UP��V�퇖��}5�v�&�� �
`s�����<F�<�9�����4���`<�9�}l���m�帥���4v
��!���/��f��wV�E��k_�D�܍�q���Q8���[
�][��6�o�5��,2�����;�w�Tv_&9`��l����v�f_��-mmigk7!�w�_�Z��s�A{�U�V���z�6A�x�:)� ����z!�
�?G����#|l� PK D=�S@  G  PK  �j�Z               word/fontTable.xml��Kn�0�O�;�۔��H�A� �t�� ���!eŷ/e���A ++I��ɟ��ӛV�A����d�LI"�\�2'��,I�������i�e�d�5�'Qn|�YN�\F�g�����	��E
!~bI5�v
f�� _���H�i�!��F�u�����Eh%�-
�D��8%�Y�lY��	����5X�+�|O�si1X���G�8h��׸)�8B�B�s��"wh��>�>��q�NX�1(���ξ
���W�!�2���'2��WS
9�~�W<�V3��R��$_�*�8r�U�� �9e�^�`0�����|E�J=��ߵ����.�+pb�����D[���sh'p��>�����x
`�m�F�%G��8��#�~0
��}K�Fy�OC��m��r�k�mQ�46d`��Lv��4�;�w���miw���PK �c�u�  �  PK  �j�Z               word/styles.xmlݗ�n�0��`���MHB�Pi�u�Tu��]��1�"�-ہ����/ 	UH��~�<�~}|b.�^�x��BF���ܱ�"��Z������@*�!Č⩵�Һ��t��H���h*'	�Z�R|b�E8y�8��s�DJ7��N@,S~�X�A����خ�V�aS+tR ���l��˄�����]��.w�	�*�h
�90*#�eIK��tgTBV�-b���5�-�֛��y�5!a)��.﬈C���Qyt��~�r&	ZaLj�@U�s�-Cm��B�]&�w=�� �i�z���I�,���JE��}(�J@܇3���-�T�.:�s�XH�I*��١SK��8��o�},��t���vN�pt�m �� �& �~[{�rHx'�8�� � 
�R�;,�`f��@�(�r���5(��PV��K�v��;<�4V�4�OQ4�V�sϴ�`=��Zׂ�Vv=Ar��A�kI`�]SY��
J����*亥�V���"�]���2H'�F��TG�s`�_i�
�*V`y���

��F�
���9�<2Ԭ���Gs��5���~�gzRHp���cg�M��Y�����҉��<v�Ҿ�o���	���0ߢH��e�6���/��^l�c��3� �� Y�sX�����+g5�Ȕj�a�������̲�S�w��w�J�m�N3
s�N��=(���D�������Jd��{���Gd����y����Wc�b&���̷Qg�-uv|�����I|w�U�=�����o�?�أ�b�>���)��r��#vpP���������7��'��kՃ=Տ���Z��Iʧt�Zլ:޵���K��M!�)v8^�M�;p�,���_PK Zx8�`    PK  �j�Z               word/document.xml�\�n�8~�} �Aۤ�-�I�֝t�K��Noh��ACK�'����]O��琺�NZ���!ɏX�#yx��/�~Ib6��L:���� �e �������ô�i�c��Ag�����2 ��H
C�T�����=O�$\�e)��J�p��*������$�FLD,��
��Ftr��
�^"|%���2�ө��({�ی뺜S�#z
b��Lu$2]�%?��/�d��E̒�l7�n3Z���#��@s��LI�Ƨ'�e�8܂�Q���V�,g�p�V0�k@��}� ���R�BǷ��{�JLW���?A������!`/���!�2%@�3��� 8��W���b�5�@�P�fR��� k�r�j��C{�d����3hK8|�����f O�����0<칌#��p�+Q����4!<�J3`U"p])߈��ԗ�FT�ܷ
����D
���|��)x����	�������	Ly�޼S+�{�+~TO�v2�;E"
�cS�z<�(OCk,w� ��w
?�����loX��
D�abl2��qCo�����3�:�{�52���SH:j1I��k0<��7���-�l�27c���_WM��^��k��a��)��J��x�%M=��&R�Q�����7���-&*c)O��Ï[M� ��DF��2޵�f|�ښ��6�M�L�1�:��H�����čy���b���l"]�����|q,�,74R������$~�g"�
��D>j5���Œ�l��<n9�q9��h����"���>�|6fF��D�h1��!:m>I�D������3����M|��@V� ��(z�9�{�0�5��1Yu������Ay}W8�H�n�uٜkש
���&�m�	�<e��c�
b�s�;�a4){�9E]G���36 F5�0*Y�~����+SB�S����E��e��ZOE��ݣV���E��a
ۍ�W��Ȝ$&x�Np�y	��R]1�/��[��hy�ϝ<��MEG=�<H�sq%2w'��#�S�x���R����lA�X�ʼb�?��<�'t�]�$��M��&qB�48O�.�G��eRk1���D�)R!�����hMO5�F�_
R�W���[[��:S6�'[�Zo�ڜ�>K��Ԃ| m*�FB%zLZYAO�D2<FN	�wNU�m�+�䱙�֬�u���-ȫ7�^mN���w(�0њw�Oe������1�/U����1�
7���mN�����@�;m�R�w�L(�c8U�UD��TwY�K��#9�)�Pk�CQ����+�ME؟p
T���X=S�
m���=�}o 1PwٷRi�� �l0���ʱ
��>���
�͉�]�����I�.&)�{��K�����𸑛��*�n�
�j5	h�u$] �!��qJx$<�!p� ��Ɛ���9_�.�e<Ԑ$n.Vç� H�w��e�G厢�+T�ͫI�t/a$R��E��z����q�4� N/�R��
7J��y#7���Fm.z\T�,�뒣c�׹�	�n�ѡ��Z�:o$��VK�N�ø�;��}_�))*d�.z�!W�M���<+
("�m��C�����QnH��5Q\Fw��������Z��!�0���"����V;�K$�<CS�E���ȍ?�������׹O&c����(3���0F.��۶������P�9�į�<K��,�H���X�H@�V�>�j�i�@Ú(�w�����
���;
0�S
]fJG[c,�D޼�^lF�6W/��W�)7��@�&
�z��˓��^�q�\T�a�*x��5�S����}���uJ�������/�_Z>/Q`:�Ff��|��S�9Ǿ��zo�;�Ç��<&����Ç4��T�I4Q���/�ѫ�嗗���TR��u��L���Z�8\��FaeDC�j�X��ަ>T��
�`R���O�hf�qW�ٌ^m���AZ���G�iz�=
G�kˌNS�W<�r˺�!Z�ԕ
z�,b(�����)F���S�ˎ�9gǔ?�s̥�Q<@�ª�\��rZ�gl�bKBK���:��=�����۝���a}f������Pμ@h
�Hm���<I��m| d�ˀ������Ҁ^��	�J,�e�M���%�5�b�#k&�hm9#���7���L��m���Av�������rMV
"O���
��:����ZP{k��\�:K�B%�]�xjA�6?~���ks���S&˾oQbdS��!�|�Ul�a�]�`]��GMKw����+����r���Ԃ�Y�����<.O5�yE�J�7�x�讜��v�\N:�QY}(N2
�V#b��l}z}�������7��ei�����"։3n[�g�ul��:�w�D�������#���*�~9Oc���t|�ok�t���l�1� %署�W%�� �?,2I|�N�l'ev�}�ib��{W�ڌ^-�L5�^-(�|WS=d_B
�<&eJ��4 )��[N�Z t�zU�_ɸY;0T�c�l���م�QtHhuD��#�XP�4w�t*�WU]��������6W��]�3�1X�q' nb����Ё��;��<B&��X���o���4��Yڵ��u��U
�nu�ɢ疉��
=��{WOی^+��+��
|1+�v�_�O�מ��)�WG�lko���c�%���G��,I�/$�NZ�]\�橈] ��۵�HcP�ݪ�at[X0s��6��z}:"�C5�o��P5��;�Lx����Ԁ* '���
�� ������}C����{ZYqm"�,DA���rԥR��7�}��Mrz�>z�g��x=�k���4Rl��b�Y��ӌ��c�=���q�)�
��`(PR*��
���<�Xd���pE�Ŕ3�ʟ�����_PK h%�
[
  �\  PK  �j�Z               word/_rels/document.xml.rels��Mj�0�O�;��ײ�J��Md[�(���Z#!MJ}���$Ӆ��y�֛͌;�o�w���rH��=�
>����Țj=8B#Fؔ�4����>�BQA��ߥ��C�c�<Rzi\������|��*�_e�f@y�)�����
���?ٮiz�[g��ﴐ�j1��"+8�?��R���%"2���+�ٙCxZ�qĕ>�U\�9��%!�h��W��5 ��1xpz��>��7���PK � ���   ,  PK  �j�Z            
   _rels/.rels��;�0�p��;Mˀj�!uE� Q��CIx��d` ��h��g��v&7��xǠ�j �W�i���IY8%f���	:�jO8�\v�dB"q���s�S��V�� te2�hE.e�4y馮�4��?L�+�W
�a	�����H<xy���_�"��13����z����-�x�?PK -h�"�   *  PK  �j�Z               word/theme/theme1.xml�YKo�6��w toe�V�u�رۭM$n�i���P�@�I|��úa��m�a[�إ�4�:lЯ���)�ΣM��6I��� I��È�}"$�q�r.�,Db��4���A�B�BR��ǌǤmM������e��B��\�m+T*Y�m��2�yBbx6�"�
�"�}��o��z��bG���qlo�F�#h���֧�{�b%���]/��SdX�I�Dv�@���-���9TbX*xжj�ǲ�/�%SKh5�~�)�
��щ`X:���͒=翈��zݞS�� ���Rg�췜Δ�ʇ���5�֬�5���j��qW+���\��j+͍zߜ��E�;��J���+
���Օf��BF�t�22%d��5#���4f([ˮ�>V�r-���� 
.V4Fj��� �ŌM�5��'��'�RYHz�&�m}�`����_>{���?=���у G�6P]�q�S�����}��z�݋�_��R����g�����t�������o>�����C>���&9@;<��P��bb�Slā�1Ni�
+�̰�!U��L���{�wC1V� �F��ÅѦ�,�
�80
c���Ivw.��q�LM,�!���� �8 1Q(}��1�ݥ���-�	.�H��u05�d@��Lt�F��IA�w�7[wP�3�M�_EBU`fbIXōW�X�Ȩ1�����UhRrw"��å�H �q��&�[bRQ�:�sط�$�"��{&�
̹���{�G�Qg�:�#� )��6WF%x�B�9��K�}�u�ھM�М 铱0���z��&q��+�:��q�;���ϻqC�|���Q�� '�jf�Q/�ͷ�.>}���&��
�}s~ߜ��漬�Ͽ%Ϻ���36��S��2��&�ܐY��`�߇�l����$�a!��
��Hp�	U�n��dY�$J������wv?�`s��N/���j���rC�l�l�Y uA���i�5.��0' �R�㚥��J�5oB� ��JpV�hH̈��=g0
��S�bb��5����{&%��ɵ'ۋ������U��Z��I��i	�Q�d�i0
�����kq��UsV95w����j�0��M_��3��n3���`h&�Ӣ�r�C-��Вшxj��lZ<�cE�n��!�z7���N_�N�v�H�j��1�ʦ�̒���b�óq�C6�Գ�����4����5%�\8�6������(�ѶŅ
9t�$�^_������E�b�
�TW�?�[9����ڡ:�
!۪��fN]����>S�+��wH�	�ջ��o�p�M
Gd���٦������|��g&�y�ͯ�5}m+X}=N�k��f���ҝg~�M����/h�Txlv<��>*�y�x�U�_�8�[�q)���Z��<;j�n,q���^�ٮ����K���!�l�(>� �7�z3f��L`��Ef���b�d�rGL[:�w�Q�p�9������N. ��$l�LX�g�HI\?������J��gb�f�s|�E��b���ʛ]f��Ӻ��z����]Vx�6%9Tw�]A�ڳ�]� PK !Z��,  �  PK  �j�Z               [Content_Types].xml��Mn�0�O�;D�V��EUU�Y�]����O����;	�����e�ͼ�y$O�;�-f�1TjR�U���چU�>�� UC��ŀ��#���f��'�B�Uj͜�&�FTƄA�&f,Ǽ�	��Pߍ�����xĭ��M�������p�ZW
Rr� 
�3U��D<`�g���m��`FG�2��jhmݞ �Jm»L&�������xi)�c�S��d�ޕ�̲;�~@�7�b��J}R��#�A��k �6h|#^
X:�L�˃B��_b��e�^�W<�p�/�G��ze��tX'�H����PK 3��,  -  PK   �j�Z�p��  �                   word/numbering.xmlPK   �j�ZD=�S@  G               �  word/settings.xmlPK   �j�Z�c�u�  �               b  word/fontTable.xmlPK   �j�ZZx8�`                 Y  word/styles.xmlPK   �j�Zh%�
[
  �\               �	  word/document.xmlPK   �j�Z� ���   ,               �  word/_rels/document.xml.relsPK   �j�Z-h�"�   *  
             �  _rels/.relsPK   �j�Z!Z��,  �               �  word/theme/theme1.xmlPK   �j�Z3��,  -               $  [Content_Types].xmlPK    	 	 B  �    