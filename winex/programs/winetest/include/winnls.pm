# Automatically generated by make_symbols; DO NOT EDIT!! 
#
# Perl definitions for header file winnls.h
#


package winnls;

use strict;

use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

require Exporter;

@ISA = qw(Exporter);
@EXPORT = qw(
    C1_ALPHA
    C1_BLANK
    C1_CNTRL
    C1_DIGIT
    C1_LOWER
    C1_PUNCT
    C1_SPACE
    C1_UPPER
    C1_XDIGIT
    C2_ARABICNUMBER
    C2_BLOCKSEPARATOR
    C2_COMMONSEPARATOR
    C2_EUROPENUMBER
    C2_EUROPESEPARATOR
    C2_EUROPETERMINATOR
    C2_LEFTTORIGHT
    C2_NOTAPPLICABLE
    C2_OTHERNEUTRAL
    C2_RIGHTTOLEFT
    C2_SEGMENTSEPARATOR
    C2_WHITESPACE
    C3_ALPHA
    C3_DIACRITIC
    C3_FULLWIDTH
    C3_HALFWIDTH
    C3_HIRAGANA
    C3_IDEOGRAPH
    C3_KASHIDA
    C3_KATAKANA
    C3_LEXICAL
    C3_NONSPACING
    C3_NOTAPPLICABLE
    C3_SYMBOL
    C3_VOWELMARK
    CAL_GREGORIAN
    CAL_GREGORIAN_ARABIC
    CAL_GREGORIAN_ME_FRENCH
    CAL_GREGORIAN_US
    CAL_GREGORIAN_XLIT_ENGLISH
    CAL_GREGORIAN_XLIT_FRENCH
    CAL_HEBREW
    CAL_HIJRI
    CAL_ICALINTVALUE
    CAL_IYEAROFFSETRANGE
    CAL_JAPAN
    CAL_KOREA
    CAL_SABBREVDAYNAME1
    CAL_SABBREVDAYNAME2
    CAL_SABBREVDAYNAME3
    CAL_SABBREVDAYNAME4
    CAL_SABBREVDAYNAME5
    CAL_SABBREVDAYNAME6
    CAL_SABBREVDAYNAME7
    CAL_SABBREVMONTHNAME1
    CAL_SABBREVMONTHNAME10
    CAL_SABBREVMONTHNAME11
    CAL_SABBREVMONTHNAME12
    CAL_SABBREVMONTHNAME13
    CAL_SABBREVMONTHNAME2
    CAL_SABBREVMONTHNAME3
    CAL_SABBREVMONTHNAME4
    CAL_SABBREVMONTHNAME5
    CAL_SABBREVMONTHNAME6
    CAL_SABBREVMONTHNAME7
    CAL_SABBREVMONTHNAME8
    CAL_SABBREVMONTHNAME9
    CAL_SCALNAME
    CAL_SDAYNAME1
    CAL_SDAYNAME2
    CAL_SDAYNAME3
    CAL_SDAYNAME4
    CAL_SDAYNAME5
    CAL_SDAYNAME6
    CAL_SDAYNAME7
    CAL_SERASTRING
    CAL_SLONGDATE
    CAL_SMONTHNAME1
    CAL_SMONTHNAME10
    CAL_SMONTHNAME11
    CAL_SMONTHNAME12
    CAL_SMONTHNAME13
    CAL_SMONTHNAME2
    CAL_SMONTHNAME3
    CAL_SMONTHNAME4
    CAL_SMONTHNAME5
    CAL_SMONTHNAME6
    CAL_SMONTHNAME7
    CAL_SMONTHNAME8
    CAL_SMONTHNAME9
    CAL_SSHORTDATE
    CAL_SYEARMONTH
    CAL_TAIWAN
    CAL_THAI
    CP_ACP
    CP_MACCP
    CP_OEMCP
    CP_SYMBOL
    CP_THREAD_ACP
    CP_UTF7
    CP_UTF8
    CT_CTYPE1
    CT_CTYPE2
    CT_CTYPE3
    DATE_DATEVARSONLY
    DATE_LONGDATE
    DATE_SHORTDATE
    DATE_USE_ALT_CALENDAR
    ITU_IMPLEMENTED_TESTS
    LCID_INSTALLED
    LCMAP_BYTEREV
    LCMAP_FULLWIDTH
    LCMAP_HALFWIDTH
    LCMAP_HIRAGANA
    LCMAP_KATAKANA
    LCMAP_LOWERCASE
    LCMAP_SORTKEY
    LCMAP_UPPERCASE
    LOCALE_FONTSIGNATURE
    LOCALE_ICALENDARTYPE
    LOCALE_ICENTURY
    LOCALE_ICOUNTRY
    LOCALE_ICURRDIGITS
    LOCALE_ICURRENCY
    LOCALE_IDATE
    LOCALE_IDAYLZERO
    LOCALE_IDEFAULTANSICODEPAGE
    LOCALE_IDEFAULTCODEPAGE
    LOCALE_IDEFAULTCOUNTRY
    LOCALE_IDEFAULTEBCDICCODEPAGE
    LOCALE_IDEFAULTLANGUAGE
    LOCALE_IDEFAULTMACCODEPAGE
    LOCALE_IDIGITS
    LOCALE_IDIGITSUBSTITUTION
    LOCALE_IFIRSTDAYOFWEEK
    LOCALE_IFIRSTWEEKOFYEAR
    LOCALE_IINTLCURRDIGITS
    LOCALE_ILANGUAGE
    LOCALE_ILDATE
    LOCALE_ILZERO
    LOCALE_IMEASURE
    LOCALE_IMONLZERO
    LOCALE_INEGCURR
    LOCALE_INEGNUMBER
    LOCALE_INEGSEPBYSPACE
    LOCALE_INEGSIGNPOSN
    LOCALE_INEGSYMPRECEDES
    LOCALE_IOPTIONALCALENDAR
    LOCALE_IPAPERSIZE
    LOCALE_IPOSSEPBYSPACE
    LOCALE_IPOSSIGNPOSN
    LOCALE_IPOSSYMPRECEDES
    LOCALE_ITIME
    LOCALE_ITIMEMARKPOSN
    LOCALE_ITLZERO
    LOCALE_LOCALEINFOFLAGSMASK
    LOCALE_NOUSEROVERRIDE
    LOCALE_S1159
    LOCALE_S2359
    LOCALE_SABBREVCTRYNAME
    LOCALE_SABBREVDAYNAME1
    LOCALE_SABBREVDAYNAME2
    LOCALE_SABBREVDAYNAME3
    LOCALE_SABBREVDAYNAME4
    LOCALE_SABBREVDAYNAME5
    LOCALE_SABBREVDAYNAME6
    LOCALE_SABBREVDAYNAME7
    LOCALE_SABBREVLANGNAME
    LOCALE_SABBREVMONTHNAME1
    LOCALE_SABBREVMONTHNAME10
    LOCALE_SABBREVMONTHNAME11
    LOCALE_SABBREVMONTHNAME12
    LOCALE_SABBREVMONTHNAME13
    LOCALE_SABBREVMONTHNAME2
    LOCALE_SABBREVMONTHNAME3
    LOCALE_SABBREVMONTHNAME4
    LOCALE_SABBREVMONTHNAME5
    LOCALE_SABBREVMONTHNAME6
    LOCALE_SABBREVMONTHNAME7
    LOCALE_SABBREVMONTHNAME8
    LOCALE_SABBREVMONTHNAME9
    LOCALE_SCOUNTRY
    LOCALE_SCURRENCY
    LOCALE_SDATE
    LOCALE_SDAYNAME1
    LOCALE_SDAYNAME2
    LOCALE_SDAYNAME3
    LOCALE_SDAYNAME4
    LOCALE_SDAYNAME5
    LOCALE_SDAYNAME6
    LOCALE_SDAYNAME7
    LOCALE_SDECIMAL
    LOCALE_SENGCOUNTRY
    LOCALE_SENGCURRNAME
    LOCALE_SENGLANGUAGE
    LOCALE_SGROUPING
    LOCALE_SINTLSYMBOL
    LOCALE_SISO3166CTRYNAME
    LOCALE_SISO639LANGNAME
    LOCALE_SLANGUAGE
    LOCALE_SLIST
    LOCALE_SLONGDATE
    LOCALE_SMONDECIMALSEP
    LOCALE_SMONGROUPING
    LOCALE_SMONTHNAME1
    LOCALE_SMONTHNAME10
    LOCALE_SMONTHNAME11
    LOCALE_SMONTHNAME12
    LOCALE_SMONTHNAME13
    LOCALE_SMONTHNAME2
    LOCALE_SMONTHNAME3
    LOCALE_SMONTHNAME4
    LOCALE_SMONTHNAME5
    LOCALE_SMONTHNAME6
    LOCALE_SMONTHNAME7
    LOCALE_SMONTHNAME8
    LOCALE_SMONTHNAME9
    LOCALE_SMONTHOUSANDSEP
    LOCALE_SNATIVECTRYNAME
    LOCALE_SNATIVECURRNAME
    LOCALE_SNATIVEDIGITS
    LOCALE_SNATIVELANGNAME
    LOCALE_SNEGATIVESIGN
    LOCALE_SPOSITIVESIGN
    LOCALE_SSHORTDATE
    LOCALE_SSORTNAME
    LOCALE_STHOUSAND
    LOCALE_STIME
    LOCALE_STIMEFORMAT
    LOCALE_SYEARMONTH
    LOCALE_TIMEDATEBOTH
    LOCALE_USE_CP_ACP
    MAX_DEFAULTCHAR
    MAX_LEADBYTES
    MB_COMPOSITE
    MB_ERR_INVALID_CHARS
    MB_PRECOMPOSED
    MB_USEGLYPHCHARS
    NORM_IGNORECASE
    NORM_IGNOREKANATYPE
    NORM_IGNORENONSPACE
    NORM_IGNORESYMBOLS
    NORM_IGNOREWIDTH
    NORM_STRINGSORT
    SORT_STRINGSORT
    TIME_FORCE24HOURFORMAT
    TIME_NOMINUTESORSECONDS
    TIME_NOSECONDS
    TIME_NOTIMEMARKER
    TIME_TIMEVARSONLY
    WC_COMPOSITECHECK
    WC_DEFAULTCHAR
    WC_DISCARDNS
    WC_NO_BEST_FIT_CHARS
    WC_SEPCHARS
);
@EXPORT_OK = qw();

use constant C1_ALPHA => 256;
use constant C1_BLANK => 64;
use constant C1_CNTRL => 32;
use constant C1_DIGIT => 4;
use constant C1_LOWER => 2;
use constant C1_PUNCT => 16;
use constant C1_SPACE => 8;
use constant C1_UPPER => 1;
use constant C1_XDIGIT => 128;
use constant C2_ARABICNUMBER => 6;
use constant C2_BLOCKSEPARATOR => 8;
use constant C2_COMMONSEPARATOR => 7;
use constant C2_EUROPENUMBER => 3;
use constant C2_EUROPESEPARATOR => 4;
use constant C2_EUROPETERMINATOR => 5;
use constant C2_LEFTTORIGHT => 1;
use constant C2_NOTAPPLICABLE => 0;
use constant C2_OTHERNEUTRAL => 11;
use constant C2_RIGHTTOLEFT => 2;
use constant C2_SEGMENTSEPARATOR => 9;
use constant C2_WHITESPACE => 10;
use constant C3_ALPHA => 32768;
use constant C3_DIACRITIC => 2;
use constant C3_FULLWIDTH => 128;
use constant C3_HALFWIDTH => 64;
use constant C3_HIRAGANA => 32;
use constant C3_IDEOGRAPH => 256;
use constant C3_KASHIDA => 512;
use constant C3_KATAKANA => 16;
use constant C3_LEXICAL => 1024;
use constant C3_NONSPACING => 1;
use constant C3_NOTAPPLICABLE => 0;
use constant C3_SYMBOL => 8;
use constant C3_VOWELMARK => 4;
use constant CAL_GREGORIAN => 1;
use constant CAL_GREGORIAN_ARABIC => 10;
use constant CAL_GREGORIAN_ME_FRENCH => 9;
use constant CAL_GREGORIAN_US => 2;
use constant CAL_GREGORIAN_XLIT_ENGLISH => 11;
use constant CAL_GREGORIAN_XLIT_FRENCH => 12;
use constant CAL_HEBREW => 8;
use constant CAL_HIJRI => 6;
use constant CAL_ICALINTVALUE => 1;
use constant CAL_IYEAROFFSETRANGE => 3;
use constant CAL_JAPAN => 3;
use constant CAL_KOREA => 5;
use constant CAL_SABBREVDAYNAME1 => 14;
use constant CAL_SABBREVDAYNAME2 => 15;
use constant CAL_SABBREVDAYNAME3 => 16;
use constant CAL_SABBREVDAYNAME4 => 17;
use constant CAL_SABBREVDAYNAME5 => 18;
use constant CAL_SABBREVDAYNAME6 => 19;
use constant CAL_SABBREVDAYNAME7 => 20;
use constant CAL_SABBREVMONTHNAME1 => 34;
use constant CAL_SABBREVMONTHNAME10 => 43;
use constant CAL_SABBREVMONTHNAME11 => 44;
use constant CAL_SABBREVMONTHNAME12 => 45;
use constant CAL_SABBREVMONTHNAME13 => 46;
use constant CAL_SABBREVMONTHNAME2 => 35;
use constant CAL_SABBREVMONTHNAME3 => 36;
use constant CAL_SABBREVMONTHNAME4 => 37;
use constant CAL_SABBREVMONTHNAME5 => 38;
use constant CAL_SABBREVMONTHNAME6 => 39;
use constant CAL_SABBREVMONTHNAME7 => 40;
use constant CAL_SABBREVMONTHNAME8 => 41;
use constant CAL_SABBREVMONTHNAME9 => 42;
use constant CAL_SCALNAME => 2;
use constant CAL_SDAYNAME1 => 7;
use constant CAL_SDAYNAME2 => 8;
use constant CAL_SDAYNAME3 => 9;
use constant CAL_SDAYNAME4 => 10;
use constant CAL_SDAYNAME5 => 11;
use constant CAL_SDAYNAME6 => 12;
use constant CAL_SDAYNAME7 => 13;
use constant CAL_SERASTRING => 4;
use constant CAL_SLONGDATE => 6;
use constant CAL_SMONTHNAME1 => 21;
use constant CAL_SMONTHNAME10 => 30;
use constant CAL_SMONTHNAME11 => 31;
use constant CAL_SMONTHNAME12 => 32;
use constant CAL_SMONTHNAME13 => 33;
use constant CAL_SMONTHNAME2 => 22;
use constant CAL_SMONTHNAME3 => 23;
use constant CAL_SMONTHNAME4 => 24;
use constant CAL_SMONTHNAME5 => 25;
use constant CAL_SMONTHNAME6 => 26;
use constant CAL_SMONTHNAME7 => 27;
use constant CAL_SMONTHNAME8 => 28;
use constant CAL_SMONTHNAME9 => 29;
use constant CAL_SSHORTDATE => 5;
use constant CAL_SYEARMONTH => 47;
use constant CAL_TAIWAN => 4;
use constant CAL_THAI => 7;
use constant CP_ACP => 0;
use constant CP_MACCP => 2;
use constant CP_OEMCP => 1;
use constant CP_SYMBOL => 42;
use constant CP_THREAD_ACP => 3;
use constant CP_UTF7 => 65000;
use constant CP_UTF8 => 65001;
use constant CT_CTYPE1 => 1;
use constant CT_CTYPE2 => 2;
use constant CT_CTYPE3 => 4;
use constant DATE_DATEVARSONLY => 256;
use constant DATE_LONGDATE => 2;
use constant DATE_SHORTDATE => 1;
use constant DATE_USE_ALT_CALENDAR => 4;
use constant ITU_IMPLEMENTED_TESTS => 520;
use constant LCID_INSTALLED => 1;
use constant LCMAP_BYTEREV => 2048;
use constant LCMAP_FULLWIDTH => 8388608;
use constant LCMAP_HALFWIDTH => 4194304;
use constant LCMAP_HIRAGANA => 1048576;
use constant LCMAP_KATAKANA => 2097152;
use constant LCMAP_LOWERCASE => 256;
use constant LCMAP_SORTKEY => 1024;
use constant LCMAP_UPPERCASE => 512;
use constant LOCALE_FONTSIGNATURE => 88;
use constant LOCALE_ICALENDARTYPE => 4105;
use constant LOCALE_ICENTURY => 36;
use constant LOCALE_ICOUNTRY => 5;
use constant LOCALE_ICURRDIGITS => 25;
use constant LOCALE_ICURRENCY => 27;
use constant LOCALE_IDATE => 33;
use constant LOCALE_IDAYLZERO => 38;
use constant LOCALE_IDEFAULTANSICODEPAGE => 4100;
use constant LOCALE_IDEFAULTCODEPAGE => 11;
use constant LOCALE_IDEFAULTCOUNTRY => 10;
use constant LOCALE_IDEFAULTEBCDICCODEPAGE => 4114;
use constant LOCALE_IDEFAULTLANGUAGE => 9;
use constant LOCALE_IDEFAULTMACCODEPAGE => 4113;
use constant LOCALE_IDIGITS => 17;
use constant LOCALE_IDIGITSUBSTITUTION => 4116;
use constant LOCALE_IFIRSTDAYOFWEEK => 4108;
use constant LOCALE_IFIRSTWEEKOFYEAR => 4109;
use constant LOCALE_IINTLCURRDIGITS => 26;
use constant LOCALE_ILANGUAGE => 1;
use constant LOCALE_ILDATE => 34;
use constant LOCALE_ILZERO => 18;
use constant LOCALE_IMEASURE => 13;
use constant LOCALE_IMONLZERO => 39;
use constant LOCALE_INEGCURR => 28;
use constant LOCALE_INEGNUMBER => 4112;
use constant LOCALE_INEGSEPBYSPACE => 87;
use constant LOCALE_INEGSIGNPOSN => 83;
use constant LOCALE_INEGSYMPRECEDES => 86;
use constant LOCALE_IOPTIONALCALENDAR => 4107;
use constant LOCALE_IPAPERSIZE => 4106;
use constant LOCALE_IPOSSEPBYSPACE => 85;
use constant LOCALE_IPOSSIGNPOSN => 82;
use constant LOCALE_IPOSSYMPRECEDES => 84;
use constant LOCALE_ITIME => 35;
use constant LOCALE_ITIMEMARKPOSN => 4101;
use constant LOCALE_ITLZERO => 37;
use constant LOCALE_LOCALEINFOFLAGSMASK => -1073741824;
use constant LOCALE_NOUSEROVERRIDE => -2147483648;
use constant LOCALE_S1159 => 40;
use constant LOCALE_S2359 => 41;
use constant LOCALE_SABBREVCTRYNAME => 7;
use constant LOCALE_SABBREVDAYNAME1 => 49;
use constant LOCALE_SABBREVDAYNAME2 => 50;
use constant LOCALE_SABBREVDAYNAME3 => 51;
use constant LOCALE_SABBREVDAYNAME4 => 52;
use constant LOCALE_SABBREVDAYNAME5 => 53;
use constant LOCALE_SABBREVDAYNAME6 => 54;
use constant LOCALE_SABBREVDAYNAME7 => 55;
use constant LOCALE_SABBREVLANGNAME => 3;
use constant LOCALE_SABBREVMONTHNAME1 => 68;
use constant LOCALE_SABBREVMONTHNAME10 => 77;
use constant LOCALE_SABBREVMONTHNAME11 => 78;
use constant LOCALE_SABBREVMONTHNAME12 => 79;
use constant LOCALE_SABBREVMONTHNAME13 => 4111;
use constant LOCALE_SABBREVMONTHNAME2 => 69;
use constant LOCALE_SABBREVMONTHNAME3 => 70;
use constant LOCALE_SABBREVMONTHNAME4 => 71;
use constant LOCALE_SABBREVMONTHNAME5 => 72;
use constant LOCALE_SABBREVMONTHNAME6 => 73;
use constant LOCALE_SABBREVMONTHNAME7 => 74;
use constant LOCALE_SABBREVMONTHNAME8 => 75;
use constant LOCALE_SABBREVMONTHNAME9 => 76;
use constant LOCALE_SCOUNTRY => 6;
use constant LOCALE_SCURRENCY => 20;
use constant LOCALE_SDATE => 29;
use constant LOCALE_SDAYNAME1 => 42;
use constant LOCALE_SDAYNAME2 => 43;
use constant LOCALE_SDAYNAME3 => 44;
use constant LOCALE_SDAYNAME4 => 45;
use constant LOCALE_SDAYNAME5 => 46;
use constant LOCALE_SDAYNAME6 => 47;
use constant LOCALE_SDAYNAME7 => 48;
use constant LOCALE_SDECIMAL => 14;
use constant LOCALE_SENGCOUNTRY => 4098;
use constant LOCALE_SENGCURRNAME => 4103;
use constant LOCALE_SENGLANGUAGE => 4097;
use constant LOCALE_SGROUPING => 16;
use constant LOCALE_SINTLSYMBOL => 21;
use constant LOCALE_SISO3166CTRYNAME => 90;
use constant LOCALE_SISO639LANGNAME => 89;
use constant LOCALE_SLANGUAGE => 2;
use constant LOCALE_SLIST => 12;
use constant LOCALE_SLONGDATE => 32;
use constant LOCALE_SMONDECIMALSEP => 22;
use constant LOCALE_SMONGROUPING => 24;
use constant LOCALE_SMONTHNAME1 => 56;
use constant LOCALE_SMONTHNAME10 => 65;
use constant LOCALE_SMONTHNAME11 => 66;
use constant LOCALE_SMONTHNAME12 => 67;
use constant LOCALE_SMONTHNAME13 => 4110;
use constant LOCALE_SMONTHNAME2 => 57;
use constant LOCALE_SMONTHNAME3 => 58;
use constant LOCALE_SMONTHNAME4 => 59;
use constant LOCALE_SMONTHNAME5 => 60;
use constant LOCALE_SMONTHNAME6 => 61;
use constant LOCALE_SMONTHNAME7 => 62;
use constant LOCALE_SMONTHNAME8 => 63;
use constant LOCALE_SMONTHNAME9 => 64;
use constant LOCALE_SMONTHOUSANDSEP => 23;
use constant LOCALE_SNATIVECTRYNAME => 8;
use constant LOCALE_SNATIVECURRNAME => 4104;
use constant LOCALE_SNATIVEDIGITS => 19;
use constant LOCALE_SNATIVELANGNAME => 4;
use constant LOCALE_SNEGATIVESIGN => 81;
use constant LOCALE_SPOSITIVESIGN => 80;
use constant LOCALE_SSHORTDATE => 31;
use constant LOCALE_SSORTNAME => 4115;
use constant LOCALE_STHOUSAND => 15;
use constant LOCALE_STIME => 30;
use constant LOCALE_STIMEFORMAT => 4099;
use constant LOCALE_SYEARMONTH => 4102;
use constant LOCALE_TIMEDATEBOTH => 768;
use constant LOCALE_USE_CP_ACP => 1073741824;
use constant MAX_DEFAULTCHAR => 2;
use constant MAX_LEADBYTES => 12;
use constant MB_COMPOSITE => 2;
use constant MB_ERR_INVALID_CHARS => 8;
use constant MB_PRECOMPOSED => 1;
use constant MB_USEGLYPHCHARS => 4;
use constant NORM_IGNORECASE => 1;
use constant NORM_IGNOREKANATYPE => 65536;
use constant NORM_IGNORENONSPACE => 2;
use constant NORM_IGNORESYMBOLS => 4;
use constant NORM_IGNOREWIDTH => 131072;
use constant NORM_STRINGSORT => 4096;
use constant SORT_STRINGSORT => 4096;
use constant TIME_FORCE24HOURFORMAT => 8;
use constant TIME_NOMINUTESORSECONDS => 1;
use constant TIME_NOSECONDS => 2;
use constant TIME_NOTIMEMARKER => 4;
use constant TIME_TIMEVARSONLY => 512;
use constant WC_COMPOSITECHECK => 512;
use constant WC_DEFAULTCHAR => 64;
use constant WC_DISCARDNS => 16;
use constant WC_NO_BEST_FIT_CHARS => 1024;
use constant WC_SEPCHARS => 32;

1;
