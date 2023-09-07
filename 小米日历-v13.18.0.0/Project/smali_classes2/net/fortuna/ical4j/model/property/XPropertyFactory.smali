.class public Lnet/fortuna/ical4j/model/property/XPropertyFactory;
.super Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;
.source "XPropertyFactory.groovy"


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lnet/fortuna/ical4j/model/property/XPropertyFactory;

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

    aput-object v1, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v2, "newInstance"

    aput-object v2, p0, v0

    const/4 v0, 0x6

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-static {}, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Lnet/fortuna/ical4j/model/property/AbstractPropertyFactory;-><init>()V

    return-void
.end method

.method protected static newInstance(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x6

    .line 11
    aget-object v0, v0, v1

    const-class v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-interface {v0, v1, p0, p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/fortuna/ical4j/model/property/XPropertyFactory;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

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

    invoke-static {}, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object p1

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    const-class v1, Lgroovy/util/FactoryBuilderSupport;

    const-class v2, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-interface {v0, v1, p3, p2, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    const-class p1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-static {p3, p1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/XProperty;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    aget-object p2, p1, p2

    const-string v0, "name"

    invoke-interface {p2, p4, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    invoke-static {p2, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p3}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p3, 0x2

    .line 6
    aget-object p3, p1, p3

    const-string v1, "value"

    invoke-interface {p3, p4, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    .line 7
    aget-object v1, p1, v1

    const-string v2, "parameters"

    invoke-interface {v1, p4, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const-class v1, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-static {p4, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/fortuna/ical4j/model/ParameterList;

    .line 8
    invoke-static {p4, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p4, 0x4

    .line 9
    aget-object p4, p1, p4

    const-class v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-interface {p4, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const-class v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-static {p4, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/fortuna/ical4j/model/ParameterList;

    :cond_2
    const/4 v0, 0x5

    .line 10
    aget-object p1, p1, v0

    const-class v0, Lnet/fortuna/ical4j/model/property/XPropertyFactory;

    invoke-interface {p1, v0, p2, p4, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-static {p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/XProperty;

    :goto_0
    return-object p1
.end method

.method protected newInstance(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lnet/fortuna/ical4j/model/property/XPropertyFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 p1, 0x0

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
