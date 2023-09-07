.class public Lnet/fortuna/ical4j/transform/command/AttendeeUpdate;
.super Ljava/lang/Object;
.source "AttendeeUpdate.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/Transformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/Transformer<",
        "Lnet/fortuna/ical4j/model/Component;",
        ">;"
    }
.end annotation


# instance fields
.field private final attendee:Lnet/fortuna/ical4j/model/property/Attendee;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/property/Attendee;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/command/AttendeeUpdate;->attendee:Lnet/fortuna/ical4j/model/property/Attendee;

    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/command/AttendeeUpdate;->transform(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Component;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Component;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    const-string v1, "ATTENDEE"

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lnet/fortuna/ical4j/transform/command/AttendeeUpdate;->attendee:Lnet/fortuna/ical4j/model/property/Attendee;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lnet/fortuna/ical4j/transform/command/AttendeeUpdate;->attendee:Lnet/fortuna/ical4j/model/property/Attendee;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Lnet/fortuna/ical4j/model/Property;)Z

    .line 5
    :cond_0
    iget-object v1, p0, Lnet/fortuna/ical4j/transform/command/AttendeeUpdate;->attendee:Lnet/fortuna/ical4j/model/property/Attendee;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 6
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method
