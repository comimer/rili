.class public Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;
.super Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;
.source "CuTypeFactory.groovy"


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "checkValueIsTypeNotString"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "value"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v2, "GROUP"

    aput-object v2, p0, v0

    const/4 v0, 0x3

    aput-object v2, p0, v0

    const/4 v0, 0x4

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v2, "INDIVIDUAL"

    aput-object v2, p0, v0

    const/4 v0, 0x6

    aput-object v2, p0, v0

    const/4 v0, 0x7

    aput-object v1, p0, v0

    const/16 v0, 0x8

    const-string v2, "RESOURCE"

    aput-object v2, p0, v0

    const/16 v0, 0x9

    aput-object v2, p0, v0

    const/16 v0, 0xa

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v1, "ROOM"

    aput-object v1, p0, v0

    const/16 v0, 0xc

    aput-object v1, p0, v0

    const/16 v0, 0xd

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/CuTypeFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p4, 0x0

    .line 6
    aget-object p4, p1, p4

    .line 7
    .line 8
    const-class v0, Lgroovy/util/FactoryBuilderSupport;

    .line 9
    .line 10
    const-class v1, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 11
    .line 12
    invoke-interface {p4, v0, p3, p2, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    const-class p1, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 23
    .line 24
    invoke-static {p3, p1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    const/4 p2, 0x1

    .line 33
    aget-object p2, p1, p2

    .line 34
    .line 35
    const/4 p4, 0x2

    .line 36
    aget-object p4, p1, p4

    .line 37
    .line 38
    const-class v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 39
    .line 40
    invoke-interface {p4, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    invoke-interface {p2, p4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p3, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    const/4 p2, 0x3

    .line 55
    aget-object p1, p1, p2

    .line 56
    .line 57
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 58
    .line 59
    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 64
    .line 65
    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_1
    const/4 p2, 0x4

    .line 74
    aget-object p2, p1, p2

    .line 75
    .line 76
    const/4 p4, 0x5

    .line 77
    aget-object p4, p1, p4

    .line 78
    .line 79
    const-class v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 80
    .line 81
    invoke-interface {p4, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    invoke-interface {p2, p4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p3, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_2

    .line 94
    .line 95
    const/4 p2, 0x6

    .line 96
    aget-object p1, p1, p2

    .line 97
    .line 98
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 99
    .line 100
    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 105
    .line 106
    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    const/4 p2, 0x7

    .line 114
    aget-object p2, p1, p2

    .line 115
    .line 116
    const/16 p4, 0x8

    .line 117
    .line 118
    aget-object p4, p1, p4

    .line 119
    .line 120
    const-class v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 121
    .line 122
    invoke-interface {p4, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    invoke-interface {p2, p4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {p3, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_3

    .line 135
    .line 136
    const/16 p2, 0x9

    .line 137
    .line 138
    aget-object p1, p1, p2

    .line 139
    .line 140
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 141
    .line 142
    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 147
    .line 148
    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_3
    const/16 p2, 0xa

    .line 156
    .line 157
    aget-object p2, p1, p2

    .line 158
    .line 159
    const/16 p4, 0xb

    .line 160
    .line 161
    aget-object p4, p1, p4

    .line 162
    .line 163
    const-class v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 164
    .line 165
    invoke-interface {p4, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p4

    .line 169
    invoke-interface {p2, p4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p3, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_4

    .line 178
    .line 179
    const/16 p2, 0xc

    .line 180
    .line 181
    aget-object p1, p1, p2

    .line 182
    .line 183
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 184
    .line 185
    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 190
    .line 191
    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_4
    const/16 p2, 0xd

    .line 199
    .line 200
    aget-object p1, p1, p2

    .line 201
    .line 202
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 203
    .line 204
    invoke-interface {p1, p2, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    const-class p2, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 209
    .line 210
    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 215
    .line 216
    :goto_0
    return-object p1
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
.end method

.method public synthetic super$3$$getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    invoke-super {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method
