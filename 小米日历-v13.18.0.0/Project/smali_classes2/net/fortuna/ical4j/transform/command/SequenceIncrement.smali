.class public Lnet/fortuna/ical4j/transform/command/SequenceIncrement;
.super Ljava/lang/Object;
.source "SequenceIncrement.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/Transformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/Transformer<",
        "Lnet/fortuna/ical4j/model/component/CalendarComponent;",
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
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/command/SequenceIncrement;->transform(Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/component/CalendarComponent;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/component/CalendarComponent;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    const-string v1, "SEQUENCE"

    .line 3
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Sequence;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lnet/fortuna/ical4j/model/property/Sequence;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/property/Sequence;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Lnet/fortuna/ical4j/model/Property;)Z

    .line 6
    new-instance v2, Lnet/fortuna/ical4j/model/property/Sequence;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/property/Sequence;-><init>(I)V

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    :goto_0
    return-object p1
.end method
