.class public Lnet/fortuna/ical4j/model/PropertyFactoryImpl;
.super Lnet/fortuna/ical4j/model/AbstractContentFactory;
.source "PropertyFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/model/AbstractContentFactory<",
        "Lnet/fortuna/ical4j/model/PropertyFactory<",
        "+",
        "Lnet/fortuna/ical4j/model/Property;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x638ffdff53af6039L


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 2
    .line 3
    const-class v1, Lnet/fortuna/ical4j/model/PropertyFactory;

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
    const-class p1, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 5
    .line 6
    const-class v0, Lnet/fortuna/ical4j/model/PropertyFactory;

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
.method public createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/PropertyFactory;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty()Lnet/fortuna/ical4j/model/Property;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->isExperimentalName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->allowIllegalNames()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/PropertyFactory;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p2, p3}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->isExperimentalName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v0, p1, p2, p3}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->allowIllegalNames()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v0, p1, p2, p3}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal property ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected bridge synthetic factorySupports(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/PropertyFactory;

    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->factorySupports(Lnet/fortuna/ical4j/model/PropertyFactory;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected factorySupports(Lnet/fortuna/ical4j/model/PropertyFactory;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Lnet/fortuna/ical4j/model/PropertyFactory;->supports(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
