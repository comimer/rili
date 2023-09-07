.class public Lnet/fortuna/ical4j/model/component/VFreeBusy;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VFreeBusy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VFreeBusy$Factory;,
        Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;,
        Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe86092d3e26fcf8L


# instance fields
.field private final methodValidators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/fortuna/ical4j/model/property/Method;",
            "Lnet/fortuna/ical4j/validate/Validator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;-><init>()V

    .line 14
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 15
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-direct {v0, p2, v2}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;Ljava/time/temporal/TemporalAmount;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;-><init>()V

    .line 17
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 18
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-direct {v0, p2, v2}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 19
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance p2, Lnet/fortuna/ical4j/model/property/Duration;

    invoke-direct {p2, p3}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Ljava/time/temporal/TemporalAmount;)V

    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "VFREEBUSY"

    move-object/from16 v2, p1

    .line 8
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    .line 10
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v4, 0x4

    new-array v4, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v6, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrMore:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v7, "FREEBUSY"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v5, v4, v8

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v9, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v10, "DTSTAMP"

    const-string v11, "DTSTART"

    const-string v12, "DTEND"

    const-string v13, "ORGANIZER"

    const-string v14, "UID"

    filled-new-array {v10, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v9, v15}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v15, 0x1

    aput-object v5, v4, v15

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v15, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v8, "URL"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v15, v0}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object v5, v4, v0

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v0, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->None:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    move-object/from16 v16, v7

    const-string v7, "ATTENDEE"

    move-object/from16 v17, v10

    const-string v10, "DURATION"

    move-object/from16 v18, v11

    const-string v11, "REQUEST-STATUS"

    move-object/from16 v19, v12

    filled-new-array {v7, v10, v11}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v0, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x3

    aput-object v5, v4, v12

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/ComponentValidator;

    new-array v4, v12, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v20, "ATTENDEE"

    const-string v21, "DTSTAMP"

    const-string v22, "DTEND"

    const-string v23, "DTSTART"

    const-string v24, "ORGANIZER"

    const-string v25, "UID"

    filled-new-array/range {v20 .. v25}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v9, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v5, v4, v12

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v15, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v5, v4, v12

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v12, "SEQUENCE"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v0, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x2

    aput-object v5, v4, v12

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v4, 0x3

    new-array v4, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    move-object/from16 v12, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    filled-new-array {v6, v12, v7, v13, v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    move-object/from16 v6, v16

    filled-new-array {v6, v10, v11, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object v5, v4, v0

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/component/VFreeBusy;",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/CalendarComponent;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;-><init>()V

    const-string v0, "DTSTART"

    .line 21
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    const-string v1, "DTEND"

    .line 22
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    const-string v2, "DURATION"

    .line 23
    invoke-virtual {p1, v2}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/Duration;

    .line 24
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    new-instance v3, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 25
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    new-instance v3, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    new-instance v4, Lnet/fortuna/ical4j/model/property/Duration;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Ljava/time/temporal/TemporalAmount;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Ljava/time/temporal/TemporalAmount;)V

    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 27
    new-instance v3, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 28
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 29
    new-instance v1, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    invoke-direct {v1, p0, v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->start(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->end(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Ljava/time/temporal/TemporalAmount;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->access$100(Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;Ljava/time/temporal/TemporalAmount;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->components(Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->build()Lnet/fortuna/ical4j/model/property/FreeBusy;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object p2

    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 35
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 37
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 38
    new-instance v1, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;

    invoke-direct {v1, p0, v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->start(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->end(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;

    move-result-object p1

    .line 40
    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->components(Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->build()Lnet/fortuna/ical4j/model/property/FreeBusy;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object p2

    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 43
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "VFREEBUSY"

    .line 2
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    .line 4
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v4, 0x4

    new-array v4, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v6, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrMore:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v7, "FREEBUSY"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v5, v4, v8

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v9, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v10, "DTSTAMP"

    const-string v11, "DTSTART"

    const-string v12, "DTEND"

    const-string v13, "ORGANIZER"

    const-string v14, "UID"

    filled-new-array {v10, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v9, v15}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v15, 0x1

    aput-object v5, v4, v15

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v15, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v8, "URL"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v15, v0}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object v5, v4, v0

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v0, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->None:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    move-object/from16 v16, v7

    const-string v7, "ATTENDEE"

    move-object/from16 v17, v10

    const-string v10, "DURATION"

    move-object/from16 v18, v11

    const-string v11, "REQUEST-STATUS"

    move-object/from16 v19, v12

    filled-new-array {v7, v10, v11}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v0, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x3

    aput-object v5, v4, v12

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/ComponentValidator;

    new-array v4, v12, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v20, "ATTENDEE"

    const-string v21, "DTSTAMP"

    const-string v22, "DTEND"

    const-string v23, "DTSTART"

    const-string v24, "ORGANIZER"

    const-string v25, "UID"

    filled-new-array/range {v20 .. v25}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v9, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v5, v4, v12

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v15, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v5, v4, v12

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v12, "SEQUENCE"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v0, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v12, 0x2

    aput-object v5, v4, v12

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v3, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v4, 0x3

    new-array v4, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    move-object/from16 v12, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    filled-new-array {v6, v12, v7, v13, v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    move-object/from16 v6, v16

    filled-new-array {v6, v10, v11, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object v5, v4, v0

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getConsumedTime(Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
    .line 6
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
.end method

.method private getConsumedTime(Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/CalendarComponent;",
            ">;",
            "Lnet/fortuna/ical4j/model/DateTime;",
            "Lnet/fortuna/ical4j/model/DateTime;",
            ")",
            "Lnet/fortuna/ical4j/model/PeriodList;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "VEVENT"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lnet/fortuna/ical4j/model/Component;

    .line 27
    .line 28
    check-cast v1, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, p2, p3, v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getConsumedTime(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Z)Lnet/fortuna/ical4j/model/PeriodList;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->normalise()Lnet/fortuna/ical4j/model/PeriodList;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method private synthetic lambda$validate$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method private synthetic lambda$validate$1(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method public static synthetic s(Lnet/fortuna/ical4j/model/component/VFreeBusy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->lambda$validate$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lnet/fortuna/ical4j/model/component/VFreeBusy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->lambda$validate$1(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getContact()Lnet/fortuna/ical4j/model/property/Contact;
    .locals 1

    .line 1
    const-string v0, "CONTACT"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Contact;

    .line 8
    .line 9
    return-object v0
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
.end method

.method public final getDateStamp()Lnet/fortuna/ical4j/model/property/DtStamp;
    .locals 1

    .line 1
    const-string v0, "DTSTAMP"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    .line 8
    .line 9
    return-object v0
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
.end method

.method public final getDuration()Lnet/fortuna/ical4j/model/property/Duration;
    .locals 1

    .line 1
    const-string v0, "DURATION"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Duration;

    .line 8
    .line 9
    return-object v0
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
.end method

.method public final getEndDate()Lnet/fortuna/ical4j/model/property/DtEnd;
    .locals 1

    .line 1
    const-string v0, "DTEND"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 8
    .line 9
    return-object v0
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
.end method

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .line 1
    const-string v0, "ORGANIZER"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Organizer;

    .line 8
    .line 9
    return-object v0
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
.end method

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .line 1
    const-string v0, "DTSTART"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 8
    .line 9
    return-object v0
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
.end method

.method public final getUid()Lnet/fortuna/ical4j/model/property/Uid;
    .locals 1

    .line 1
    const-string v0, "UID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Uid;

    .line 8
    .line 9
    return-object v0
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
.end method

.method public final getUrl()Lnet/fortuna/ical4j/model/property/Url;
    .locals 1

    .line 1
    const-string v0, "URL"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Url;

    .line 8
    .line 9
    return-object v0
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
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/validate/Validator;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lnet/fortuna/ical4j/validate/Validator;

    .line 8
    .line 9
    return-object p1
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

.method public final validate(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    const-string v0, "ical4j.validation.relaxed"

    .line 2
    .line 3
    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "UID"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "DTSTAMP"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v2, "CONTACT"

    .line 28
    .line 29
    const-string v3, "DTSTART"

    .line 30
    .line 31
    const-string v4, "DTEND"

    .line 32
    .line 33
    const-string v5, "DURATION"

    .line 34
    .line 35
    const-string v6, "DTSTAMP"

    .line 36
    .line 37
    const-string v7, "ORGANIZER"

    .line 38
    .line 39
    const-string v8, "UID"

    .line 40
    .line 41
    const-string v9, "URL"

    .line 42
    .line 43
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lnet/fortuna/ical4j/model/component/f;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lnet/fortuna/ical4j/model/component/f;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "RRULE"

    .line 60
    .line 61
    const-string v1, "EXRULE"

    .line 62
    .line 63
    const-string v2, "RDATE"

    .line 64
    .line 65
    const-string v3, "EXDATE"

    .line 66
    .line 67
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Lnet/fortuna/ical4j/model/component/g;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lnet/fortuna/ical4j/model/component/g;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "DTSTART"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance p1, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 101
    .line 102
    const-string v0, "DTSTART must be specified in UTC time"

    .line 103
    .line 104
    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_2
    :goto_0
    const-string v1, "DTEND"

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    new-instance p1, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 126
    .line 127
    const-string v0, "DTEND must be specified in UTC time"

    .line 128
    .line 129
    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 134
    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    new-instance p1, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 153
    .line 154
    const-string v0, "Property [DTEND] must be later in time than [DTSTART]"

    .line 155
    .line 156
    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 161
    .line 162
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->validateProperties()V

    .line 163
    .line 164
    .line 165
    :cond_7
    return-void
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
.end method
