.class public Lnet/fortuna/ical4j/model/property/RequestStatusFactory;
.super Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;
.source "RequestStatusFactory.groovy"


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "checkValueIsTypeNotString"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "remove"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "put"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-static {}, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lgroovy/util/FactoryBuilderSupport;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    aget-object v2, v0, v1

    const-class v3, Lgroovy/util/FactoryBuilderSupport;

    const-class v4, Lnet/fortuna/ical4j/model/property/RequestStatus;

    invoke-interface {v2, v3, p3, p2, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    const-class p1, Lnet/fortuna/ical4j/model/property/RequestStatus;

    invoke-static {p3, p1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/RequestStatus;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 3
    aget-object v3, v0, v2

    const-string v4, "value"

    invoke-interface {v3, p4, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 4
    invoke-static {v3, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const-string v8, "newInstance"

    const/4 v9, 0x2

    if-eqz v5, :cond_1

    .line 5
    aget-object v0, v0, v9

    invoke-interface {v0, p4, v4, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v0, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    aput-object p3, v3, v9

    aput-object p4, v3, v6

    invoke-static {v0, p0, v8, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->invokeMethodOnSuperN(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/property/RequestStatus;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/RequestStatus;

    goto :goto_0

    .line 7
    :cond_1
    const-class v0, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    aput-object p3, v3, v9

    aput-object p4, v3, v6

    invoke-static {v0, p0, v8, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->invokeMethodOnSuperN(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/property/RequestStatus;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/RequestStatus;

    :goto_0
    return-object p1
.end method

.method protected newInstance(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lnet/fortuna/ical4j/model/property/RequestStatusFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x3

    .line 8
    aget-object v0, v0, v1

    const-class v1, Lnet/fortuna/ical4j/model/property/RequestStatus;

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
