.class public Lnet/fortuna/ical4j/transform/AddTransformer;
.super Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;
.source "AddTransformer.java"


# instance fields
.field private final organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/property/Organizer;Lnet/fortuna/ical4j/util/UidGenerator;)V
    .locals 2

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, p2, v1, v1}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;-><init>(Lnet/fortuna/ical4j/model/property/Method;Lnet/fortuna/ical4j/util/UidGenerator;ZZ)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;-><init>(Lnet/fortuna/ical4j/model/property/Organizer;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lnet/fortuna/ical4j/transform/AddTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

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

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/AddTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 3

    .line 2
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

    .line 3
    iget-object v2, p0, Lnet/fortuna/ical4j/transform/AddTransformer;->organizerUpdate:Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/transform/command/OrganizerUpdate;->transform(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Component;

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/transform/AbstractMethodTransformer;->transform(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method
