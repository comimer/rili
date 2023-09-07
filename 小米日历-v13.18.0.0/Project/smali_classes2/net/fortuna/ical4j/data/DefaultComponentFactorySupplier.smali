.class Lnet/fortuna/ical4j/data/DefaultComponentFactorySupplier;
.super Ljava/lang/Object;
.source "DefaultComponentFactorySupplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/List<",
        "Lnet/fortuna/ical4j/model/ComponentFactory<",
        "+",
        "Lnet/fortuna/ical4j/model/Component;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/data/DefaultComponentFactorySupplier;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ComponentFactory<",
            "+",
            "Lnet/fortuna/ical4j/model/Component;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0xb

    new-array v0, v0, [Lnet/fortuna/ical4j/model/ComponentFactory;

    .line 2
    new-instance v1, Lnet/fortuna/ical4j/model/component/Available$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/Available$Factory;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/Daylight$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/Daylight$Factory;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/Standard$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/Standard$Factory;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/VAlarm$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/VAlarm$Factory;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/VAvailability$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/VAvailability$Factory;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/VEvent$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/VEvent$Factory;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/VFreeBusy$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$Factory;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/VJournal$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/VJournal$Factory;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/VTimeZone$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/VTimeZone$Factory;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/VToDo$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/VToDo$Factory;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/component/VVenue$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/component/VVenue$Factory;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
