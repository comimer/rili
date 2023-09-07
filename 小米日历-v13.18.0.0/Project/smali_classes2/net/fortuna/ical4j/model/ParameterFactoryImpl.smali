.class public Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.super Lnet/fortuna/ical4j/model/AbstractContentFactory;
.source "ParameterFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/model/AbstractContentFactory<",
        "Lnet/fortuna/ical4j/model/ParameterFactory<",
        "+",
        "Lnet/fortuna/ical4j/model/Parameter;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37fd26ce01fc174dL


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 2
    .line 3
    const-class v1, Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;-><init>(Ljava/util/ServiceLoader;)V

    .line 14
    .line 15
    .line 16
    return-void
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

.method private isExperimentalName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "X-"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x2

    .line 14
    if-le p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    const-class p1, Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 5
    .line 6
    const-class v0, Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lnet/fortuna/ical4j/model/AbstractContentFactory;->factoryLoader:Ljava/util/ServiceLoader;

    .line 17
    .line 18
    return-void
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


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p2}, Lnet/fortuna/ical4j/model/ParameterFactory;->createParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->isExperimentalName(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/XParameter;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/parameter/XParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    move-object p1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->allowIllegalNames()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/XParameter;

    .line 34
    .line 35
    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/parameter/XParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    return-object p1

    .line 40
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    aput-object p1, v0, v1

    .line 47
    .line 48
    const-string p1, "Unsupported parameter name: %s"

    .line 49
    .line 50
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method protected bridge synthetic factorySupports(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/ParameterFactory;

    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->factorySupports(Lnet/fortuna/ical4j/model/ParameterFactory;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected factorySupports(Lnet/fortuna/ical4j/model/ParameterFactory;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Lnet/fortuna/ical4j/model/ParameterFactory;->supports(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
