.class public final Lorg/xbill/DNS/Type;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Type$TypeMnemonic;
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final A6:I = 0x26

.field public static final AAAA:I = 0x1c

.field public static final AFSDB:I = 0x12

.field public static final ANY:I = 0xff

.field public static final APL:I = 0x2a

.field public static final ATMA:I = 0x22

.field public static final AXFR:I = 0xfc

.field public static final CAA:I = 0x101

.field public static final CDNSKEY:I = 0x3c

.field public static final CDS:I = 0x3b

.field public static final CERT:I = 0x25

.field public static final CNAME:I = 0x5

.field public static final DHCID:I = 0x31

.field public static final DLV:I = 0x8001

.field public static final DNAME:I = 0x27

.field public static final DNSKEY:I = 0x30

.field public static final DS:I = 0x2b

.field public static final EID:I = 0x1f

.field public static final GPOS:I = 0x1b

.field public static final HINFO:I = 0xd

.field public static final IPSECKEY:I = 0x2d

.field public static final ISDN:I = 0x14

.field public static final IXFR:I = 0xfb

.field public static final KEY:I = 0x19

.field public static final KX:I = 0x24

.field public static final LOC:I = 0x1d

.field public static final MAILA:I = 0xfe

.field public static final MAILB:I = 0xfd

.field public static final MB:I = 0x7

.field public static final MD:I = 0x3

.field public static final MF:I = 0x4

.field public static final MG:I = 0x8

.field public static final MINFO:I = 0xe

.field public static final MR:I = 0x9

.field public static final MX:I = 0xf

.field public static final NAPTR:I = 0x23

.field public static final NIMLOC:I = 0x20

.field public static final NS:I = 0x2

.field public static final NSAP:I = 0x16

.field public static final NSAP_PTR:I = 0x17

.field public static final NSEC:I = 0x2f

.field public static final NSEC3:I = 0x32

.field public static final NSEC3PARAM:I = 0x33

.field public static final NULL:I = 0xa

.field public static final NXT:I = 0x1e

.field public static final OPENPGPKEY:I = 0x3d

.field public static final OPT:I = 0x29

.field public static final PTR:I = 0xc

.field public static final PX:I = 0x1a

.field public static final RP:I = 0x11

.field public static final RRSIG:I = 0x2e

.field public static final RT:I = 0x15

.field public static final SIG:I = 0x18

.field public static final SMIMEA:I = 0x35

.field public static final SOA:I = 0x6

.field public static final SPF:I = 0x63

.field public static final SRV:I = 0x21

.field public static final SSHFP:I = 0x2c

.field public static final TKEY:I = 0xf9

.field public static final TLSA:I = 0x34

.field public static final TSIG:I = 0xfa

.field public static final TXT:I = 0x10

.field public static final URI:I = 0x100

.field public static final WKS:I = 0xb

.field public static final X25:I = 0x13

.field private static types:Lorg/xbill/DNS/Type$TypeMnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/xbill/DNS/Type$TypeMnemonic;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 7
    .line 8
    new-instance v1, Lorg/xbill/DNS/ARecord;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/xbill/DNS/ARecord;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v3, "A"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 20
    .line 21
    new-instance v1, Lorg/xbill/DNS/NSRecord;

    .line 22
    .line 23
    invoke-direct {v1}, Lorg/xbill/DNS/NSRecord;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    const-string v3, "NS"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 33
    .line 34
    new-instance v1, Lorg/xbill/DNS/MDRecord;

    .line 35
    .line 36
    invoke-direct {v1}, Lorg/xbill/DNS/MDRecord;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    const-string v3, "MD"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 46
    .line 47
    new-instance v1, Lorg/xbill/DNS/MFRecord;

    .line 48
    .line 49
    invoke-direct {v1}, Lorg/xbill/DNS/MFRecord;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    const-string v3, "MF"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 59
    .line 60
    new-instance v1, Lorg/xbill/DNS/CNAMERecord;

    .line 61
    .line 62
    invoke-direct {v1}, Lorg/xbill/DNS/CNAMERecord;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x5

    .line 66
    const-string v3, "CNAME"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 72
    .line 73
    new-instance v1, Lorg/xbill/DNS/SOARecord;

    .line 74
    .line 75
    invoke-direct {v1}, Lorg/xbill/DNS/SOARecord;-><init>()V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x6

    .line 79
    const-string v3, "SOA"

    .line 80
    .line 81
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 85
    .line 86
    new-instance v1, Lorg/xbill/DNS/MBRecord;

    .line 87
    .line 88
    invoke-direct {v1}, Lorg/xbill/DNS/MBRecord;-><init>()V

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x7

    .line 92
    const-string v3, "MB"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 98
    .line 99
    new-instance v1, Lorg/xbill/DNS/MGRecord;

    .line 100
    .line 101
    invoke-direct {v1}, Lorg/xbill/DNS/MGRecord;-><init>()V

    .line 102
    .line 103
    .line 104
    const/16 v2, 0x8

    .line 105
    .line 106
    const-string v3, "MG"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 112
    .line 113
    new-instance v1, Lorg/xbill/DNS/MRRecord;

    .line 114
    .line 115
    invoke-direct {v1}, Lorg/xbill/DNS/MRRecord;-><init>()V

    .line 116
    .line 117
    .line 118
    const/16 v2, 0x9

    .line 119
    .line 120
    const-string v3, "MR"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 126
    .line 127
    new-instance v1, Lorg/xbill/DNS/NULLRecord;

    .line 128
    .line 129
    invoke-direct {v1}, Lorg/xbill/DNS/NULLRecord;-><init>()V

    .line 130
    .line 131
    .line 132
    const/16 v2, 0xa

    .line 133
    .line 134
    const-string v3, "NULL"

    .line 135
    .line 136
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 137
    .line 138
    .line 139
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 140
    .line 141
    new-instance v1, Lorg/xbill/DNS/WKSRecord;

    .line 142
    .line 143
    invoke-direct {v1}, Lorg/xbill/DNS/WKSRecord;-><init>()V

    .line 144
    .line 145
    .line 146
    const/16 v2, 0xb

    .line 147
    .line 148
    const-string v3, "WKS"

    .line 149
    .line 150
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 154
    .line 155
    new-instance v1, Lorg/xbill/DNS/PTRRecord;

    .line 156
    .line 157
    invoke-direct {v1}, Lorg/xbill/DNS/PTRRecord;-><init>()V

    .line 158
    .line 159
    .line 160
    const/16 v2, 0xc

    .line 161
    .line 162
    const-string v3, "PTR"

    .line 163
    .line 164
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 165
    .line 166
    .line 167
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 168
    .line 169
    new-instance v1, Lorg/xbill/DNS/HINFORecord;

    .line 170
    .line 171
    invoke-direct {v1}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    .line 172
    .line 173
    .line 174
    const/16 v2, 0xd

    .line 175
    .line 176
    const-string v3, "HINFO"

    .line 177
    .line 178
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 179
    .line 180
    .line 181
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 182
    .line 183
    new-instance v1, Lorg/xbill/DNS/MINFORecord;

    .line 184
    .line 185
    invoke-direct {v1}, Lorg/xbill/DNS/MINFORecord;-><init>()V

    .line 186
    .line 187
    .line 188
    const/16 v2, 0xe

    .line 189
    .line 190
    const-string v3, "MINFO"

    .line 191
    .line 192
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 196
    .line 197
    new-instance v1, Lorg/xbill/DNS/MXRecord;

    .line 198
    .line 199
    invoke-direct {v1}, Lorg/xbill/DNS/MXRecord;-><init>()V

    .line 200
    .line 201
    .line 202
    const/16 v2, 0xf

    .line 203
    .line 204
    const-string v3, "MX"

    .line 205
    .line 206
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 207
    .line 208
    .line 209
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 210
    .line 211
    new-instance v1, Lorg/xbill/DNS/TXTRecord;

    .line 212
    .line 213
    invoke-direct {v1}, Lorg/xbill/DNS/TXTRecord;-><init>()V

    .line 214
    .line 215
    .line 216
    const/16 v2, 0x10

    .line 217
    .line 218
    const-string v3, "TXT"

    .line 219
    .line 220
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 221
    .line 222
    .line 223
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 224
    .line 225
    new-instance v1, Lorg/xbill/DNS/RPRecord;

    .line 226
    .line 227
    invoke-direct {v1}, Lorg/xbill/DNS/RPRecord;-><init>()V

    .line 228
    .line 229
    .line 230
    const/16 v2, 0x11

    .line 231
    .line 232
    const-string v3, "RP"

    .line 233
    .line 234
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 235
    .line 236
    .line 237
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 238
    .line 239
    new-instance v1, Lorg/xbill/DNS/AFSDBRecord;

    .line 240
    .line 241
    invoke-direct {v1}, Lorg/xbill/DNS/AFSDBRecord;-><init>()V

    .line 242
    .line 243
    .line 244
    const/16 v2, 0x12

    .line 245
    .line 246
    const-string v3, "AFSDB"

    .line 247
    .line 248
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 249
    .line 250
    .line 251
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 252
    .line 253
    new-instance v1, Lorg/xbill/DNS/X25Record;

    .line 254
    .line 255
    invoke-direct {v1}, Lorg/xbill/DNS/X25Record;-><init>()V

    .line 256
    .line 257
    .line 258
    const/16 v2, 0x13

    .line 259
    .line 260
    const-string v3, "X25"

    .line 261
    .line 262
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 263
    .line 264
    .line 265
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 266
    .line 267
    new-instance v1, Lorg/xbill/DNS/ISDNRecord;

    .line 268
    .line 269
    invoke-direct {v1}, Lorg/xbill/DNS/ISDNRecord;-><init>()V

    .line 270
    .line 271
    .line 272
    const/16 v2, 0x14

    .line 273
    .line 274
    const-string v3, "ISDN"

    .line 275
    .line 276
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 277
    .line 278
    .line 279
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 280
    .line 281
    new-instance v1, Lorg/xbill/DNS/RTRecord;

    .line 282
    .line 283
    invoke-direct {v1}, Lorg/xbill/DNS/RTRecord;-><init>()V

    .line 284
    .line 285
    .line 286
    const/16 v2, 0x15

    .line 287
    .line 288
    const-string v3, "RT"

    .line 289
    .line 290
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 291
    .line 292
    .line 293
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 294
    .line 295
    new-instance v1, Lorg/xbill/DNS/NSAPRecord;

    .line 296
    .line 297
    invoke-direct {v1}, Lorg/xbill/DNS/NSAPRecord;-><init>()V

    .line 298
    .line 299
    .line 300
    const/16 v2, 0x16

    .line 301
    .line 302
    const-string v3, "NSAP"

    .line 303
    .line 304
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 305
    .line 306
    .line 307
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 308
    .line 309
    new-instance v1, Lorg/xbill/DNS/NSAP_PTRRecord;

    .line 310
    .line 311
    invoke-direct {v1}, Lorg/xbill/DNS/NSAP_PTRRecord;-><init>()V

    .line 312
    .line 313
    .line 314
    const/16 v2, 0x17

    .line 315
    .line 316
    const-string v3, "NSAP-PTR"

    .line 317
    .line 318
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 319
    .line 320
    .line 321
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 322
    .line 323
    new-instance v1, Lorg/xbill/DNS/SIGRecord;

    .line 324
    .line 325
    invoke-direct {v1}, Lorg/xbill/DNS/SIGRecord;-><init>()V

    .line 326
    .line 327
    .line 328
    const/16 v2, 0x18

    .line 329
    .line 330
    const-string v3, "SIG"

    .line 331
    .line 332
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 333
    .line 334
    .line 335
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 336
    .line 337
    new-instance v1, Lorg/xbill/DNS/KEYRecord;

    .line 338
    .line 339
    invoke-direct {v1}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    .line 340
    .line 341
    .line 342
    const/16 v2, 0x19

    .line 343
    .line 344
    const-string v3, "KEY"

    .line 345
    .line 346
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 347
    .line 348
    .line 349
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 350
    .line 351
    new-instance v1, Lorg/xbill/DNS/PXRecord;

    .line 352
    .line 353
    invoke-direct {v1}, Lorg/xbill/DNS/PXRecord;-><init>()V

    .line 354
    .line 355
    .line 356
    const/16 v2, 0x1a

    .line 357
    .line 358
    const-string v3, "PX"

    .line 359
    .line 360
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 361
    .line 362
    .line 363
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 364
    .line 365
    new-instance v1, Lorg/xbill/DNS/GPOSRecord;

    .line 366
    .line 367
    invoke-direct {v1}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    .line 368
    .line 369
    .line 370
    const/16 v2, 0x1b

    .line 371
    .line 372
    const-string v3, "GPOS"

    .line 373
    .line 374
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 375
    .line 376
    .line 377
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 378
    .line 379
    new-instance v1, Lorg/xbill/DNS/AAAARecord;

    .line 380
    .line 381
    invoke-direct {v1}, Lorg/xbill/DNS/AAAARecord;-><init>()V

    .line 382
    .line 383
    .line 384
    const/16 v2, 0x1c

    .line 385
    .line 386
    const-string v3, "AAAA"

    .line 387
    .line 388
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 389
    .line 390
    .line 391
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 392
    .line 393
    new-instance v1, Lorg/xbill/DNS/LOCRecord;

    .line 394
    .line 395
    invoke-direct {v1}, Lorg/xbill/DNS/LOCRecord;-><init>()V

    .line 396
    .line 397
    .line 398
    const/16 v2, 0x1d

    .line 399
    .line 400
    const-string v3, "LOC"

    .line 401
    .line 402
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 403
    .line 404
    .line 405
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 406
    .line 407
    new-instance v1, Lorg/xbill/DNS/NXTRecord;

    .line 408
    .line 409
    invoke-direct {v1}, Lorg/xbill/DNS/NXTRecord;-><init>()V

    .line 410
    .line 411
    .line 412
    const/16 v2, 0x1e

    .line 413
    .line 414
    const-string v3, "NXT"

    .line 415
    .line 416
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 417
    .line 418
    .line 419
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 420
    .line 421
    const/16 v1, 0x1f

    .line 422
    .line 423
    const-string v2, "EID"

    .line 424
    .line 425
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 426
    .line 427
    .line 428
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 429
    .line 430
    const/16 v1, 0x20

    .line 431
    .line 432
    const-string v2, "NIMLOC"

    .line 433
    .line 434
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 435
    .line 436
    .line 437
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 438
    .line 439
    new-instance v1, Lorg/xbill/DNS/SRVRecord;

    .line 440
    .line 441
    invoke-direct {v1}, Lorg/xbill/DNS/SRVRecord;-><init>()V

    .line 442
    .line 443
    .line 444
    const/16 v2, 0x21

    .line 445
    .line 446
    const-string v3, "SRV"

    .line 447
    .line 448
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 449
    .line 450
    .line 451
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 452
    .line 453
    const/16 v1, 0x22

    .line 454
    .line 455
    const-string v2, "ATMA"

    .line 456
    .line 457
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 458
    .line 459
    .line 460
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 461
    .line 462
    new-instance v1, Lorg/xbill/DNS/NAPTRRecord;

    .line 463
    .line 464
    invoke-direct {v1}, Lorg/xbill/DNS/NAPTRRecord;-><init>()V

    .line 465
    .line 466
    .line 467
    const/16 v2, 0x23

    .line 468
    .line 469
    const-string v3, "NAPTR"

    .line 470
    .line 471
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 472
    .line 473
    .line 474
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 475
    .line 476
    new-instance v1, Lorg/xbill/DNS/KXRecord;

    .line 477
    .line 478
    invoke-direct {v1}, Lorg/xbill/DNS/KXRecord;-><init>()V

    .line 479
    .line 480
    .line 481
    const/16 v2, 0x24

    .line 482
    .line 483
    const-string v3, "KX"

    .line 484
    .line 485
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 486
    .line 487
    .line 488
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 489
    .line 490
    new-instance v1, Lorg/xbill/DNS/CERTRecord;

    .line 491
    .line 492
    invoke-direct {v1}, Lorg/xbill/DNS/CERTRecord;-><init>()V

    .line 493
    .line 494
    .line 495
    const/16 v2, 0x25

    .line 496
    .line 497
    const-string v3, "CERT"

    .line 498
    .line 499
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 500
    .line 501
    .line 502
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 503
    .line 504
    new-instance v1, Lorg/xbill/DNS/A6Record;

    .line 505
    .line 506
    invoke-direct {v1}, Lorg/xbill/DNS/A6Record;-><init>()V

    .line 507
    .line 508
    .line 509
    const/16 v2, 0x26

    .line 510
    .line 511
    const-string v3, "A6"

    .line 512
    .line 513
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 514
    .line 515
    .line 516
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 517
    .line 518
    new-instance v1, Lorg/xbill/DNS/DNAMERecord;

    .line 519
    .line 520
    invoke-direct {v1}, Lorg/xbill/DNS/DNAMERecord;-><init>()V

    .line 521
    .line 522
    .line 523
    const/16 v2, 0x27

    .line 524
    .line 525
    const-string v3, "DNAME"

    .line 526
    .line 527
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 528
    .line 529
    .line 530
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 531
    .line 532
    new-instance v1, Lorg/xbill/DNS/OPTRecord;

    .line 533
    .line 534
    invoke-direct {v1}, Lorg/xbill/DNS/OPTRecord;-><init>()V

    .line 535
    .line 536
    .line 537
    const/16 v2, 0x29

    .line 538
    .line 539
    const-string v3, "OPT"

    .line 540
    .line 541
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 542
    .line 543
    .line 544
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 545
    .line 546
    new-instance v1, Lorg/xbill/DNS/APLRecord;

    .line 547
    .line 548
    invoke-direct {v1}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 549
    .line 550
    .line 551
    const/16 v2, 0x2a

    .line 552
    .line 553
    const-string v3, "APL"

    .line 554
    .line 555
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 556
    .line 557
    .line 558
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 559
    .line 560
    new-instance v1, Lorg/xbill/DNS/DSRecord;

    .line 561
    .line 562
    invoke-direct {v1}, Lorg/xbill/DNS/DSRecord;-><init>()V

    .line 563
    .line 564
    .line 565
    const/16 v2, 0x2b

    .line 566
    .line 567
    const-string v3, "DS"

    .line 568
    .line 569
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 570
    .line 571
    .line 572
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 573
    .line 574
    new-instance v1, Lorg/xbill/DNS/SSHFPRecord;

    .line 575
    .line 576
    invoke-direct {v1}, Lorg/xbill/DNS/SSHFPRecord;-><init>()V

    .line 577
    .line 578
    .line 579
    const/16 v2, 0x2c

    .line 580
    .line 581
    const-string v3, "SSHFP"

    .line 582
    .line 583
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 584
    .line 585
    .line 586
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 587
    .line 588
    new-instance v1, Lorg/xbill/DNS/IPSECKEYRecord;

    .line 589
    .line 590
    invoke-direct {v1}, Lorg/xbill/DNS/IPSECKEYRecord;-><init>()V

    .line 591
    .line 592
    .line 593
    const/16 v2, 0x2d

    .line 594
    .line 595
    const-string v3, "IPSECKEY"

    .line 596
    .line 597
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 598
    .line 599
    .line 600
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 601
    .line 602
    new-instance v1, Lorg/xbill/DNS/RRSIGRecord;

    .line 603
    .line 604
    invoke-direct {v1}, Lorg/xbill/DNS/RRSIGRecord;-><init>()V

    .line 605
    .line 606
    .line 607
    const/16 v2, 0x2e

    .line 608
    .line 609
    const-string v3, "RRSIG"

    .line 610
    .line 611
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 612
    .line 613
    .line 614
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 615
    .line 616
    new-instance v1, Lorg/xbill/DNS/NSECRecord;

    .line 617
    .line 618
    invoke-direct {v1}, Lorg/xbill/DNS/NSECRecord;-><init>()V

    .line 619
    .line 620
    .line 621
    const/16 v2, 0x2f

    .line 622
    .line 623
    const-string v3, "NSEC"

    .line 624
    .line 625
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 626
    .line 627
    .line 628
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 629
    .line 630
    new-instance v1, Lorg/xbill/DNS/DNSKEYRecord;

    .line 631
    .line 632
    invoke-direct {v1}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    .line 633
    .line 634
    .line 635
    const/16 v2, 0x30

    .line 636
    .line 637
    const-string v3, "DNSKEY"

    .line 638
    .line 639
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 640
    .line 641
    .line 642
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 643
    .line 644
    new-instance v1, Lorg/xbill/DNS/DHCIDRecord;

    .line 645
    .line 646
    invoke-direct {v1}, Lorg/xbill/DNS/DHCIDRecord;-><init>()V

    .line 647
    .line 648
    .line 649
    const/16 v2, 0x31

    .line 650
    .line 651
    const-string v3, "DHCID"

    .line 652
    .line 653
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 654
    .line 655
    .line 656
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 657
    .line 658
    new-instance v1, Lorg/xbill/DNS/NSEC3Record;

    .line 659
    .line 660
    invoke-direct {v1}, Lorg/xbill/DNS/NSEC3Record;-><init>()V

    .line 661
    .line 662
    .line 663
    const/16 v2, 0x32

    .line 664
    .line 665
    const-string v3, "NSEC3"

    .line 666
    .line 667
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 668
    .line 669
    .line 670
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 671
    .line 672
    new-instance v1, Lorg/xbill/DNS/NSEC3PARAMRecord;

    .line 673
    .line 674
    invoke-direct {v1}, Lorg/xbill/DNS/NSEC3PARAMRecord;-><init>()V

    .line 675
    .line 676
    .line 677
    const/16 v2, 0x33

    .line 678
    .line 679
    const-string v3, "NSEC3PARAM"

    .line 680
    .line 681
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 682
    .line 683
    .line 684
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 685
    .line 686
    new-instance v1, Lorg/xbill/DNS/TLSARecord;

    .line 687
    .line 688
    invoke-direct {v1}, Lorg/xbill/DNS/TLSARecord;-><init>()V

    .line 689
    .line 690
    .line 691
    const/16 v2, 0x34

    .line 692
    .line 693
    const-string v3, "TLSA"

    .line 694
    .line 695
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 696
    .line 697
    .line 698
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 699
    .line 700
    new-instance v1, Lorg/xbill/DNS/SMIMEARecord;

    .line 701
    .line 702
    invoke-direct {v1}, Lorg/xbill/DNS/SMIMEARecord;-><init>()V

    .line 703
    .line 704
    .line 705
    const/16 v2, 0x35

    .line 706
    .line 707
    const-string v3, "SMIMEA"

    .line 708
    .line 709
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 710
    .line 711
    .line 712
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 713
    .line 714
    new-instance v1, Lorg/xbill/DNS/CDNSKEYRecord;

    .line 715
    .line 716
    invoke-direct {v1}, Lorg/xbill/DNS/CDNSKEYRecord;-><init>()V

    .line 717
    .line 718
    .line 719
    const/16 v2, 0x3c

    .line 720
    .line 721
    const-string v3, "CDNSKEY"

    .line 722
    .line 723
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 724
    .line 725
    .line 726
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 727
    .line 728
    new-instance v1, Lorg/xbill/DNS/CDSRecord;

    .line 729
    .line 730
    invoke-direct {v1}, Lorg/xbill/DNS/CDSRecord;-><init>()V

    .line 731
    .line 732
    .line 733
    const/16 v2, 0x3b

    .line 734
    .line 735
    const-string v3, "CDS"

    .line 736
    .line 737
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 738
    .line 739
    .line 740
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 741
    .line 742
    new-instance v1, Lorg/xbill/DNS/OPENPGPKEYRecord;

    .line 743
    .line 744
    invoke-direct {v1}, Lorg/xbill/DNS/OPENPGPKEYRecord;-><init>()V

    .line 745
    .line 746
    .line 747
    const/16 v2, 0x3d

    .line 748
    .line 749
    const-string v3, "OPENPGPKEY"

    .line 750
    .line 751
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 752
    .line 753
    .line 754
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 755
    .line 756
    new-instance v1, Lorg/xbill/DNS/SPFRecord;

    .line 757
    .line 758
    invoke-direct {v1}, Lorg/xbill/DNS/SPFRecord;-><init>()V

    .line 759
    .line 760
    .line 761
    const/16 v2, 0x63

    .line 762
    .line 763
    const-string v3, "SPF"

    .line 764
    .line 765
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 766
    .line 767
    .line 768
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 769
    .line 770
    new-instance v1, Lorg/xbill/DNS/TKEYRecord;

    .line 771
    .line 772
    invoke-direct {v1}, Lorg/xbill/DNS/TKEYRecord;-><init>()V

    .line 773
    .line 774
    .line 775
    const/16 v2, 0xf9

    .line 776
    .line 777
    const-string v3, "TKEY"

    .line 778
    .line 779
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 780
    .line 781
    .line 782
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 783
    .line 784
    new-instance v1, Lorg/xbill/DNS/TSIGRecord;

    .line 785
    .line 786
    invoke-direct {v1}, Lorg/xbill/DNS/TSIGRecord;-><init>()V

    .line 787
    .line 788
    .line 789
    const/16 v2, 0xfa

    .line 790
    .line 791
    const-string v3, "TSIG"

    .line 792
    .line 793
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 794
    .line 795
    .line 796
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 797
    .line 798
    const/16 v1, 0xfb

    .line 799
    .line 800
    const-string v2, "IXFR"

    .line 801
    .line 802
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 803
    .line 804
    .line 805
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 806
    .line 807
    const/16 v1, 0xfc

    .line 808
    .line 809
    const-string v2, "AXFR"

    .line 810
    .line 811
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 812
    .line 813
    .line 814
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 815
    .line 816
    const/16 v1, 0xfd

    .line 817
    .line 818
    const-string v2, "MAILB"

    .line 819
    .line 820
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 821
    .line 822
    .line 823
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 824
    .line 825
    const/16 v1, 0xfe

    .line 826
    .line 827
    const-string v2, "MAILA"

    .line 828
    .line 829
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 830
    .line 831
    .line 832
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 833
    .line 834
    const/16 v1, 0xff

    .line 835
    .line 836
    const-string v2, "ANY"

    .line 837
    .line 838
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 839
    .line 840
    .line 841
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 842
    .line 843
    new-instance v1, Lorg/xbill/DNS/URIRecord;

    .line 844
    .line 845
    invoke-direct {v1}, Lorg/xbill/DNS/URIRecord;-><init>()V

    .line 846
    .line 847
    .line 848
    const/16 v2, 0x100

    .line 849
    .line 850
    const-string v3, "URI"

    .line 851
    .line 852
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 853
    .line 854
    .line 855
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 856
    .line 857
    new-instance v1, Lorg/xbill/DNS/CAARecord;

    .line 858
    .line 859
    invoke-direct {v1}, Lorg/xbill/DNS/CAARecord;-><init>()V

    .line 860
    .line 861
    .line 862
    const/16 v2, 0x101

    .line 863
    .line 864
    const-string v3, "CAA"

    .line 865
    .line 866
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 867
    .line 868
    .line 869
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 870
    .line 871
    new-instance v1, Lorg/xbill/DNS/DLVRecord;

    .line 872
    .line 873
    invoke-direct {v1}, Lorg/xbill/DNS/DLVRecord;-><init>()V

    .line 874
    .line 875
    .line 876
    const v2, 0x8001

    .line 877
    .line 878
    .line 879
    const-string v3, "DLV"

    .line 880
    .line 881
    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 882
    .line 883
    .line 884
    return-void
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public static check(I)V
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    .line 5
    .line 6
    if-gt p0, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTypeException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/xbill/DNS/InvalidTypeException;-><init>(I)V

    .line 12
    .line 13
    .line 14
    throw v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method static getProto(I)Lorg/xbill/DNS/Record;
    .locals 1

    .line 1
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getProto(I)Lorg/xbill/DNS/Record;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public static isRR(I)Z
    .locals 1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static value(Ljava/lang/String;Z)I
    .locals 2

    .line 1
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method
