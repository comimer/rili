.class public Lnet/fortuna/ical4j/model/ComponentSequenceComparator;
.super Ljava/lang/Object;
.source "ComponentSequenceComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/fortuna/ical4j/model/Component;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Component;

    check-cast p2, Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/ComponentSequenceComparator;->compare(Lnet/fortuna/ical4j/model/Component;Lnet/fortuna/ical4j/model/Component;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/fortuna/ical4j/model/Component;Lnet/fortuna/ical4j/model/Component;)I
    .locals 4

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Sequence;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Sequence;-><init>(I)V

    const-string v1, "SEQUENCE"

    .line 3
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/property/Sequence;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 4
    invoke-virtual {p2, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Sequence;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 5
    invoke-virtual {v2, v0}, Lnet/fortuna/ical4j/model/property/Sequence;->compareTo(Lnet/fortuna/ical4j/model/property/Sequence;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>(Lnet/fortuna/ical4j/model/DateTime;)V

    const-string v1, "DTSTAMP"

    .line 7
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/DtStamp;

    .line 8
    invoke-virtual {p2, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p2

    check-cast p2, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/fortuna/ical4j/model/property/DtStamp;

    .line 9
    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/property/DtStamp;->compareTo(Lnet/fortuna/ical4j/model/property/DtStamp;)I

    move-result v0

    :cond_0
    return v0
.end method
