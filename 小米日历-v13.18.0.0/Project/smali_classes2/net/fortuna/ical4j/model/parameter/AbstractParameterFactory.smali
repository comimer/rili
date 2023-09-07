.class public abstract Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;
.super Lgroovy/util/AbstractFactory;
.source "AbstractParameterFactory.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0}, Lgroovy/util/AbstractFactory;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isLeaf()Z
    .locals 1

    invoke-static {}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x1

    return v0
.end method

.method public setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lgroovy/transform/Generated;
    .end annotation

    .annotation runtime Lgroovy/transform/Internal;
    .end annotation

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/parameter/AbstractParameterFactory;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic super$2$isLeaf()Z
    .locals 1

    invoke-super {p0}, Lgroovy/util/AbstractFactory;->isLeaf()Z

    move-result v0

    return v0
.end method
