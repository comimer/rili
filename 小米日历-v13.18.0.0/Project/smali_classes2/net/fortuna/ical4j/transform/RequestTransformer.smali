.class public Lnet/fortuna/ical4j/transform/RequestTransformer;
.super Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;
.source "RequestTransformer.java"


# instance fields
.field private final organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V
    .locals 2

    .line 3
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1, v1}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/util/UidGenerator;ZZ)V

    .line 4
    new-instance p2, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    invoke-direct {p2, p1}, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;)V

    iput-object p2, p0, Lnet/fortuna/ical4j/transform/RequestTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/util/UidGenerator;)V
    .locals 3

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/util/UidGenerator;ZZ)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/RequestTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/RequestTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 3

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/transform/RequestTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 4
    iget-object v2, p0, Lnet/fortuna/ical4j/transform/RequestTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;->transform(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Component;

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method
