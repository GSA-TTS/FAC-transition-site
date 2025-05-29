PK  ³j¼Z               word/numbering.xml¥”KnÂ0†OÐ; ï!µˆFEí¦»¶ l“Xø¥±Ããöu 
UÒUÿoÆ“ß3_”ì8:atJÆ£˜¸¦†	¥äëóu8#çA3Fó”¹#ËÅÃ|ŸèB­9†}ƒ€Ð.Q4%¹÷6‰"Gs®ÀŒå:7øð‰Y¤ ·…R£,x±Røc4‰ã)©0&%ê¤B• hœÙøR’˜ÍFP^=jvÉ{–¬-×þ”1B.C
F»\XWÓT_Zæ5d÷×!vJÖûö¶K6†°}VòœhoY4”;VWç`CÇX"E—~æ¬+Q tƒ)ÝqjrBîªi'T{¶Nv)äzk<ÞV=úy©·¢“‹¯Aå
lÙ As@_d‚4tËÙ
è4ffY';_‘˜€Aµ&uwýÙq|e—,oiÙÿhoh
ÛÚý±íâŽŸîLn Óû ³[ å‡~Œ((/9‚ÝÇ™6QÏƒn nëJÂsÄª)xZj®ÀíPþ•^Km‰šÄa =
d-¾PK „pÏ£  š  PK  ³j¼Z               word/settings.xml¥–Ûr›0†Ÿ ïàÑ½Ã!¶›0Á¹h¦íEsåôdI€Æ:$Lüö• ¦W–þÕ~+ÖË./¯Ÿœ-ŽD*E’‡,ˆ@SQæà÷Ç÷åX
†L
’ƒ1àuûå¥É±Ö2
G&ã( •µ*‹"ƒ*Â¡yŠg,¤æÐº­.#õ¡VK$¹‚–î)£ö¥q¼=Fæ Ö"ëKN‘–---
layout: home.njk
title: Retrieving many results from the FAC API
meta:
  name: Retrieving many results from the FAC API
  description: How to use pagination
---

# Working with Large Result Sets

The FAC API contains more than 200,000 audit submissions and millions of award records. Some endpoints—such as `federal_awards` and `findings`—can return large amounts of data.

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

- `?ordering=audit_year` – sorts oldest to newest
- `?ordering=-audit_year` – sorts newest to oldest

---

## Summary

- Use pagination (`page`, `limit`) for large results
- Use filters to keep queries efficient
- Use `ordering` to control sort order
- Always request manageable result sizes

Need more help? Visit [Getting Started]({{ config.baseUrl }}api/getting-started/) or check the [API Dictionary]({{ config.baseUrl }}api/dictionary/).


FÖ»d²(("ýOðÐSâv.oÕœÛFŒ4aîR˜Š*h|.Í« 9þë!Žœ…sš
kØ¸DsÖj¤ÆJKDŒqê[gˆI<!1xL¹ÂeÌp©0¾8®@Cì »OZ‹dÌ…aS.Ò™~Ñ½†út{
8#ŸçþŠNªâ+‚ó²µ
rUPÛ `sL¢Áß 8Â¡˜q9©œ¯H˜ÂRC>©¹ëŸMâ«rÙUP‘‘Vþí‡–µË}5‡vö&ëû é
`sàé€Èç<Fä<Ï9ßÇÙúÁ4€…æ`<á9Â}l¥á¸mÊå¸¥÷õ¨4v
¢¶!ƒ­›/˜°föîwVªE“¡k_ÓDÞÜqµëÆQ8—¬[
È][º˜6ïoª5ž,2ºˆÉôÎ;‘w¨Tv_&9`´¬lâùÖí°›víf_¦½-mmigk7!—wº_ŒZ´³sA{µUÐV£¶ÚzÔ6AÛx­:)¢ —†°ôz!“
Á?GûÔç#|lÿ PK D=µS@  G  PK  ³j¼Z               word/fontTable.xml¥•KnÛ0†OÐ;ÜÛ”ÔHËAÑ Ýt×ö ’’ó…!eÅ·/eëáÚA ++IýßÉŸÃíÓ›VÉA —ÖädµLI"³\š2'ÿ¼,IâÊ‘“£ðäi÷eÛd…5Á'Qn|¦YNª\F©g•Ðà—Ö	ƒ…E
!~bI5à¾v
fµƒ _¥’áH×iº!Ææ¤F“uˆ…–­·Eh%™-
ÉD÷è8%ïYòlY­…	§Œ…Š5Xã+é|OÓsi1XõÃG“8hÕÿ×¸)Ù8B÷B«s¢Æ"wh™ð>Ž>Ÿƒq•NXÀ1(¦”ðÎ¾
Ò˜ÖW !÷2æîí„'2®…WS
9‡~ÉW<ÞV3ÖóRïä$_¢*Ô8r‚U€¡ ¨9eÙ^ð`0˜™—“ì|EâJ=šÔßµ³«ôÊ.¿+pb¤•Ÿ£ýD[»Ñîsh'põõ>Àú°¹ðx
`âmƒFå%Gòû8›#û~0
Àï}KøFy×OCÃ¸mÊïrâk«mQë46d`§†LvÝå’4™;Ëw” ÝmiwëìþPK  cœu·  ·  PK  ³j¼Z               word/styles.xmlÝ—ínÚ0†¯`÷€ò¿MHBÆPiÕu›TuÓÚ]ÀÁ1Ä"±-Û²«Ÿ/ 	UH‘Ö~û<Ç~}|b.®^’x°ÂBF§ÖðÜ±˜"º˜Z¿ŸïÏÆÖ@* !ÄŒâ©µÁÒººüt±žHµ‰±h*'	šZ‘R|bÛE8yÎ8¦ºsÎDJ7ÅÂN@,S~†XÂA‘‰‰ÚØ®ãVaS+tR Î‚“l®ŒË„Íçáâ§ô]âæ.w¥	¦*‹h
ë90*#ÂeIKúÒtgTBV¯-b•Äå¸5ï-°Ö›‘Äy 5!a)µõ.ï¬ˆC§ƒ€Qyt™Â~Ìr&	ZaLjÔ@Uìs»-Cm²ÕBÆ]&’w=™ ±iÎzè¹ëÏI§,®´—JE•}(¡J@Ü‡3´Äá-ÐTÉ.:¥sXH¶I*ÚÙ¡SK—§8ÞÒo£},åÛt÷ûÐvNàptÀm ‚ã ã& á—~[{îrHx'¨8¤¬ Ý 
äRÂ;,ª`fªŽ@³(·rô£ñ5(×ÑPV­KývÑà;<‡4VÒ4ÅOQ4‹VösÏ´÷`=‰™Z×‚€Vv=Ar§AªkI`Ç]SY·
JþÑæè*äº¥åVîÛì"°]Ÿ¯·2H'¬FÄÄTG÷s`_i¬
*V`yÝÙ

²®F¨
×î„9¨<2Ô¬ë»ÞÿGs°³5†¹§~§gzRHp¹šÊcg®M¼‚YŒ÷ÐÏÆÒ‰Ÿ<vˆÒ¾ˆoÌý£	ŽòŽÁ0ß¢Hþ eï6 öÂ/ªÍ^lÎcþ¸3¤ óƒÞ Y³sXàŸË¬+g5§È”j§a®°Îý¡ë˜õÌ²ÁSËwœ×w¾JèmúN3
sÛNöÕ=(ªû¡Dõ‚®¢ÎêäJd¯å¨{õ£ÞGdï ÈÞûy¼¯±ÛWcÄb&ª¼õÌ·QgÇ-uv|ñýƒâûI|wÜUü=±ƒìÓÛoÛ?Ø£ƒb>”Øþ)Åîrƒè#vpPìàÿ›ÔÂþñŸ‰Ò7¡Æ'³¾kÕƒ=Õ¿ƒŒZ¤½IÊ§t¦ZÕ¬:Þµ žÛKÑþM!µ)v8^ËMÒ;p“,Ÿäå_PK Zx8•`    PK  ³j¼Z               word/document.xmlí]ÿrÛ¸~‚¾F™é8©%ÙŠíäÔS2vœä2—¦nœôz“¹± r%"&	 ZVÏÜ;´OxOR,@R?û÷.g¨DÀ‚ü°»X| ‰ïŸ^&1» ¥…LGÝÞN‡AÈP¤³Qçý»ÝÇ¦
OCËFèÎÓ'ú~>e'f%¤z˜£NdL6ì÷uAÂuOfÚÄ©T	7öTÍú	WçyÖ
d’q#&"fÑììt
1rÔÉU:,Dt(©åÔ`‘¡œNE Å_YBÕ©×9.nÙÕØWÛ{©ŽD¦KiÉ]¥ÙÄ¨rqÛC\$q™ožÕ©-T|n›#‰}Es©ÂLÉ ´¶W}b%qw§€(¢*QçÖë,ï$á"­Ä rlªêîÙº
Ðœ¨åƒ,±ÐqñI¯ÅDqµ¸~üx®–ÏD--Þ`K™\U
yAÄ•)Äw‘ËàÂg<½à•2‡³Zê¼!)|¦x²TRýM-»»³¡.§Ï`)mö¿I{©dž-Õ}ï.ÒV,pwÿÛ®	8ø6¯
àòn2ú¶äª~›œƒJŽ(ýA=†ës¾ë—Ý€»T™Àu§üU9öË¢¨ÁŽuÈ<p¹óÄö/.ð?có¡ížÂ·£ÎNñë—Ž!¾~ñäú¥·Ç0åyl¾’r¢Ö.îî
3®ø«°ººën&;Qøw½KcK_p¬»Ó//¿)èëŸÁ‘}ªó#°ö©sÊù3™%ãÍ‚G¡«ÏH|zñ 0
? .{*b_ †©©—s"‘I½¼JÌ¢ºbÁÌÒ:™ûËçÓQh§"¶©<7²ÊÄÀ•—Œò¬ÝÛ>5 
‡hq
ì}Ê“·y…D'C¤X‚T”pOVO…ÒæµQÀÿ1(ï‹Xœ¨âÞ½*¨Ûtð+ºº®i…D÷gÖ[¿_¥¸ÐªÄ3S A]@çI·ÛÅLÆgõ÷DÀP­¡´†BÊPb¾¹²H&ÐK?žS´š‡­Õ´VCÊjŒ01Ù[0JÀB“ðtÁlºUqÍ¦Ê6¯‰€½8|ÆO^Q4ª½Ö¨Z£"eT	>¤h*û­©´¦BÊTKyÒðè µªÖªˆYU:P"C‚mÈ~sf$Ë50«o"u!-éQkI­%‘²$¢ôÛãÖPZCù
)+ønÕ
nQ\:îäûIªs§8ÂDì5W3°±/ÆºìŒ¦èk©¢L
¥#ª(Ý¨‹ï–£*Ø{å"Õ,ÁÁD<eƒm[ãy(Óù$×
iÆ­ßJ¬wt'rÊøœ«ÐŽØ©BÝc§2i˜I‘ýûoÿÑy1®Ùx
!(Ÿ¹zì§Ö
ZƒÐc›3°õ*0¹JYìLƒ'2·B°–Þ£hÏ¨¶<)”Ž©¢t³}H†!”côBHØ”kã´–_póIÌvø.@-d
Û«L…5›Øð+‰0Þlpµ]®l ¦q4¦4Ë~ní—H\`÷kJ€&©êÏ©6")”^PE©a£œÝª@’Bi—*J7GÁ÷lÌkýœu¦¯o¤¨|ª°’Bé!U”nT¾ŸeÎ|œé50Ï°~ð`àÃÝ"Œ}ð€qÛÕ3#è!Š}ü6›ƒË€ëCàP®è±m(ØN=t}Ž«WWØV¬Cù9ð±­bÚø˜HqÂÃF.š¢<='Ù÷ïîQmiR(íSE©i}ÿU I¡ôˆ*J·õýÏ«±Î?¬ç\ £<5Š˜Y/JQSE™JÍccŠ Å~eRkaûßm–r¥äœ-ì(½Š&‹¢;ŸŠØà =vÄ>vÄØÙ¸o³q g©øÄSsfûò4XØkR™ Î´±ú=&Ù±·ün”šÇï¾Jµ"wšåqŒ
lÀ3¶&’¹¶aª;)"^ŒDe
.š]l³	Î®ÛHm«Ç
;¦XgëÍ+ÖŠ½@>ì’'ZÓLUÌÎ»“EÿÑ8¬]y[!i-­[ ¥æÑºDãÝ–Z­ƒRó¨Uïž,Y€û8	`AP  -ßZ ¥æñ­ï5¸™©©Œc9/)«Ë*mDz
×ÙlJæ³¨˜~-VáR\Ë>hùÙ:(5Ÿý²t’ì
;^®ce_(ª!YZôf€»Ëßê±=£póÕ/lŒ¾tlÕ÷Ô@;ÿë<lš'«Ú~> Wi®p}€a»=šJN–Œ½­
Ü²
l„7ñ•¡n†œ6ÆVÂ/‡l×Öæ®#ÝûD›¡yl¯m
8(s8sÊT¯öàð?]0kqÈ¶ 7ëmrjëä™mdÆÝ1³LÅ¥·!üœ”å»+¨¶bË&×A©yl2MbaÐÒ»uPj½‹ižg­ÞžvèVÖ¢k}VÎG°CÇ±RTÍ–b­ƒRó(Öw‘Ðå$ Ó‘œkùW«%0×Ö‚ã:Z¾œO¸>Ÿ†óœÍÄ¤ûwTr÷’L1-çæ7l=¶ÙQò¸ZƒN’¾hùÞ:(5ïÇÙÂD$ß¯}H–à½N‘d~ÌàfYó‡dù`R(‘¥koT½‡ÏÎO^ž>g#öç_siþŠß¹ÔÃ~Ÿg¢7åAo&/|EÍ$Kþ’B©ynÓ*’:³RDmaX´]¬©°×C¸O1ôyØ<F—ÙŸÇØ:‚¿Pµy-‚ZÄêg¹Š-²SïJ?¯zÞ«~‘‡®›m-‹Ð¯Ànmõ¬t¢eVë Ô<fÕõ{	†ñ8.^HWà¯Ž5›G ü ßõ1¡YEPÔS²”l-_íV`Gø™"¶Í#rYñó~u9åÏ‡ŽìÚ¦5Yú¶&Ô›c	øJ M÷æÂë¸»‰ùlœ{'‰2Y‚¶&Ê¸¾¡™"ÀÍãvÜ+‚Pî‘åuI¡D–¨½Uáæ‘ˆa#øú°iâ¿P$zöšÇù–.Ô^ÈdªÁF¹åÔCofk…¯Øfp;.Ö£Ï¾
þÕ=ÌD÷G¨âÿÿóßß¿ucéŸÿì¯\mû•×z´Þª÷)¶!YùÛ?æÚÏ7eï£–éIŒ›Ç@—ã¬½_T‰ÓóˆxášŠE~”½S3iè¥‡BþãL„NÅ±*ä‹„{ŠÐ7“¬®”žŸÝÔ?P»™ôôà+}²¾zZ©ûèsuxåóSVî‘å¨k·ÆÃŠÍÑL2¼ü‘ŒfšÉn—?ï[zpi 
·V\}?~5¾!ÙÍeÂÿh°Ëþ2b»LLWÎÔ¶X™±í™w(¶	YÊœJÍ$¸‹W{ BQùšÇhÇcŠ@’e®)¡´O–”nØ\ûdykR(5l¾wÏ½‹/®ø-@(öûd	`R(5Â-¿ƒ¬q•ãÊýGÝ;TË—¶«oÄ¬}Ú"¡»O–Ð%…Ró¸×.?-r´ò‚?ûý·;õÕLÆ!~¡ÐH–ÂÜQTÏæñ°kÀw¿Ž¼Ç‘÷m@y²œ+)”šG…×É ¤Pj=‰ñzž$\Qü˜Â~K-ÖA©yÔb×}õhe'‘-ÿu±íò
W÷Ý*Œµ6RÔÏæ±ùò£ï¦Ø®Üí¥Ú±"ØdÊ? {eàiñŠ{vCT—Bëƒòœì0žó…®¾ì¾²‘÷ L‹O$÷â8hÉÐ:(5}ú="ˆ³§ìŸB
Ã>¼cü1\ÙúüÝÂTÌz®á½ŠÙÕÏDæ3vµÏØ¿;çŽÑú€;r‹ {PÀÝ,'¬òôïSÜ—à åcë ´ÆÇb¿ý.ÍBxwX××1¼:Âí/ŽÜvî©·@^n o$>}ýéq#÷z9'Ò™ÔËë¶‘¯)Ì ­“¹¿|>áÆõ60Š‹íìË¬A\yÉ(Ïís>äS?'Ñâ$v»Û”'oó
‰N†H±©(áž¬8vßþzíDðÊûÀ"$¬@C`|þlvúÉˆFÝýÇ{NþÜþX*%­C´¡Žâ¢¸ûlö7Žwì[ßfßó¹­‚-O<>åYQyêë•IéšâÑ TØÙ›<y·ÈPÇã´‹‡)ï¼µ‡
wÊ Oìm>ù/PK .g÷µ  I   PK  ³j¼Z               word/_rels/document.xml.rels­’MjÃ0…OÐ;ˆÙ×²ÓJ‰œMd[Ü(òø‡Z#!MJ}ûŠ”$Ó…—ï‰yóÍŒÖ›;ˆo±w¤ ÈrHÆÕ=µ
>«ÝãˆÈšj=8B#FØ”ë4§šØõ>ŠBQAÇìß¥Œ¦C«cæ<Rzi\°š“­ôÚ|éå*Ï_e˜f@y“)öµ‚°¯
Õèñ?Ù®izƒ[gŽ‰ï´œj1êÐ"+8É?³ÈRÈû«%"2§åÆ+ÆÙ™CxZ¡qÄ•>“U\¬9ˆç%!èhÒÜWˆ‹5 ñ²è1xpzŠ“>·—7Ÿ¼üPK  «ëñ   ,  PK  ³j¼Z            
   _rels/.relsÏ;Â0àp‡È;MË€jÒ!uEå Qâ¦ÍCIxôöd` ÄÀhû÷g¹ív&7ŒÉxÇ ©j è¤WÆiçá¸ÞIY8%fïÁ‚	:¾jO8‹\vÒdB"q‰Á”sØSšä„V¤Ê te2úhE.eÔ4yé¦®·4¾À?LÒ+±W
a	øíÇÑH<xyµèò_‰"‹¨13¸û¨¨zµ«Âå-ýx‘?PK -hÏ"±   *  PK  ³j¼Z               word/theme/theme1.xmlíYKoÛ6¿Øw toeÙVêuŠØ±Û­M$n‡i‰–ØP¢@ÒI|Úã€Ãºa‡Øm‡a[Ø¥û4Ù:lÐ¯°¿–)›Î£M·­6Iýþï Iùò•Ãˆ¡}"$åqÛr.Ö,Dbû4ÚÖíAÿBËBRáØÇŒÇ¤mMˆ´®¬øÁe¼¦Bô±\Ãm+T*Y³méÁ2–yBbx6â"Â
¦"°}€oÄìz­¶bG˜ÆŠqloFÔ#h²´Ö§Ì{¾b%Ó‰]/“¨SdXÏIäDv™@û˜µ-ãóƒ9TbX*xÐ¶jÙÇ²×/Û%SKh5º~ö)è
¯žÑ‰`X:ýæê¥Í’=ç¿ˆëõzÝžSòË ØóÀRgÛì·œÎ”§Ê‡‹¼»5·Ö¬â5þüj§ÓqW+øÆß\À·j+ÍzßœáÝEý;ÝîJïÎð+
øþ¥Õ•fŸBFã½tÏ22%dÄÙ5#¼ðÖ4f([Ë®œ>VËr-Â÷¸è 
.V4Fj’ö ×ÅŒMà5‚µ'ù’'–RYHz‚&ªm}œ`¨ˆäå³_>{‚Žî?=ºÿËÑƒ G÷6P]Ãq S½øþ‹¿}ŠþzòÝ‹‡_™ñRÇÿþÓg¿ýú¥¨tàó¯ÿñôñóo>ÿó‡‡ø†ÀC> ‘è&9@;<ÃÈPœbbªSlÄÄ1Nièž
+è›Ì°×!UÞÐLÀ«ã{…wC1VÔ ¼Fàç¬Ã…Ñ¦ë©,Ý
ã80
c·ƒñ¾Ivw.¾½q¹LM,»!©¨¹Í ä8 1Q(}Æ÷1Ý¥´â×-ê	.ùH¡»u05ºd@‡ÊLtF—‰IAˆwÅ7[wP‡3ûM²_EBU`fbIXÅWñXáÈ¨1Ž˜Ž¼UhRrw"¼ŠÃ¥‚H „qÔó‰”&š[bRQ÷:´sØ·Ø$ª"…¢{&ä
Ì¹ŽÜä{ÝG‰Qg‡:ö#¹ )ŠÑ6WF%xµBÒ9ÄÇKÃ}‡u¶Ú¾MƒÐœ é“±0•áÕzœ°&qÑá+½:¢ñq;‚¾Ï»qC«|þí£ÿQËÞ '˜jf¾Q/ÃÍ·ç.>}û»ó&ÇÛ
â}s~ßœßÅæ¼¬žÏ¿%Ïº°­´36ÑÒS÷ˆ2¶«&ŒÜYÿ–`žß‡Ål’•‡ü$„a!®‚
ÎÆHpõ	UánˆãdY°$J¸„«…µ”wv?¥`s¶æN/•€Æj‹ûùrC¿l–l²Y uA”Ái…5.½ž0' žRšãš¥¹ÇJ³5oBÝ œ¾JpVê¹hHÌˆŸú=g0
Ë‘SÓbbŸ–5ûœÆñ¦{&%ÎÇÉµ'Û‹ÕÄâê´­U·îZÈÃIÛÁi	†QüdÚi0
â¶å©ÜÀ“kqÎâUsV95w™Á‰jË0§ÊM_¥Ä3ýën3õÃù`h&§Ó¢ÑrþC-ìùÐ’ÑˆxjÉÊlZ<ãcEÄnè !‹z7óìò©„N_ŸNäv³H¼jáµ1ÿÊ¦¨Ì’ÙÞÒbŸÃ³q©C6ÓÔ³—èþŠ¦4ÎÑ÷Ý5%Í\8Ÿ6üìÒ»¸À(ÍÑ¶Å…
9t¡$¤^_À¾ŸÉ½”Eªbé
èTW²?ë[9¼É¡Ú¡:
!Ûª°ófN]ß§ŒŠ>Sª+“üwHö	¤Õ»’Úo¡pÚM
Gd¸ù Ù¦êý·øàÒ|¥g&¨y–Í¯©5}m+X}=N³kâêf‹ëîÒg~«Mà–Ò/hÜTxlv<ðˆ>*÷y‰x¡U”_¹8[šq)«ëÔZïó<;jÎn,qöñâ^ÝÙ®Á×îñ®¶KÔÖî!Ùlá(>¼ ²7áz3fùŠL`–¶Efðû“bÈdÞrGL[:‹wÈQÿpÖ9ÿô”›ùN. µ½$lœLXàg›HI\?™¸¤˜ÞñJâìgbÀf’s|å²E–žbñë¸ìÊ›]fÌÞÓºìz—©Ãã]VxÊ6%9Tw§]AþÚ³”]ÿ PK !Z¢„,  Û  PK  ³j¼Z               [Content_Types].xmlµ“MnÂ0…OÐ;DÞVÄÐEUUýY¶]ÐÎ¬úOžÂí;	©•šeûÍ¼÷y$Oç;ïŠ-f²1TjRŽUÁÄÚ†U¥>¯£ UC¨ÁÅ€•Ú#©ùìfºØ'¤BšUjÍœµ&³FTÆ„A”&f,Ç¼Ò	Ì¬PßÇ÷ÚÄÀxÄ­‡šMŸ±ãâépßZW
RrÖ 
—3U¼ìD<`¶gý‹¾m¨Ï`FG2£ëjhmÝž ˆJmÂ»L&Ûÿ›Æ¬£Ùxi)¿c®SŽ‰d¨Þ•„Ì²;¦~@æ7ðb«ÛJ}RËã#‡Aà½Ãk 6h|#^
X:¼LÐËƒB„_b–ýeˆ^¢W<Øp¤/ùG–zeøtX'§HÝýöÙPK 3¯·,  -  PK   ³j¼Z„pÏ£  š                   word/numbering.xmlPK   ³j¼ZD=µS@  G               ã  word/settings.xmlPK   ³j¼Z cœu·  ·               b  word/fontTable.xmlPK   ³j¼ZZx8•`                 Y  word/styles.xmlPK   ³j¼Z.g÷µ  I                ö	  word/document.xmlPK   ³j¼Z «ëñ   ,               L  word/_rels/document.xml.relsPK   ³j¼Z-hÏ"±   *  
             ‡  _rels/.relsPK   ³j¼Z!Z¢„,  Û               q  word/theme/theme1.xmlPK   ³j¼Z3¯·,  -               à  [Content_Types].xmlPK    	 	 B  M     