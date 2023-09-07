.class public Lnet/fortuna/ical4j/data/DefaultPropertyFactorySupplier;
.super Ljava/lang/Object;
.source "DefaultPropertyFactorySupplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/List<",
        "Lnet/fortuna/ical4j/model/PropertyFactory<",
        "+",
        "Lnet/fortuna/ical4j/model/Property;",
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
    invoke-virtual {p0}, Lnet/fortuna/ical4j/data/DefaultPropertyFactorySupplier;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/PropertyFactory<",
            "+",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x3a

    new-array v0, v0, [Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 2
    new-instance v1, Lnet/fortuna/ical4j/model/property/Acknowledged$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Acknowledged$Factory;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/model/property/Action$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Action$Factory;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lnet/fortuna/ical4j/model/property/Attach$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Attach$Factory;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lnet/fortuna/ical4j/model/property/Attendee$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Attendee$Factory;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lnet/fortuna/ical4j/model/property/BusyType$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/BusyType$Factory;-><init>()V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lnet/fortuna/ical4j/model/property/CalScale$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/CalScale$Factory;-><init>()V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Lnet/fortuna/ical4j/model/property/Categories$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Categories$Factory;-><init>()V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Clazz$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Clazz$Factory;-><init>()V

    const/4 v8, 0x7

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Comment$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Comment$Factory;-><init>()V

    const/16 v8, 0x8

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Completed$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Completed$Factory;-><init>()V

    const/16 v8, 0x9

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Contact$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Contact$Factory;-><init>()V

    const/16 v8, 0xa

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Country$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Country$Factory;-><init>()V

    const/16 v8, 0xb

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Created$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Created$Factory;-><init>()V

    const/16 v8, 0xc

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Description$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Description$Factory;-><init>()V

    const/16 v8, 0xd

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtEnd$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtEnd$Factory;-><init>()V

    const/16 v8, 0xe

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp$Factory;-><init>()V

    const/16 v8, 0xf

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStart$Factory;-><init>()V

    const/16 v8, 0x10

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Due$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Due$Factory;-><init>()V

    const/16 v8, 0x11

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Duration$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Duration$Factory;-><init>()V

    const/16 v8, 0x12

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/ExDate$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/ExDate$Factory;-><init>()V

    const/16 v8, 0x13

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/ExRule$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/ExRule$Factory;-><init>()V

    const/16 v8, 0x14

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/ExtendedAddress$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/ExtendedAddress$Factory;-><init>()V

    const/16 v8, 0x15

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/FreeBusy$Factory;-><init>()V

    const/16 v8, 0x16

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Geo$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Geo$Factory;-><init>()V

    const/16 v8, 0x17

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/LastModified$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/LastModified$Factory;-><init>()V

    const/16 v8, 0x18

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Locality$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Locality$Factory;-><init>()V

    const/16 v8, 0x19

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Location$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Location$Factory;-><init>()V

    const/16 v8, 0x1a

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/LocationType$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/LocationType$Factory;-><init>()V

    const/16 v8, 0x1b

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Method$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Method$Factory;-><init>()V

    const/16 v8, 0x1c

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Name$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Name$Factory;-><init>()V

    const/16 v8, 0x1d

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Organizer$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Organizer$Factory;-><init>()V

    const/16 v8, 0x1e

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/PercentComplete$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/PercentComplete$Factory;-><init>()V

    const/16 v8, 0x1f

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Postalcode$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Postalcode$Factory;-><init>()V

    const/16 v8, 0x20

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Priority$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Priority$Factory;-><init>()V

    const/16 v8, 0x21

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/ProdId$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/ProdId$Factory;-><init>()V

    const/16 v8, 0x22

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/RDate$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RDate$Factory;-><init>()V

    const/16 v8, 0x23

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RecurrenceId$Factory;-><init>()V

    const/16 v8, 0x24

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Region$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Region$Factory;-><init>()V

    const/16 v8, 0x25

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/RelatedTo$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RelatedTo$Factory;-><init>()V

    const/16 v8, 0x26

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Repeat$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Repeat$Factory;-><init>()V

    const/16 v8, 0x27

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RequestStatus$Factory;-><init>()V

    const/16 v8, 0x28

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Resources$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Resources$Factory;-><init>()V

    const/16 v8, 0x29

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/RRule$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RRule$Factory;-><init>()V

    const/16 v8, 0x2a

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Sequence$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Sequence$Factory;-><init>()V

    const/16 v8, 0x2b

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Status$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Status$Factory;-><init>()V

    const/16 v8, 0x2c

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/StreetAddress$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/StreetAddress$Factory;-><init>()V

    const/16 v8, 0x2d

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Summary$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Summary$Factory;-><init>()V

    const/16 v8, 0x2e

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Tel$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Tel$Factory;-><init>()V

    const/16 v8, 0x2f

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Transp$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Transp$Factory;-><init>()V

    const/16 v8, 0x30

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Trigger$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Trigger$Factory;-><init>()V

    const/16 v8, 0x31

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/TzId$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/TzId$Factory;-><init>()V

    const/16 v8, 0x32

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/TzName$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/TzName$Factory;-><init>()V

    const/16 v8, 0x33

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/TzOffsetFrom$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/TzOffsetFrom$Factory;-><init>()V

    const/16 v8, 0x34

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;-><init>()V

    const/16 v8, 0x35

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;-><init>()V

    const/16 v8, 0x36

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Uid$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Uid$Factory;-><init>()V

    const/16 v8, 0x37

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Url$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Url$Factory;-><init>()V

    const/16 v8, 0x38

    aput-object v1, v0, v8

    new-instance v1, Lnet/fortuna/ical4j/model/property/Version$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/Version$Factory;-><init>()V

    const/16 v8, 0x39

    aput-object v1, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v1, v7, [Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 3
    new-instance v7, Lnet/fortuna/ical4j/model/property/Color$Factory;

    invoke-direct {v7}, Lnet/fortuna/ical4j/model/property/Color$Factory;-><init>()V

    aput-object v7, v1, v2

    new-instance v2, Lnet/fortuna/ical4j/model/property/Conference$Factory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/property/Conference$Factory;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lnet/fortuna/ical4j/model/property/Image$Factory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/property/Image$Factory;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lnet/fortuna/ical4j/model/property/Source$Factory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/property/Source$Factory;-><init>()V

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method
