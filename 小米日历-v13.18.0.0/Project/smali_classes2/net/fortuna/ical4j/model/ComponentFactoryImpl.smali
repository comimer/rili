.class public final Lnet/fortuna/ical4j/model/ComponentFactoryImpl;
.super Lnet/fortuna/ical4j/model/AbstractContentFactory;
.source "ComponentFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/model/AbstractContentFactory<",
        "Lnet/fortuna/ical4j/model/ComponentFactory;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/ComponentFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;-><init>(Ljava/util/ServiceLoader;)V

    .line 12
    .line 13
    .line 14
    return-void
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
    const-class v0, Lnet/fortuna/ical4j/model/ComponentFactory;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {v0, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lnet/fortuna/ical4j/model/AbstractContentFactory;->factoryLoader:Ljava/util/ServiceLoader;

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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public createComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/fortuna/ical4j/model/Component;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/ComponentFactory;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent()Lnet/fortuna/ical4j/model/Component;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/ComponentFactoryImpl;->isExperimentalName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/component/XComponent;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->allowIllegalNames()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/component/XComponent;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-object p1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported component ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/fortuna/ical4j/model/Component;",
            ">(",
            "Ljava/lang/String;",
            "Lnet/fortuna/ical4j/model/PropertyList;",
            ")TT;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/ComponentFactory;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p2}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/ComponentFactoryImpl;->isExperimentalName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/component/XComponent;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->allowIllegalNames()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Lnet/fortuna/ical4j/model/component/XComponent;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    :goto_1
    return-object p1

    .line 14
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported component ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/fortuna/ical4j/model/Component;",
            ">(",
            "Ljava/lang/String;",
            "Lnet/fortuna/ical4j/model/PropertyList;",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "+",
            "Lnet/fortuna/ical4j/model/Component;",
            ">;)TT;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/AbstractContentFactory;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/ComponentFactory;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p2, p3}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/Component;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported component ["

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
    check-cast p1, Lnet/fortuna/ical4j/model/ComponentFactory;

    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/ComponentFactoryImpl;->factorySupports(Lnet/fortuna/ical4j/model/ComponentFactory;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected factorySupports(Lnet/fortuna/ical4j/model/ComponentFactory;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Lnet/fortuna/ical4j/model/ComponentFactory;->supports(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
