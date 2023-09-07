.class public Lnet/fortuna/ical4j/model/parameter/ValueFactory;
.super Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;
.source "ValueFactory.groovy"


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/fortuna/ical4j/model/parameter/ValueFactory;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lnet/fortuna/ical4j/model/parameter/ValueFactory;

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

    const-string v2, "BINARY"

    aput-object v2, p0, v0

    const/4 v0, 0x3

    aput-object v2, p0, v0

    const/4 v0, 0x4

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v2, "BOOLEAN"

    aput-object v2, p0, v0

    const/4 v0, 0x6

    aput-object v2, p0, v0

    const/4 v0, 0x7

    aput-object v1, p0, v0

    const/16 v0, 0x8

    const-string v2, "CAL_ADDRESS"

    aput-object v2, p0, v0

    const/16 v0, 0x9

    aput-object v2, p0, v0

    const/16 v0, 0xa

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v2, "DATE"

    aput-object v2, p0, v0

    const/16 v0, 0xc

    aput-object v2, p0, v0

    const/16 v0, 0xd

    aput-object v1, p0, v0

    const/16 v0, 0xe

    const-string v2, "DATE_TIME"

    aput-object v2, p0, v0

    const/16 v0, 0xf

    aput-object v2, p0, v0

    const/16 v0, 0x10

    aput-object v1, p0, v0

    const/16 v0, 0x11

    const-string v2, "DURATION"

    aput-object v2, p0, v0

    const/16 v0, 0x12

    aput-object v2, p0, v0

    const/16 v0, 0x13

    aput-object v1, p0, v0

    const/16 v0, 0x14

    const-string v2, "FLOAT"

    aput-object v2, p0, v0

    const/16 v0, 0x15

    aput-object v2, p0, v0

    const/16 v0, 0x16

    aput-object v1, p0, v0

    const/16 v0, 0x17

    const-string v2, "INTEGER"

    aput-object v2, p0, v0

    const/16 v0, 0x18

    aput-object v2, p0, v0

    const/16 v0, 0x19

    aput-object v1, p0, v0

    const/16 v0, 0x1a

    const-string v2, "PERIOD"

    aput-object v2, p0, v0

    const/16 v0, 0x1b

    aput-object v2, p0, v0

    const/16 v0, 0x1c

    aput-object v1, p0, v0

    const/16 v0, 0x1d

    const-string v2, "RECUR"

    aput-object v2, p0, v0

    const/16 v0, 0x1e

    aput-object v2, p0, v0

    const/16 v0, 0x1f

    aput-object v1, p0, v0

    const/16 v0, 0x20

    const-string v2, "TEXT"

    aput-object v2, p0, v0

    const/16 v0, 0x21

    aput-object v2, p0, v0

    const/16 v0, 0x22

    aput-object v1, p0, v0

    const/16 v0, 0x23

    const-string v2, "TIME"

    aput-object v2, p0, v0

    const/16 v0, 0x24

    aput-object v2, p0, v0

    const/16 v0, 0x25

    aput-object v1, p0, v0

    const/16 v0, 0x26

    const-string v2, "URI"

    aput-object v2, p0, v0

    const/16 v0, 0x27

    aput-object v2, p0, v0

    const/16 v0, 0x28

    aput-object v1, p0, v0

    const/16 v0, 0x29

    const-string v1, "UTC_OFFSET"

    aput-object v1, p0, v0

    const/16 v0, 0x2a

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/fortuna/ical4j/model/parameter/ValueFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/ValueFactory;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/fortuna/ical4j/model/parameter/ValueFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/ValueFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/fortuna/ical4j/model/parameter/ValueFactory;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/ValueFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/ValueFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/ValueFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object p1

    const/4 p4, 0x0

    .line 1
    aget-object v0, p1, p4

    const-class v1, Lgroovy/util/FactoryBuilderSupport;

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v0, v1, p3, p2, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    const-class p1, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p3, p1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    aget-object v0, p1, p2

    const/4 v1, 0x2

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x3

    .line 4
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 5
    aget-object v0, p1, v0

    const/4 v1, 0x5

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x6

    .line 6
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x7

    .line 7
    aget-object v0, p1, v0

    const/16 v1, 0x8

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p2, 0x9

    .line 8
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xa

    .line 9
    aget-object v0, p1, v0

    const/16 v1, 0xb

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p2, 0xc

    .line 10
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xd

    .line 11
    aget-object v0, p1, v0

    const/16 v1, 0xe

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p2, 0xf

    .line 12
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x10

    .line 13
    aget-object v0, p1, v0

    const/16 v1, 0x11

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p2, 0x12

    .line 14
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x13

    .line 15
    aget-object v0, p1, v0

    const/16 v1, 0x14

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p2, 0x15

    .line 16
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x16

    .line 17
    aget-object v0, p1, v0

    const/16 v1, 0x17

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p2, 0x18

    .line 18
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x19

    .line 19
    aget-object v0, p1, v0

    const/16 v1, 0x1a

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p2, 0x1b

    .line 20
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x1c

    .line 21
    aget-object v0, p1, v0

    const/16 v1, 0x1d

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p2, 0x1e

    .line 22
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x1f

    .line 23
    aget-object v0, p1, v0

    const/16 v1, 0x20

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p2, 0x21

    .line 24
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x22

    .line 25
    aget-object v0, p1, v0

    const/16 v1, 0x23

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p2, 0x24

    .line 26
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    :cond_c
    const/16 v0, 0x25

    .line 27
    aget-object v0, p1, v0

    const/16 v1, 0x26

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p2, 0x27

    .line 28
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    :cond_d
    const/16 v0, 0x28

    .line 29
    aget-object v0, p1, v0

    const/16 v1, 0x29

    aget-object v1, p1, v1

    const-class v2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p2, 0x2a

    .line 30
    aget-object p1, p1, p2

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-interface {p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    :cond_e
    new-array p1, p2, [Ljava/lang/Object;

    aput-object p3, p1, p4

    .line 31
    invoke-static {p1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/parameter/Value;

    :goto_0
    return-object p1
.end method

.method public synthetic super$3$$getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    invoke-super {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method
