PK  ±j¼Z               word/numbering.xml¥”KnÂ0†OÐ; ï!µˆFEí¦»¶ l“Xø¥±Ããöu 
UÒUÿoÆ“ß3_”ì8:atJÆ£˜¸¦†	¥äëóu8#çA3Fó”¹#ËÅÃ|ŸèB­9†}ƒ€Ð.Q4%¹÷6‰"Gs®ÀŒå:7øð‰Y¤ ·…R£,x±Røc4‰ã)©0&%ê¤B• hœÙøR’˜ÍFP^=jvÉ{–¬-×þ”1B.C
F»\XWÓT_Zæ5d÷×!vJÖûö¶K6†°}VòœhoY4”;VWç`CÇX"E—~æ¬+Q tƒ)ÝqjrBîªi'T{¶Nv)äzk<ÞV=úy©·¢“‹¯Aå
lÙ As@_d‚4tËÙ
è4ffY';_‘˜€Aµ&uwýÙq|e—,oiÙÿhoh
ÛÚý±íâŽŸîLn Óû ³[ å‡~Œ((/9‚ÝÇ™6QÏƒn nëJÂsÄª)xZj®ÀíPþ•^Km‰šÄa =
d-¾PK „pÏ£  š  PK  ±j¼Z               word/settings.xml¥–Ûr›0†Ÿ ïàÑ½Ã!¶›0Á¹h¦íEsåôdI€Æ:$Lüö• ¦W–þÕ~+ÖË./¯Ÿœ-ŽD*E’‡,ˆ@SQæà÷Ç÷åX
†L
’ƒ1àuûå¥É±Ö2
G&ã( •µ*‹"ƒ*Â¡yŠg,¤æÐº­.#õ¡VK$¹‚–î)£ö¥q¼=Fæ Ö"ëKN‘–FÖ»d²(("ýOðÐSâv.oÕœÛFŒ4aîR˜Š*h|.Í« 9þë!Žœ…sš
kØ¸DsÖj¤ÆJKDŒqê[gˆI<!1xL¹ÂeÌp©0¾8®@Cì---
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


 »OZ‹dÌ…aS.Ò™~Ñ½†út{
8#ŸçþŠNªâ+‚ó²µ
rUPÛ `sL¢Áß 8Â¡˜q9©œ¯H˜ÂRC>©¹ëŸMâ«rÙUP‘‘Vþí‡–µË}5‡vö&ëû é
`sàé€Èç<Fä<Ï9ßÇÙúÁ4€…æ`<á9Â}l¥á¸mÊå¸¥÷õ¨4v
¢¶!ƒ­›/˜°föîwVªE“¡k_ÓDÞÜqµëÆQ8—¬[
È][º˜6ïoª5ž,2ºˆÉôÎ;‘w¨Tv_&9`´¬lâùÖí°›víf_¦½-mmigk7!—wº_ŒZ´³sA{µUÐV£¶ÚzÔ6AÛx­:)¢ —†°ôz!“
Á?GûÔç#|lÿ PK D=µS@  G  PK  ±j¼Z               word/fontTable.xml¥•KnÛ0†OÐ;ÜÛ”ÔHËAÑ Ýt×ö ’’ó…!eÅ·/eëáÚA ++IýßÉŸÃíÓ›VÉA —ÖädµLI"³\š2'ÿ¼,IâÊ‘“£ðäi÷eÛd…5Á'Qn|¦YNª\F©g•Ðà—Ö	ƒ…E
!~bI5à¾v
fµƒ _¥’áH×iº!Ææ¤F“uˆ…–­·Eh%™-
ÉD÷è8%ïYòlY­…	§Œ…Š5Xã+é|OÓsi1XõÃG“8hÕÿ×¸)Ù8B÷B«s¢Æ"wh™ð>Ž>Ÿƒq•NXÀ1(¦”ðÎ¾
Ò˜ÖW !÷2æîí„'2®…WS
9‡~ÉW<ÞV3ÖóRïä$_¢*Ô8r‚U€¡ ¨9eÙ^ð`0˜™—“ì|EâJ=šÔßµ³«ôÊ.¿+pb¤•Ÿ£ýD[»Ñîsh'põõ>Àú°¹ðx
`âmƒFå%Gòû8›#û~0
Àï}KøFy×OCÃ¸mÊïrâk«mQë46d`§†LvÝå’4™;Ëw” ÝmiwëìþPK  cœu·  ·  PK  ±j¼Z               word/styles.xmlÝ—ínÚ0†¯`÷€ò¿MHBÆPiÕu›TuÓÚ]ÀÁ1Ä"±-Û²«Ÿ/ 	UH‘Ö~û<Ç~}|b.®^’x°ÂBF§ÖðÜ±˜"º˜Z¿ŸïÏÆÖ@* !ÄŒâ©µÁÒººüt±žHµ‰±h*'	šZ‘R|bÛE8yÎ8¦ºsÎDJ7ÅÂN@,S~†XÂA‘‰‰ÚØ®ãVaS+tR Î‚“l®ŒË„Íçáâ§ô]âæ.w¥	¦*‹h
ë90*#ÂeIKúÒtgTBV¯-b•Äå¸5ï-°Ö›‘Äy 5!a)µõ.ï¬ˆC§ƒ€Qyt™Â~Ìr&	ZaLjÔ@Uìs»-Cm²ÕBÆ]&’w=™ ±iÎzè¹ëÏI§,®´—JE•}(¡J@Ü‡3´Äá-ÐTÉ.:¥sXH¶I*ÚÙ¡SK—§8ÞÒo£},åÛt÷ûÐvNàptÀm ‚ã ã& á—~[{îrHx'¨8¤¬ Ý 
äRÂ;,ª`fªŽ@³(·rô£ñ5(×ÑPV­KývÑà;<‡4VÒ4ÅOQ4‹VösÏ´÷`=‰™Z×‚€Vv=Ar§AªkI`Ç]SY·
JþÑæè*äº¥åVîÛì"°]Ÿ¯·2H'¬FÄÄTG÷s`_i¬
*V`yÝÙ

²®F¨
×î„9¨<2Ô¬ë»ÞÿGs°³5†¹§~§gzRHp¹šÊcg®M¼‚YŒ÷ÐÏÆÒ‰Ÿ<vˆÒ¾ˆoÌý£	ŽòŽÁ0ß¢Hþ eï6 öÂ/ªÍ^lÎcþ¸3¤ óƒÞ Y³sXàŸË¬+g5§È”j§a®°Îý¡ë˜õÌ²ÁSËwœ×w¾JèmúN3
sÛNöÕ=(ªû¡Dõ‚®¢ÎêäJd¯å¨{õ£ÞGdï ÈÞûy¼¯±ÛWcÄb&ª¼õÌ·QgÇ-uv|ñýƒâûI|wÜUü=±ƒìÓÛoÛ?Ø£ƒb>”Øþ)Åîrƒè#vpPìàÿ›ÔÂþñŸ‰Ò7¡Æ'³¾kÕƒ=Õ¿ƒŒZ¤½IÊ§t¦ZÕ¬:Þµ žÛKÑþM!µ)v8^ËMÒ;p“,Ÿäå_PK Zx8•`    PK  ±j¼Z               word/document.xmlí\ënÛ8~‚} ÂAÛ¤°-ÛIÓÖtKÓÍNohÒŠACKÇ'’¨’”]O·ï¾çºØNZÄÝý!ÉXò#yxî‡ö/¿~Ib6¥…L:Ãþ Ã õe Òð óáâ´÷¤Ã´áiÀc™ÂAgºóëóü2 ÒÏH
C„Tÿ “=Oû$\÷e)¾œJ•pƒ·*ô®®ò¬çË$ãFLD,ÌÂ
ûFtr•Ž
ˆ^"|%µœê2–Ó©ð¡ø({¨ÛŒëºœS¶#z
bœƒLu$2]¢%?‹†/£dö£EÌ’¸l7Ïn3Z ø·#‰Ý@s©‚LI´Æ§'îe…8Ü‚€Qõ¸ÍVÇ,g’p‘V0Äk@ÕØ}» š…ªRÓBÇ·™ˆ{õJLW‹ë³à?AÏåþ™¸¯!`/“«Š!Â¸2%@ü3±ô¯ 8æéŒWÌ„·bç5¤@ðPñ¤fR½ÑÎ kìrñj´ðC{©džÕì¾÷3hK8|´ÀèÀþf O®øðåç0<ì¹Œ#‚Ípö+QêƒÛ®¯4!<õJ3`U"p])ßˆƒ—Ô— FTÈÜ·
¹óíËD
úÌØ|Œæ)xÐâÑ	Ä×¾»þèý	Ly›Þ¼S+‡{ãŒ+~TO‡v2Ù;E"
°cS„z<²(OCk,w÷ ©w
?½ª“úÑloXÕêœ
Dûabl2ãÓqCo¬ëŒû¨…3Ô:Ï{½52®©›SH:j1I·Øk0<à†7‘²»-¦lÌ27cÉúé_WM¤ï^‹ék„‰aÌþ)´‘JøŒx˜%M=éÜ&RûQ‹© –7‘¨û-&*c)OÚÅÃ[Mî ´¯DFÄ³2Þµ´f|‚Úš™Ö6M•LØ1¤:×ÌHöòü°ßÄyÒâÙb¯¬±l"]Ÿ¶˜®Ã|q,“,74R¶˜ÀŒ•$~Ãg"´
£‘D>j5‘»‚Å’™l´…<n9©q9ÈÐhž´˜¾"ý”ñ>¥|6fFåÐD¿h1š!:m>I›D¯á ùôú3ûõ«ÍM|ûÖ@V¶ ÿÛ(zµ9¹{È0Ú5Âç1YuÃäÔ¸‰œAy}W8ÿHænˆuÙœk×©
ˆ‹ž&÷m“	„<e¾Œcð
b±sü;Ìa4){ë9E]GƒÑî36 F5ó0*Y…~úäÞò+SB¤S˜¨œ«Eµ×e÷„ZOEŠëÝ£VÿÊãªE£õa
Û¢W›ÕÈœ$&x‚Npây	ÍæR]1”/”î[ñühyÞÏ<ü¹MEG=ö<Hûsq%2w'ðÎ#ýSÙx§ÏÎRƒäËlA¢XÉÊ¼b÷?çÒ<ãº't×]“$Š¢M‡¦&qB©48O®.›G €eRk1‰¡ËD’)R!¶‰”ÌÃhMO5îFÊ_
Rñ¢W›³ì[[ìõ:S6‘'[Zo½Úœñ>K­²Ô‚| m*åŠFB%zLZYAOç“D2<FN	©wNUámÑ+³ä±™ÂÖ¬¸uÔÀ-È«7Š^mN“ûìw(Â„¹0ÑšwOe°óÓÞùá1ò½/UàÞØÅ1·
7šÈÈmN­ìÆø@•;mÂR˜wÙL(“c8Uì‰UDšÎTwY®K¿ò#9Œ)¯Pk¡CQÿ¹ýõ+ÂMEØŸp
Tüí›ÕX=Sæ
m¯§§=Í}o 1PwÙ·RiÇÙ Íl0ŠÚ‡Ê±
¤Ã>ìÑÐ
ì°Í‰ÿ]Ëµ½±áIÉ.&)Â{ªˆK•”Ææôð¸‘›Ñæ*Án†
¹j5	hÿu$] åˆ!œÜqJx$<å!pô ¼¸Æœ‰9_è.ùe<Ô$n.VÃ§Â HÃw´Íe‰GåŽ¢©+TªÍ«I‰t/a$R¤ŠE€‘z®¹µqó4Ú N/¬Rœæ
7J±úy#7ì®è±½Fm.z\Té,âë’£c´×¹‘	é˜níÑ¡®ŠZè:o$‹çVK¡Në³Ã¸°;„Ç}_æ))*dÿ.zˆ!WÆMš´á<+
("¶m¥ê¬CáûÙÑQnH¬5Q\Fw…™ÍèÕæÂúZ¬!©0¬•"ˆåüïV;ÖK$Û<CSðEœ¡È?þ­ˆ¢ôµ¡×¹O&cšÇñ¢Ï(3­€¾0F.ýèÛ¶òˆ»£Á ÆPð9ŠÄ¯°<K¦§,ÀHôØíXèH@éV”>Åj•i½@Ãš(ŽwšÍèÕæ
ÍÖÖ;
0ÀS
]fJG[c,ÜDÞ¼«^lF¯6W/ŠôWÄ)7£Ú@Â&
ôz„á“Ë“£ß^üqé\TÈaê*xÀé5¥S¨Àˆÿ}žæuJÿòðÃÉÙÅ/ß_Z>/Q`:¥Ff„¢|›ÊSñ9Ç¾•€zoõ;úÃ‡„æ<&§¯˜ÈÃ‡4øÒTÊI4Q¨îÊ/›Ñ«Íå——ç‡´õTRŒ­u‘‰L—âåZ–8\£ë‚FaeDC§j–X½ÏÞ¦>T·¸
Œ`R ª»O¤hfÐqW…ÙŒ^m®ÂüAZ†èîGÅizŒ=
G¿kËŒNS€W<½rËºù!Z‰Ô•
zÚ,b(»œôÙ)FÛð…S ËŽ°9gÇ”?—sÌ¥¼Q<@§Âª£\¢¨rZ£glŒbKBKâø‘:ôû=”äÓÃãžÛÁÞãa}f£¢þ”ûýPÎ¼@h
‰Hm„åé<IÜïm| dç™Ë€û· ”ãÀÒ€^ž¶	ëJ,šeªM…Å%Ô5“b#k&Ýhm9#šÉñ‹7çÎÝLž÷mºœ›Avº…¿°¾çðrMV
"O„„Œ
²µ:·éÍÒZP{k½Ú\¢:KëB%É]­xjAÒ6?~éà²Öks Š¢S&Ë¾oQbdS¡ì!µ|ÀUlúaŸ]’`]îÔGMKw¹ìóë½+¢©Åñr§™ÒÔ‚šY£èÕæŠ¥<.O5…yEñ½J¿7ñxÜè®œ´½vÛ\N:³QY}(N2
°V#b—èl}z}öòýáÅÙÛ7—äei™”š¦£"Ö‰3n[gulª¼:åŸwÊD¸õœúÖË#¡ˆ¾*†~9OcÉœßt|þokät‹´®lÑ1˜ %ç½²‹W%ø½ ì?,2I|äNÈl'ev¾}Ûib¸{W™ÚŒ^-¨L5Š^-(µ|WS=d_B
ª<&eJ›ê4 )‚â[NÔZ tÝzUí_É¸Y;0T÷cól¢î‡æÙ…ÓQtHhuDÄÙ#ÆXPÉ4wŠt*ðš´WU]¯Šƒíø¥“Ý6Wš]Î3ð1Xñq' nb˜›ùÅÐ ÿ;·”<B&¶œXÉèÕoú½ 4¾YÚµ“¹u‰ØU
ºnu½É¢ç–‰›Ä
=©´{WOÛŒ^+õ´+€ì
|1+Óv_¡O¤×žÓï)àWG€lkoçý¥c™%ãõŽG“,I«/$ËNZÿ]\Øæ©ˆ] ÚÂÛµœHcPõÝª­at[X0s€ô6½z}:"þC5o©ÖP5µÉ;‡Lx”™ùÔ€* '–¢Å
ù£ Ñãýòæ}Cè­ó¹Û{ZYqm"¯,DAþ¿ürÔ¥R Á7®}žÿMrzÐ>z²gñçx=¹k©¤¸4RlŠ‹böYøšÓŒÝîcó=×¬¾qô)ï
•·`(PR*¥Ý
Òþ›<¹XdÄãÚpE‹Å”3÷ÊŸ…õêßþ_PK h%›
[
  Ä\  PK  ±j¼Z               word/_rels/document.xml.rels­’MjÃ0…OÐ;ˆÙ×²ÓJ‰œMd[Ü(òø‡Z#!MJ}ûŠ”$Ó…—ï‰yóÍŒÖ›;ˆo±w¤ ÈrHÆÕ=µ
>«ÝãˆÈšj=8B#FØ”ë4§šØõ>ŠBQAÇìß¥Œ¦C«cæ<Rzi\°š“­ôÚ|éå*Ï_e˜f@y“)öµ‚°¯
Õèñ?Ù®izƒ[gŽ‰ï´œj1êÐ"+8É?³ÈRÈû«%"2§åÆ+ÆÙ™CxZ¡qÄ•>“U\¬9ˆç%!èhÒÜWˆ‹5 ñ²è1xpzŠ“>·—7Ÿ¼üPK  «ëñ   ,  PK  ±j¼Z            
   _rels/.relsÏ;Â0àp‡È;MË€jÒ!uEå Qâ¦ÍCIxôöd` ÄÀhû÷g¹ív&7ŒÉxÇ ©j è¤WÆiçá¸ÞIY8%fïÁ‚	:¾jO8‹\vÒdB"q‰Á”sØSšä„V¤Ê te2úhE.eÔ4yé¦®·4¾À?LÒ+±W
a	øíÇÑH<xyµèò_‰"‹¨13¸û¨¨zµ«Âå-ýx‘?PK -hÏ"±   *  PK  ±j¼Z               word/theme/theme1.xmlíYKoÛ6¿Øw toeÙVêuŠØ±Û­M$n‡i‰–ØP¢@ÒI|Úã€Ãºa‡Øm‡a[Ø¥û4Ù:lÐ¯°¿–)›Î£M·­6Iýþï Iùò•Ãˆ¡}"$åqÛr.Ö,Dbû4ÚÖíAÿBËBRáØÇŒÇ¤mMˆ´®¬øÁe¼¦Bô±\Ãm+T*Y³méÁ2–yBbx6â"Â
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
Gd¸ù Ù¦êý·øàÒ|¥g&¨y–Í¯©5}m+X}=N³kâêf‹ëîÒg~«Mà–Ò/hÜTxlv<ðˆ>*÷y‰x¡U”_¹8[šq)«ëÔZïó<;jÎn,qöñâ^ÝÙ®Á×îñ®¶KÔÖî!Ùlá(>¼ ²7áz3fùŠL`–¶Efðû“bÈdÞrGL[:‹wÈQÿpÖ9ÿô”›ùN. µ½$lœLXàg›HI\?™¸¤˜ÞñJâìgbÀf’s|å²E–žbñë¸ìÊ›]fÌÞÓºìz—©Ãã]VxÊ6%9Tw§]AþÚ³”]ÿ PK !Z¢„,  Û  PK  ±j¼Z               [Content_Types].xmlµ“MnÂ0…OÐ;DÞVÄÐEUUýY¶]ÐÎ¬úOžÂí;	©•šeûÍ¼÷y$Oç;ïŠ-f²1TjRŽUÁÄÚ†U¥>¯£ UC¨ÁÅ€•Ú#©ùìfºØ'¤BšUjÍœµ&³FTÆ„A”&f,Ç¼Ò	Ì¬PßÇ÷ÚÄÀxÄ­‡šMŸ±ãâépßZW
RrÖ 
—3U¼ìD<`¶gý‹¾m¨Ï`FG2£ëjhmÝž ˆJmÂ»L&Ûÿ›Æ¬£Ùxi)¿c®SŽ‰d¨Þ•„Ì²;¦~@æ7ðb«ÛJ}RËã#‡Aà½Ãk 6h|#^
X:¼LÐËƒB„_b–ýeˆ^¢W<Øp¤/ùG–zeøtX'§HÝýöÙPK 3¯·,  -  PK   ±j¼Z„pÏ£  š                   word/numbering.xmlPK   ±j¼ZD=µS@  G               ã  word/settings.xmlPK   ±j¼Z cœu·  ·               b  word/fontTable.xmlPK   ±j¼ZZx8•`                 Y  word/styles.xmlPK   ±j¼Zh%›
[
  Ä\               ö	  word/document.xmlPK   ±j¼Z «ëñ   ,                 word/_rels/document.xml.relsPK   ±j¼Z-hÏ"±   *  
             Ë  _rels/.relsPK   ±j¼Z!Z¢„,  Û               µ  word/theme/theme1.xmlPK   ±j¼Z3¯·,  -               $  [Content_Types].xmlPK    	 	 B  ‘    