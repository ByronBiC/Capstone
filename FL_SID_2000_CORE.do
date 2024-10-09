* https://www.hcup-us.ahrq.gov/db/state/sidc/tools/filespecs/FL_SID_2000_CORE.loc
clear
infix                             ///
double  KEY                1-  14   ///
long  AGE                  15-  17   ///
long  ASOURCE              18-  19   ///
 str ASOURCE_X            20-  21   ///
long  ATYPE                22-  23   ///
long  AWEEKEND             24-  25   ///
long  DIED                 26-  27   ///
 str DISP_X               28-  29   ///
long  DISPUB92             30-  31   ///
long  DISPUNIFORM          32-  33   ///
long  DQTR                 34-  35   ///
long  DRG                  36-  38   ///
long  DRG18                39-  41   ///
long  DRGVER               42-  43   ///
 str DSHOSPID             44-  56   ///
 str DX1                  57-  61   ///
 str DX2                  62-  66   ///
 str DX3                  67-  71   ///
 str DX4                  72-  76   ///
 str DX5                  77-  81   ///
 str DX6                  82-  86   ///
 str DX7                  87-  91   ///
 str DX8                  92-  96   ///
 str DX9                  97- 101   ///
 str DX10                102- 106   ///
long  DXCCS1              107- 110   ///
long  DXCCS2              111- 114   ///
long  DXCCS3              115- 118   ///
long  DXCCS4              119- 122   ///
long  DXCCS5              123- 126   ///
long  DXCCS6              127- 130   ///
long  DXCCS7              131- 134   ///
long  DXCCS8              135- 138   ///
long  DXCCS9              139- 142   ///
long  DXCCS10             143- 146   ///
long  FEMALE              147- 148   ///
 str HOSPST              149- 150   ///
long  LOS                 151- 155   ///
long  LOS_X               156- 161   ///
long  MDC                 162- 163   ///
long  MDC18               164- 165   ///
 str MDID_S              166- 181   ///
long  NDX                 182- 183   ///
long  NEOMAT              184- 185   ///
long  NPR                 186- 187   ///
long  PAY1                188- 189   ///
 str PAY1_X              190- 190   ///
 str PR1                 191- 194   ///
 str PR2                 195- 198   ///
 str PR3                 199- 202   ///
 str PR4                 203- 206   ///
 str PR5                 207- 210   ///
 str PR6                 211- 214   ///
 str PR7                 215- 218   ///
 str PR8                 219- 222   ///
 str PR9                 223- 226   ///
 str PR10                227- 230   ///
long  PRCCS1              231- 233   ///
long  PRCCS2              234- 236   ///
long  PRCCS3              237- 239   ///
long  PRCCS4              240- 242   ///
long  PRCCS5              243- 245   ///
long  PRCCS6              246- 248   ///
long  PRCCS7              249- 251   ///
long  PRCCS8              252- 254   ///
long  PRCCS9              255- 257   ///
long  PRCCS10             258- 260   ///
long  PRDAY1              261- 263   ///
long  RACE                264- 265   ///
 str RACE_X              266- 266   ///
 str SURGID_S            267- 282   ///
double  TOTCHG              283- 292   ///
double  TOTCHG_X            293- 307   ///
long  YEAR                308- 311   ///
 str ZIP                 312- 316   ///
using  "$data/FL_SID_2000_CORE.ASC"



*** Convert special values to missing values ***
recode AGE (-99 -88 -66 -55=.)
recode ASOURCE (-9 -8 -6 -5=.)
recode ATYPE (-9 -8 -6 -5=.)
recode AWEEKEND (-9 -8 -6 -5=.)
recode DIED (-9 -8 -6 -5=.)
recode DISPUB92 (-9 -8 -6 -5=.)
recode DISPUNIF (-9 -8 -6 -5=.)
recode DQTR (-9 -8 -6 -5=.)
recode DRG (-99 -88 -66 -55=.)
recode DRG18 (-99 -88 -66 -55=.)
recode DRGVER (-9 -8 -6 -5=.)
recode DXCCS1 (-999 -888 -666 -555=.)
recode DXCCS2 (-999 -888 -666 -555=.)
recode DXCCS3 (-999 -888 -666 -555=.)
recode DXCCS4 (-999 -888 -666 -555=.)
recode DXCCS5 (-999 -888 -666 -555=.)
recode DXCCS6 (-999 -888 -666 -555=.)
recode DXCCS7 (-999 -888 -666 -555=.)
recode DXCCS8 (-999 -888 -666 -555=.)
recode DXCCS9 (-999 -888 -666 -555=.)
recode DXCCS10 (-999 -888 -666 -555=.)
recode FEMALE (-9 -8 -6 -5=.)
recode LOS (-9999 -8888 -6666 -5555=.)
recode MDC (-9 -8 -6 -5=.)
recode MDC18 (-9 -8 -6 -5=.)
recode NDX (-9 -8 -6 -5=.)
recode NEOMAT (-9 -8 -6 -5=.)
recode NPR (-9 -8 -6 -5=.)
recode PAY1 (-9 -8 -6 -5=.)
recode PRCCS1 (-99 -88 -66 -55=.)
recode PRCCS2 (-99 -88 -66 -55=.)
recode PRCCS3 (-99 -88 -66 -55=.)
recode PRCCS4 (-99 -88 -66 -55=.)
recode PRCCS5 (-99 -88 -66 -55=.)
recode PRCCS6 (-99 -88 -66 -55=.)
recode PRCCS7 (-99 -88 -66 -55=.)
recode PRCCS8 (-99 -88 -66 -55=.)
recode PRCCS9 (-99 -88 -66 -55=.)
recode PRCCS10 (-99 -88 -66 -55=.)
recode PRDAY1 (-99 -88 -66 -55=.)
recode RACE (-9 -8 -6 -5=.)
recode TOTCHG (-999999999 -888888888 -666666666 -555555555=.)
recode TOTCHG_X (-99999999999.99 -88888888888.88 -66666666666.66 -55555555555.55=.)
