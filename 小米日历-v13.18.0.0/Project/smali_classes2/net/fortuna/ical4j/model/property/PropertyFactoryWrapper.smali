.class public Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;
.super Lgroovy/util/AbstractFactory;
.source "PropertyFactoryWrapper.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private factory:Lnet/fortuna/ical4j/model/PropertyFactory;

.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;

.field private propertyClass:Ljava/lang/Class;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "checkValueIsTypeNotString"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "remove"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v2, "<$constructor$>"

    aput-object v2, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v1, "createProperty"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string v1, "add"

    aput-object v1, p0, v0

    const/4 v0, 0x7

    const-string v1, "parameters"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Class;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 1

    .line 1
    invoke-static {}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lgroovy/util/AbstractFactory;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->metaClass:Lgroovy/lang/MetaClass;

    .line 12
    .line 13
    invoke-static {p1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToClass(Ljava/lang/Object;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->propertyClass:Ljava/lang/Class;

    .line 18
    .line 19
    const-class p1, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 20
    .line 21
    invoke-static {p2, p1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 26
    .line 27
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 28
    .line 29
    return-void
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Lnet/fortuna/ical4j/model/PropertyFactory;
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    return-object v0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyClass()Ljava/lang/Class;
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->propertyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object v0, p1, v0

    .line 7
    .line 8
    const-class v1, Lgroovy/util/FactoryBuilderSupport;

    .line 9
    .line 10
    iget-object v2, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->propertyClass:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-interface {v0, v1, p3, p2, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    return-object p3

    .line 23
    :cond_0
    const/4 p2, 0x1

    .line 24
    aget-object p2, p1, p2

    .line 25
    .line 26
    const-string v0, "parameters"

    .line 27
    .line 28
    invoke-interface {p2, p4, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-class v0, Lnet/fortuna/ical4j/model/ParameterList;

    .line 33
    .line 34
    invoke-static {p2, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lnet/fortuna/ical4j/model/ParameterList;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p2, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const/4 p2, 0x2

    .line 48
    aget-object p2, p1, p2

    .line 49
    .line 50
    const-class v1, Lnet/fortuna/ical4j/model/ParameterList;

    .line 51
    .line 52
    invoke-interface {p2, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-class v1, Lnet/fortuna/ical4j/model/ParameterList;

    .line 57
    .line 58
    invoke-static {p2, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lnet/fortuna/ical4j/model/ParameterList;

    .line 63
    .line 64
    :cond_1
    const/4 v1, 0x3

    .line 65
    aget-object v1, p1, v1

    .line 66
    .line 67
    const-string v2, "value"

    .line 68
    .line 69
    invoke-interface {v1, p4, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-static {p4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    invoke-static {p4, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    const/4 p3, 0x4

    .line 84
    aget-object p1, p1, p3

    .line 85
    .line 86
    iget-object p3, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 87
    .line 88
    invoke-interface {p1, p3, p2, p4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_2
    const/4 p4, 0x5

    .line 94
    aget-object p1, p1, p4

    .line 95
    .line 96
    iget-object p4, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 97
    .line 98
    invoke-interface {p1, p4, p2, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
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

.method public setChild(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p3, Lnet/fortuna/ical4j/model/Parameter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    aget-object v0, p1, v0

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    aget-object p1, p1, v1

    .line 14
    .line 15
    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
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
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method public setFactory(Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    return-void
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPropertyClass(Ljava/lang/Class;)V
    .locals 0
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/PropertyFactoryWrapper;->propertyClass:Ljava/lang/Class;

    return-void
.end method

.method public synthetic super$2$setChild(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lgroovy/util/AbstractFactory;->setChild(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
