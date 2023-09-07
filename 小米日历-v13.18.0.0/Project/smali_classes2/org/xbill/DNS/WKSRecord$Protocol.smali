.class public Lorg/xbill/DNS/WKSRecord$Protocol;
.super Ljava/lang/Object;
.source "WKSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/WKSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final ARGUS:I = 0xd

.field public static final BBN_RCC_MON:I = 0xa

.field public static final BR_SAT_MON:I = 0x4c

.field public static final CFTP:I = 0x3e

.field public static final CHAOS:I = 0x10

.field public static final DCN_MEAS:I = 0x13

.field public static final EGP:I = 0x8

.field public static final EMCON:I = 0xe

.field public static final GGP:I = 0x3

.field public static final HMP:I = 0x14

.field public static final ICMP:I = 0x1

.field public static final IGMP:I = 0x2

.field public static final IGP:I = 0x9

.field public static final IPCV:I = 0x47

.field public static final IPPC:I = 0x43

.field public static final IRTP:I = 0x1c

.field public static final ISO_TP4:I = 0x1d

.field public static final LEAF_1:I = 0x19

.field public static final LEAF_2:I = 0x1a

.field public static final MERIT_INP:I = 0x20

.field public static final MFE_NSP:I = 0x1f

.field public static final MIT_SUBNET:I = 0x41

.field public static final MUX:I = 0x12

.field public static final NETBLT:I = 0x1e

.field public static final NVP_II:I = 0xb

.field public static final PRM:I = 0x15

.field public static final PUP:I = 0xc

.field public static final RDP:I = 0x1b

.field public static final RVD:I = 0x42

.field public static final SAT_EXPAK:I = 0x40

.field public static final SAT_MON:I = 0x45

.field public static final SEP:I = 0x21

.field public static final ST:I = 0x5

.field public static final TCP:I = 0x6

.field public static final TRUNK_1:I = 0x17

.field public static final TRUNK_2:I = 0x18

.field public static final UCL:I = 0x7

.field public static final UDP:I = 0x11

.field public static final WB_EXPAK:I = 0x4f

.field public static final WB_MON:I = 0x4e

.field public static final XNET:I = 0xf

.field public static final XNS_IDP:I = 0x16

.field private static protocols:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    .line 2
    .line 3
    const-string v1, "IP protocol"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 10
    .line 11
    const/16 v1, 0xff

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 23
    .line 24
    const-string v3, "icmp"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    const-string v3, "igmp"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 38
    .line 39
    const-string v1, "ggp"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 45
    .line 46
    const/4 v1, 0x5

    .line 47
    const-string v2, "st"

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    const-string v2, "tcp"

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 61
    .line 62
    const/4 v1, 0x7

    .line 63
    const-string v2, "ucl"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    const-string v2, "egp"

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 78
    .line 79
    const/16 v1, 0x9

    .line 80
    .line 81
    const-string v2, "igp"

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 87
    .line 88
    const/16 v1, 0xa

    .line 89
    .line 90
    const-string v2, "bbn-rcc-mon"

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 96
    .line 97
    const/16 v1, 0xb

    .line 98
    .line 99
    const-string v2, "nvp-ii"

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 105
    .line 106
    const/16 v1, 0xc

    .line 107
    .line 108
    const-string v2, "pup"

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 114
    .line 115
    const/16 v1, 0xd

    .line 116
    .line 117
    const-string v2, "argus"

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 123
    .line 124
    const/16 v1, 0xe

    .line 125
    .line 126
    const-string v2, "emcon"

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 132
    .line 133
    const/16 v1, 0xf

    .line 134
    .line 135
    const-string v2, "xnet"

    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 141
    .line 142
    const/16 v1, 0x10

    .line 143
    .line 144
    const-string v2, "chaos"

    .line 145
    .line 146
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 150
    .line 151
    const/16 v1, 0x11

    .line 152
    .line 153
    const-string v2, "udp"

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 159
    .line 160
    const/16 v1, 0x12

    .line 161
    .line 162
    const-string v2, "mux"

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 168
    .line 169
    const/16 v1, 0x13

    .line 170
    .line 171
    const-string v2, "dcn-meas"

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 177
    .line 178
    const/16 v1, 0x14

    .line 179
    .line 180
    const-string v2, "hmp"

    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 186
    .line 187
    const/16 v1, 0x15

    .line 188
    .line 189
    const-string v2, "prm"

    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 195
    .line 196
    const/16 v1, 0x16

    .line 197
    .line 198
    const-string v2, "xns-idp"

    .line 199
    .line 200
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 204
    .line 205
    const/16 v1, 0x17

    .line 206
    .line 207
    const-string v2, "trunk-1"

    .line 208
    .line 209
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 213
    .line 214
    const/16 v1, 0x18

    .line 215
    .line 216
    const-string v2, "trunk-2"

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 222
    .line 223
    const/16 v1, 0x19

    .line 224
    .line 225
    const-string v2, "leaf-1"

    .line 226
    .line 227
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 231
    .line 232
    const/16 v1, 0x1a

    .line 233
    .line 234
    const-string v2, "leaf-2"

    .line 235
    .line 236
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 240
    .line 241
    const/16 v1, 0x1b

    .line 242
    .line 243
    const-string v2, "rdp"

    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 249
    .line 250
    const/16 v1, 0x1c

    .line 251
    .line 252
    const-string v2, "irtp"

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 258
    .line 259
    const/16 v1, 0x1d

    .line 260
    .line 261
    const-string v2, "iso-tp4"

    .line 262
    .line 263
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 267
    .line 268
    const/16 v1, 0x1e

    .line 269
    .line 270
    const-string v2, "netblt"

    .line 271
    .line 272
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 276
    .line 277
    const/16 v1, 0x1f

    .line 278
    .line 279
    const-string v2, "mfe-nsp"

    .line 280
    .line 281
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 285
    .line 286
    const/16 v1, 0x20

    .line 287
    .line 288
    const-string v2, "merit-inp"

    .line 289
    .line 290
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 294
    .line 295
    const/16 v1, 0x21

    .line 296
    .line 297
    const-string v2, "sep"

    .line 298
    .line 299
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 303
    .line 304
    const/16 v1, 0x3e

    .line 305
    .line 306
    const-string v2, "cftp"

    .line 307
    .line 308
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 312
    .line 313
    const/16 v1, 0x40

    .line 314
    .line 315
    const-string v2, "sat-expak"

    .line 316
    .line 317
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 321
    .line 322
    const/16 v1, 0x41

    .line 323
    .line 324
    const-string v2, "mit-subnet"

    .line 325
    .line 326
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 330
    .line 331
    const/16 v1, 0x42

    .line 332
    .line 333
    const-string v2, "rvd"

    .line 334
    .line 335
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 339
    .line 340
    const/16 v1, 0x43

    .line 341
    .line 342
    const-string v2, "ippc"

    .line 343
    .line 344
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 348
    .line 349
    const/16 v1, 0x45

    .line 350
    .line 351
    const-string v2, "sat-mon"

    .line 352
    .line 353
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 357
    .line 358
    const/16 v1, 0x47

    .line 359
    .line 360
    const-string v2, "ipcv"

    .line 361
    .line 362
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 366
    .line 367
    const/16 v1, 0x4c

    .line 368
    .line 369
    const-string v2, "br-sat-mon"

    .line 370
    .line 371
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 372
    .line 373
    .line 374
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 375
    .line 376
    const/16 v1, 0x4e

    .line 377
    .line 378
    const-string v2, "wb-mon"

    .line 379
    .line 380
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 384
    .line 385
    const/16 v1, 0x4f

    .line 386
    .line 387
    const-string v2, "wb-expak"

    .line 388
    .line 389
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return-void
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

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

    .line 1
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
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
