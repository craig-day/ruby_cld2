###############################################################################
##
## This creates the Ruby definition of the enum that can be found in
## ext/cld2/internal/generated_language.h
##
###############################################################################
require 'ffi'

module CLD2
  module GeneratedLanguage
    extend FFI::Library

    Language = enum(
      :ENGLISH,                0,  # en
      :DANISH,                 1,  # da
      :DUTCH,                  2,  # nl
      :FINNISH,                3,  # fi
      :FRENCH,                 4,  # fr
      :GERMAN,                 5,  # de
      :HEBREW,                 6,  # iw
      :ITALIAN,                7,  # it
      :JAPANESE,               8,  # ja
      :KOREAN,                 9,  # ko
      :NORWEGIAN,              10,  # no
      :POLISH,                 11,  # pl
      :PORTUGUESE,             12,  # pt
      :RUSSIAN,                13,  # ru
      :SPANISH,                14,  # es
      :SWEDISH,                15,  # sv
      :CHINESE,                16,  # zh
      :CZECH,                  17,  # cs
      :GREEK,                  18,  # el
      :ICELANDIC,              19,  # is
      :LATVIAN,                20,  # lv
      :LITHUANIAN,             21,  # lt
      :ROMANIAN,               22,  # ro
      :HUNGARIAN,              23,  # hu
      :ESTONIAN,               24,  # et
      :TG_UNKNOWN_LANGUAGE,    25,  # xxx
      :UNKNOWN_LANGUAGE,       26,  # un
      :BULGARIAN,              27,  # bg
      :CROATIAN,               28,  # hr
      :SERBIAN,                29,  # sr
      :IRISH,                  30,  # ga
      :GALICIAN,               31,  # gl
      :TAGALOG,                32,  # tl
      :TURKISH,                33,  # tr
      :UKRAINIAN,              34,  # uk
      :HINDI,                  35,  # hi
      :MACEDONIAN,             36,  # mk
      :BENGALI,                37,  # bn
      :INDONESIAN,             38,  # id
      :LATIN,                  39,  # la
      :MALAY,                  40,  # ms
      :MALAYALAM,              41,  # ml
      :WELSH,                  42,  # cy
      :NEPALI,                 43,  # ne
      :TELUGU,                 44,  # te
      :ALBANIAN,               45,  # sq
      :TAMIL,                  46,  # ta
      :BELARUSIAN,             47,  # be
      :JAVANESE,               48,  # jw
      :OCCITAN,                49,  # oc
      :URDU,                   50,  # ur
      :BIHARI,                 51,  # bh
      :GUJARATI,               52,  # gu
      :THAI,                   53,  # th
      :ARABIC,                 54,  # ar
      :CATALAN,                55,  # ca
      :ESPERANTO,              56,  # eo
      :BASQUE,                 57,  # eu
      :INTERLINGUA,            58,  # ia
      :KANNADA,                59,  # kn
      :PUNJABI,                60,  # pa
      :SCOTS_GAELIC,           61,  # gd
      :SWAHILI,                62,  # sw
      :SLOVENIAN,              63,  # sl
      :MARATHI,                64,  # mr
      :MALTESE,                65,  # mt
      :VIETNAMESE,             66,  # vi
      :FRISIAN,                67,  # fy
      :SLOVAK,                 68,  # sk
      :CHINESE_T,              69,  # zh-Hant
      :FAROESE,                70,  # fo
      :SUNDANESE,              71,  # su
      :UZBEK,                  72,  # uz
      :AMHARIC,                73,  # am
      :AZERBAIJANI,            74,  # az
      :GEORGIAN,               75,  # ka
      :TIGRINYA,               76,  # ti
      :PERSIAN,                77,  # fa
      :BOSNIAN,                78,  # bs
      :SINHALESE,              79,  # si
      :NORWEGIAN_N,            80,  # nn
      :X_81,                   81,  #
      :X_82,                   82,  #
      :XHOSA,                  83,  # xh
      :ZULU,                   84,  # zu
      :GUARANI,                85,  # gn
      :SESOTHO,                86,  # st
      :TURKMEN,                87,  # tk
      :KYRGYZ,                 88,  # ky
      :BRETON,                 89,  # br
      :TWI,                    90,  # tw
      :YIDDISH,                91,  # yi
      :X_92,                   92,  #
      :SOMALI,                 93,  # so
      :UIGHUR,                 94,  # ug
      :KURDISH,                95,  # ku
      :MONGOLIAN,              96,  # mn
      :ARMENIAN,               97,  # hy
      :LAOTHIAN,               98,  # lo
      :SINDHI,                 99,  # sd
      :RHAETO_ROMANCE,         100,  # rm
      :AFRIKAANS,              101,  # af
      :LUXEMBOURGISH,          102,  # lb
      :BURMESE,                103,  # my
      :KHMER,                  104,  # km
      :TIBETAN,                105,  # bo
      :DHIVEHI,                106,  # dv
      :CHEROKEE,               107,  # chr
      :SYRIAC,                 108,  # syr
      :LIMBU,                  109,  # lif
      :ORIYA,                  110,  # or
      :ASSAMESE,               111,  # as
      :CORSICAN,               112,  # co
      :INTERLINGUE,            113,  # ie
      :KAZAKH,                 114,  # kk
      :LINGALA,                115,  # ln
      :X_116,                  116,  #
      :PASHTO,                 117,  # ps
      :QUECHUA,                118,  # qu
      :SHONA,                  119,  # sn
      :TAJIK,                  120,  # tg
      :TATAR,                  121,  # tt
      :TONGA,                  122,  # to
      :YORUBA,                 123,  # yo
      :X_124,                  124,  #
      :X_125,                  125,  #
      :X_126,                  126,  #
      :X_127,                  127,  #
      :MAORI,                  128,  # mi
      :WOLOF,                  129,  # wo
      :ABKHAZIAN,              130,  # ab
      :AFAR,                   131,  # aa
      :AYMARA,                 132,  # ay
      :BASHKIR,                133,  # ba
      :BISLAMA,                134,  # bi
      :DZONGKHA,               135,  # dz
      :FIJIAN,                 136,  # fj
      :GREENLANDIC,            137,  # kl
      :HAUSA,                  138,  # ha
      :HAITIAN_CREOLE,         139,  # ht
      :INUPIAK,                140,  # ik
      :INUKTITUT,              141,  # iu
      :KASHMIRI,               142,  # ks
      :KINYARWANDA,            143,  # rw
      :MALAGASY,               144,  # mg
      :NAURU,                  145,  # na
      :OROMO,                  146,  # om
      :RUNDI,                  147,  # rn
      :SAMOAN,                 148,  # sm
      :SANGO,                  149,  # sg
      :SANSKRIT,               150,  # sa
      :SISWANT,                151,  # ss
      :TSONGA,                 152,  # ts
      :TSWANA,                 153,  # tn
      :VOLAPUK,                154,  # vo
      :ZHUANG,                 155,  # za
      :KHASI,                  156,  # kha
      :SCOTS,                  157,  # sco
      :GANDA,                  158,  # lg
      :MANX,                   159,  # gv
      :MONTENEGRIN,            160,  # sr-ME
      :AKAN,                   161,  # ak
      :IGBO,                   162,  # ig
      :MAURITIAN_CREOLE,       163,  # mfe
      :HAWAIIAN,               164,  # haw
      :CEBUANO,                165,  # ceb
      :EWE,                    166,  # ee
      :GA,                     167,  # gaa
      :HMONG,                  168,  # blu
      :KRIO,                   169,  # kri
      :LOZI,                   170,  # loz
      :LUBA_LULUA,             171,  # lua
      :LUO_KENYA_AND_TANZANIA, 172,  # luo
      :NEWARI,                 173,  # new
      :NYANJA,                 174,  # ny
      :OSSETIAN,               175,  # os
      :PAMPANGA,               176,  # pam
      :PEDI,                   177,  # nso
      :RAJASTHANI,             178,  # raj
      :SESELWA,                179,  # crs
      :TUMBUKA,                180,  # tum
      :VENDA,                  181,  # ve
      :WARAY_PHILIPPINES,      182   # war
    )
  end
end
