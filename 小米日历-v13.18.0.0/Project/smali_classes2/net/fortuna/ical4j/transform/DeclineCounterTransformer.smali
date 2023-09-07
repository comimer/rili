.class public Lnet/fortuna/ical4j/transform/DeclineCounterTransformer;
.super Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;
.source "DeclineCounterTransformer.java"


# instance fields
.field private final organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V
    .locals 3

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, p2, v1, v2}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/util/UidGenerator;ZZ)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lnet/fortuna/ical4j/transform/DeclineCounterTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    .line 14
    .line 15
    return-void
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
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/DeclineCounterTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 3

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getMethod()Lnet/fortuna/ical4j/model/property/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

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
    iget-object v2, p0, Lnet/fortuna/ical4j/transform/DeclineCounterTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;->transform(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Component;

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expecting COUNTER method in source"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
