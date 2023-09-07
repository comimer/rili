.class public Lnet/fortuna/ical4j/data/ServiceLoaderPropertyFactorySupplier;
.super Ljava/lang/Object;
.source "ServiceLoaderPropertyFactorySupplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/List<",
        "Lnet/fortuna/ical4j/model/PropertyFactory<",
        "*>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/data/ServiceLoaderPropertyFactorySupplier;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/PropertyFactory<",
            "*>;>;"
        }
    .end annotation

    .line 2
    const-class v0, Lnet/fortuna/ical4j/model/PropertyFactory;

    const-class v1, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Lnet/fortuna/ical4j/data/d;

    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/data/d;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v1
.end method
