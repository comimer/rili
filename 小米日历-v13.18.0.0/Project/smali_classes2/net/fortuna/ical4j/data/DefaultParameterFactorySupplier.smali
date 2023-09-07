.class public Lnet/fortuna/ical4j/data/DefaultParameterFactorySupplier;
.super Ljava/lang/Object;
.source "DefaultParameterFactorySupplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/List<",
        "Lnet/fortuna/ical4j/model/ParameterFactory<",
        "+",
        "Lnet/fortuna/ical4j/model/Parameter;",
        ">;>;>;"
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
    invoke-virtual {p0}, Lnet/fortuna/ical4j/data/DefaultParameterFactorySupplier;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ParameterFactory<",
            "+",
            "Lnet/fortuna/ical4j/model/Parameter;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x19

    new-array v0, v0, [Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 2
    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Abbrev$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Abbrev$Factory;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/AltRep$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/AltRep$Factory;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Cn$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Cn$Factory;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/CuType$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/CuType$Factory;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/DelegatedFrom$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/DelegatedFrom$Factory;-><init>()V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/DelegatedTo$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/DelegatedTo$Factory;-><init>()V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Dir$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Dir$Factory;-><init>()V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Encoding$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Encoding$Factory;-><init>()V

    const/4 v7, 0x7

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/FmtType$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/FmtType$Factory;-><init>()V

    const/16 v7, 0x8

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/FbType$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/FbType$Factory;-><init>()V

    const/16 v7, 0x9

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Language$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Language$Factory;-><init>()V

    const/16 v7, 0xa

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Member$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Member$Factory;-><init>()V

    const/16 v7, 0xb

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/PartStat$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/PartStat$Factory;-><init>()V

    const/16 v7, 0xc

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Range$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Range$Factory;-><init>()V

    const/16 v7, 0xd

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Related$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Related$Factory;-><init>()V

    const/16 v7, 0xe

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/RelType$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/RelType$Factory;-><init>()V

    const/16 v7, 0xf

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Role$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Role$Factory;-><init>()V

    const/16 v7, 0x10

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Rsvp$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Rsvp$Factory;-><init>()V

    const/16 v7, 0x11

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent$Factory;-><init>()V

    const/16 v7, 0x12

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/ScheduleStatus$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/ScheduleStatus$Factory;-><init>()V

    const/16 v7, 0x13

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/SentBy$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/SentBy$Factory;-><init>()V

    const/16 v7, 0x14

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Type$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Type$Factory;-><init>()V

    const/16 v7, 0x15

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/TzId$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/TzId$Factory;-><init>()V

    const/16 v7, 0x16

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Value$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Value$Factory;-><init>()V

    const/16 v7, 0x17

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/parameter/Vvenue$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/parameter/Vvenue$Factory;-><init>()V

    const/16 v7, 0x18

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v1, v6, [Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 3
    new-instance v6, Lnet/fortuna/ical4j/model/parameter/Display$Factory;

    invoke-direct {v6}, Lnet/fortuna/ical4j/model/parameter/Display$Factory;-><init>()V

    aput-object v6, v1, v2

    new-instance v2, Lnet/fortuna/ical4j/model/parameter/Email$Factory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/parameter/Email$Factory;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lnet/fortuna/ical4j/model/parameter/Feature$Factory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/parameter/Feature$Factory;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lnet/fortuna/ical4j/model/parameter/Label$Factory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/parameter/Label$Factory;-><init>()V

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
