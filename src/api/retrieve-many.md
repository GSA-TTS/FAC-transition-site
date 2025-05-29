PK  �j�Z               word/numbering.xml��Kn�0�O�; �!��FE�� l�X������u 
U�U��oƓ�3_��8:atJƣ����	�����u8#�A3�F��#���|��B�9�}���.Q4%��6�"Gs�����:7���Y� ��R�,x�R�c4��)�0&%�B��h���R���FP^=jv�{��-���1B.C
F�\XW�T_Z�5d��!vJ����K6��}V�ho�Y4�;VW�`C�X"E�~�+Q t�)�qjr�B�i'T{��Nv)�zk<�V=�y������A�
l� As@_d�4t��
�4ffY';_���A�&uw��q|e��,oi��hoh
���������Ln �� �[ �~�((/9��Ǚ6Qσn n�J�sĪ)xZj���P��^Km���a =
d-�PK �p��  �  PK  �j�Z               word/settings.xml���r�0�����ѽ�!��0��h��Es��dI��:�$L��� ���W���~+��./���-�D*E��,�@SQ������X
�L
��1�u����֝2
G&�( ��*�"�*¡y��g,��к�.#��VK$����)���q�=F��"�KN��---
layout: home.njk
title: Retrieving many results from the FAC API
meta:
  name: Retrieving many results from the FAC API
  description: How to use pagination
---

# Working with Large Result Sets

The FAC API contains more than 200,000 audit submissions and millions of award records. Some endpoints�such as `federal_awards` and `findings`�can return large amounts of data.

To keep the system fast and available for everyone, the FAC API enforces limits and encourages users to make efficient queries.

---

## Request Limits

You can request up to **20,000 records** at a time. However, we recommend keeping queries focused and using pagination to retrieve larger sets in manageable chunks.

---

## Efficient Querying Strategies

Whenever possible, narrow your request by using filters like `audit_year`, `cognizant_agency`, or `auditee_state`.

Instead of pulling tens of thousands of records in one query, break your request into smaller, more specific queries. For example, fetch records week-by-week or by agency.

---

## Pagination Parameters

Use the following query parameters to page through large results:

| Parameter | Description |
|-----------|-------------|
| `page` | Specifies the page number to return. Starts at 1. |
| `limit` | Number of records per page (max: 1000 per request). |
| `ordering` | Sort results by any field (e.g. `audit_year`, `auditee_state`). Use `-` prefix to reverse (e.g. `-audit_year`). |

---

## Example: Retrieve Awards by Cognizant Agency

This example shows how to retrieve `federal_awards` for a specific `cognizant_agency` in a given year by first filtering the `general` endpoint:

```python
import requests

FAC_API_BASE = "https://api.fac.gov"

def retrieve_cog_awards(year, agency_code):
    awards = []
    general_url = f"{FAC_API_BASE}/general"
    federal_awards_url = f"{FAC_API_BASE}/federal_awards"

    # Get all audit report IDs where the agency is cognizant
    general_params = {
        "audit_year": year,
        "cognizant_agency": agency_code,
        "limit": 1000,
        "page": 1
    }

    while general_params["page"]:
        response = requests.get(general_url, headers={"X-Api-Key": "YOUR_API_KEY"}, params=general_params)
        data = response.json()
        for record in data["results"]:
            report_id = record["report_id"]
            fa_response = requests.get(
                f"{federal_awards_url}?report_id={report_id}",
                headers={"X-Api-Key": "YOUR_API_KEY"}
            )
            awards.extend(fa_response.json()["results"])
        general_params["page"] += 1 if data["next"] else 0

    return awards
```

---

## Sorting Results

You can sort data using the `ordering` parameter. For example:

- `?ordering=audit_year` � sorts oldest to newest
- `?ordering=-audit_year` � sorts newest to oldest

---

## Summary

- Use pagination (`page`, `limit`) for large results
- Use filters to keep queries efficient
- Use `ordering` to control sort order
- Always request manageable result sizes

Need more help? Visit [Getting Started]({{ config.baseUrl }}api/getting-started/) or check the [API Dictionary]({{ config.baseUrl }}api/dictionary/).


Fֻd�(("�O��S�v.o՜�F�4a�R��*h|.�� 9��!���s��
kظDs�j��JKD�q�[g�I<!�1xL��e�p�0�8�@C� �OZ�d̅aS.ҙ~ѽ��t{
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
s�N��=(���D�������Jd��{���Gd����y����Wc�b&���̷Qg�-uv|�����I|w�U�=�����o�?�أ�b�>���)��r��#vpP���������7��'��kՃ=Տ���Z��Iʧt�Zլ:޵���K��M!�)v8^�M�;p�,���_PK Zx8�`    PK  �j�Z               word/document.xml�]�r۸~��F��8�%ي���S2v��2��n��z��� r%"&	 ZV��;�OxOR,@R?���.g�D�����X| ��^&1� ��LG���N�A�P��Q������
OC�F����'�~>e�'�f%�z��NdL6��uA�uOf��ĩT	7�T��	W�y�
d�q#&"f���t
1r��U:,Dt(���`���NE �_YBթ�9.n���W�{���D�Ki�]��Ĩrq�C\$q�o�թ-T|n�#�}Es��L� ��W�}b%qw��(�*Q���,�$�"�Ġrl���ٺ
М��,��q��I��Dq��~�x���D--ސ`K�\U
yAĕ)�w����g<���2��Z�!)|�x�TR�M-����.��`)m��I{�d�-�}�.�V,pw���	8�6��
��n2���~���J�(�A=��s���݀�T��u��U9�ˢ���u�<p����/.�?c��·��N����!�~������0�yl��r��.��
3�������n&;Q�w���KcK_p���//�)�����}��#���s��3�%�͂G���H|z�� 0
�? .{*b_ ����s"��I��J̢�b���:�����Qh�"��<7����������>5�
��hq
�}�ʓ�y�D'C�X�T�pOVO���Q��1(��X���޽*��t�+���i�D�g�[�_��Ъ�3S�A]@�I���L�g��D�P����B�Pb����H&�K?�S����մVC�j�01�[0J�B��t�l�Uqͦ�6����8|�O^Q4��֨Z�"eT	>�h*�����B�TKy��蠵�֪�YU:P"C�m�~�sf$�50�o"u!-�QkI�%��$�����PZC�
)+�n�
nQ\:���I�s�8�D�5W3��/ƺ����k��L
�#�(ݨ�*�{�"�,��D<e���m[�y(��$�
iƭ�J�wt'r����Ў��B�c�2i�I���o��y1��x
!(��z����
Z��c�3��*0�JY�L�'2�B���ޣhϨ�<)����t�}H�!�c�BHؔk㴖_p�I�v�.@-d
۫L�5���+�0�lp�]�l �q4�4�~n��H\`�kJ�&��ϩ6")�^PE�a����@�Bi�*J7G��l�k��u���o��|���B�!U�nT��e�|��50ϰ~�`���"�}��q��3#�!��}�6��ˀ�C�P��m(�N=t}��WW�V�C�9�b���Hq��F.��<='����QmiR(�SE�i}�U I��*J���ϫ��?��\��<5��Y/JQSE�J�cc� �~�eRka��m�r��-�(��&��;����=v�>v����o�q g���Ssf��4X�kR� δ��=&ٱ��n����J�"w��q�
l�3�&���a�;)"^�De
.�]l�	��ہHm��
;�Xg��+֊�@>�'Z�LU�λ�E��8�]y[!i-�[ ��ѺD�ݖZ��R�U�,Y��8	`AP  -�Z ����5�����c9/)��*mDz
��lJ注�~-V�R\�>h��:(5����t��
;^�ce_(�!YZ�f�����=�p��/l��tl��ԏ�@;��<l�'��~> Wi���p}�a�=�JN����
ܲ
l�7�n��6�V�/�l���#��D��yl�m
8(s8s��T����?]0kqȶ�7�mrj��md��1�Lť�!����+��b�&�A�yl2Mba�һuPj��i�g�ޞv�V֢k}V�G�CǱRT͖b��R�(�w���$ ӑ�k�W�%0�ւ�:Z��O�>��������wTr��L1-��7l�=��Q�Z�N��h��:(5������D$߯}H��N�d~��fY�d�`R(��koT����O^��>g#��_si��߹��~�g�7�Ao&/|E�$K��B�yn�*�:��RDmaX�]����C�O1�y�<F�ٟ��:��P�y-�Z��g��-�S�J?�zޫ~����m-�Я�nm���t�eV��<f��{	��8.^HW���5�G�� ��1�YEP�S��l-_�V�`G��"��#rY��~u9��χ��ڦ5Y��&ԛc	�J M���븻��l�{'�2Y��&ʸ���"���v�+�P��uI�D���U�摈a#���i�P$z�����.�^�d��F���Cofk���fp;.֣Ͼ
��=�D�G������߿uc����\m���z�ު�)�!Y��?���7e�I���@�㬽_T���xᚊE~��S3i襇B��L�Nű*䋄{��7��������?P�����+}���zZ���sux��SV��k�Ɲ����L2����f��n�?�[zpi 
�V\}?~5�!��e��h���2b�LLW�ԶX���w(�	YʜJ�$��W{ BQ���h��c�@�e�)��O��n�\�dykR(5�l�wϽ�/��-@(��d	`R(5��-���q����G�;T˗��oĬ}ڍ"��O��%�R��.?-r��?���;��L�!~��H���QT���k�w������m@y��+)��G������Pj=��z�$\Q���~K-�A�y�b�}�he'�-�u���
W��*��6R��汏�������ڱ�"�d�? {e�i��{vCT�B���0�󅮾쾲�� L�O$��8h��:(5�}�="����B
�>�c�1\�����T�z�Ὂ���D�3v��ؿ�;����;r� {P��,'����Sܗ��c렴��b��.�BxwX��1�:��/��v���@^n o$>}���q#�z9'����붑�)� ����|>���60����ˬA\y�(��s>�S?'��$v���'o�
�N�H��(ឬ8v��z�D����"$�@C`|�lv���F����{N���X*%�C���⢸�l�7�w�[�f�󹭂-O<>�YQy�땐I��ѠT�ٛ<y��Pǝ���)／��
w� O�m>�/PK .g��  I�  PK  �j�Z               word/_rels/document.xml.rels��Mj�0�O�;��ײ�J��Md[�(���Z#!MJ}���$Ӆ��y�֛͌;�o�w���rH��=�
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
X:�L�˃B��_b��e�^�W<�p�/�G��ze��tX'�H����PK 3��,  -  PK   �j�Z�p��  �                   word/numbering.xmlPK   �j�ZD=�S@  G               �  word/settings.xmlPK   �j�Z�c�u�  �               b  word/fontTable.xmlPK   �j�ZZx8�`                 Y  word/styles.xmlPK   �j�Z.g��  I�               �	  word/document.xmlPK   �j�Z� ���   ,               L  word/_rels/document.xml.relsPK   �j�Z-h�"�   *  
             �  _rels/.relsPK   �j�Z!Z��,  �               q  word/theme/theme1.xmlPK   �j�Z3��,  -               �  [Content_Types].xmlPK    	 	 B  M     