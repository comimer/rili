.class public Lnet/fortuna/ical4j/model/property/PriorityFactory;
.super Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;
.source "PriorityFactory.groovy"


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lnet/fortuna/ical4j/model/property/PriorityFactory;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "checkValueIsTypeNotString"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "remove"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "equals"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v2, "getValue"

    aput-object v2, p0, v0

    const/4 v0, 0x4

    const-string v3, "HIGH"

    aput-object v3, p0, v0

    const/4 v0, 0x5

    aput-object v3, p0, v0

    const/4 v0, 0x6

    aput-object v1, p0, v0

    const/4 v0, 0x7

    aput-object v2, p0, v0

    const/16 v0, 0x8

    const-string v4, "MEDIUM"

    aput-object v4, p0, v0

    const/16 v0, 0x9

    aput-object v4, p0, v0

    const/16 v0, 0xa

    aput-object v1, p0, v0

    const/16 v0, 0xb

    aput-object v2, p0, v0

    const/16 v0, 0xc

    const-string v5, "LOW"

    aput-object v5, p0, v0

    const/16 v0, 0xd

    aput-object v5, p0, v0

    const/16 v0, 0xe

    aput-object v1, p0, v0

    const/16 v0, 0xf

    aput-object v2, p0, v0

    const/16 v0, 0x10

    const-string v6, "UNDEFINED"

    aput-object v6, p0, v0

    const/16 v0, 0x11

    aput-object v6, p0, v0

    const/16 v0, 0x12

    const-string v7, "put"

    aput-object v7, p0, v0

    const/16 v0, 0x13

    aput-object v1, p0, v0

    const/16 v0, 0x14

    aput-object v2, p0, v0

    const/16 v0, 0x15

    aput-object v3, p0, v0

    const/16 v0, 0x16

    aput-object v3, p0, v0

    const/16 v0, 0x17

    aput-object v1, p0, v0

    const/16 v0, 0x18

    aput-object v2, p0, v0

    const/16 v0, 0x19

    aput-object v4, p0, v0

    const/16 v0, 0x1a

    aput-object v4, p0, v0

    const/16 v0, 0x1b

    aput-object v1, p0, v0

    const/16 v0, 0x1c

    aput-object v2, p0, v0

    const/16 v0, 0x1d

    aput-object v5, p0, v0

    const/16 v0, 0x1e

    aput-object v5, p0, v0

    const/16 v0, 0x1f

    aput-object v1, p0, v0

    const/16 v0, 0x20

    aput-object v2, p0, v0

    const/16 v0, 0x21

    aput-object v6, p0, v0

    const/16 v0, 0x22

    aput-object v6, p0, v0

    const/16 v0, 0x23

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-static {}, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/fortuna/ical4j/model/property/PriorityFactory;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {}, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v4

    const/4 v5, 0x0

    .line 1
    aget-object v6, v4, v5

    const-class v7, Lgroovy/util/FactoryBuilderSupport;

    const-class v8, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v6, v7, v2, v1, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2
    const-class v1, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v2, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x1

    .line 3
    aget-object v7, v4, v6

    const-string v8, "value"

    invoke-interface {v7, v3, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 4
    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "newInstance"

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v9, :cond_5

    .line 5
    aget-object v9, v4, v13

    aget-object v14, v4, v12

    aget-object v15, v4, v11

    const-class v12, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v15, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v14, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x5

    .line 6
    aget-object v1, v4, v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    :cond_1
    const/4 v9, 0x6

    .line 7
    aget-object v9, v4, v9

    const/4 v12, 0x7

    aget-object v12, v4, v12

    const/16 v14, 0x8

    aget-object v14, v4, v14

    const-class v15, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v14, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v1, 0x9

    .line 8
    aget-object v1, v4, v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    :cond_2
    const/16 v9, 0xa

    .line 9
    aget-object v9, v4, v9

    const/16 v12, 0xb

    aget-object v12, v4, v12

    const/16 v14, 0xc

    aget-object v14, v4, v14

    const-class v15, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v14, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v1, 0xd

    .line 10
    aget-object v1, v4, v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0xe

    .line 11
    aget-object v9, v4, v9

    const/16 v12, 0xf

    aget-object v12, v4, v12

    const/16 v14, 0x10

    aget-object v14, v4, v14

    const-class v15, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v14, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v1, 0x11

    .line 12
    aget-object v1, v4, v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    :cond_4
    const/16 v9, 0x12

    .line 13
    aget-object v4, v4, v9

    invoke-interface {v4, v3, v8, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v4, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object v1, v7, v6

    aput-object v2, v7, v13

    const/4 v1, 0x3

    aput-object v3, v7, v1

    invoke-static {v4, v0, v10, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->invokeMethodOnSuperN(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x13

    .line 15
    aget-object v7, v4, v7

    const/16 v8, 0x14

    aget-object v8, v4, v8

    const/16 v9, 0x15

    aget-object v9, v4, v9

    const-class v12, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v9, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v1, 0x16

    .line 16
    aget-object v1, v4, v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x17

    .line 17
    aget-object v7, v4, v7

    const/16 v8, 0x18

    aget-object v8, v4, v8

    const/16 v9, 0x19

    aget-object v9, v4, v9

    const-class v12, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v9, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v1, 0x1a

    .line 18
    aget-object v1, v4, v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x1b

    .line 19
    aget-object v7, v4, v7

    const/16 v8, 0x1c

    aget-object v8, v4, v8

    const/16 v9, 0x1d

    aget-object v9, v4, v9

    const-class v12, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v9, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v1, 0x1e

    .line 20
    aget-object v1, v4, v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto :goto_0

    :cond_8
    const/16 v7, 0x1f

    .line 21
    aget-object v7, v4, v7

    const/16 v8, 0x20

    aget-object v8, v4, v8

    const/16 v9, 0x21

    aget-object v9, v4, v9

    const-class v12, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v9, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v1, 0x22

    .line 22
    aget-object v1, v4, v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    goto :goto_0

    .line 23
    :cond_9
    const-class v4, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object v1, v7, v6

    aput-object v2, v7, v13

    const/4 v1, 0x3

    aput-object v3, v7, v1

    invoke-static {v4, v0, v10, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->invokeMethodOnSuperN(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Priority;

    :goto_0
    return-object v1
.end method

.method protected newInstance(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lnet/fortuna/ical4j/model/property/PriorityFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/16 v1, 0x23

    .line 24
    aget-object v0, v0, v1

    const-class v1, Lnet/fortuna/ical4j/model/property/Priority;

    invoke-interface {v0, v1, p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic super$3$$getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public synthetic super$3$newInstance(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;->newInstance(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
