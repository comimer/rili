.class public Lnet/fortuna/ical4j/model/component/VAlarm;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VAlarm$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71b6d0302f1d4f6aL


# instance fields
.field private final actionValidators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/fortuna/ical4j/model/property/Action;",
            "Lnet/fortuna/ical4j/validate/Validator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 14

    const-string v0, "VALARM"

    .line 1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    .line 3
    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v3, 0x1

    new-array v4, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v6, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v7, "ATTACH"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-direct {v2, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/validate/ComponentValidator;

    new-array v4, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v9, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v10, "DESCRIPTION"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v9, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v5, v4, v8

    invoke-direct {v2, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v4, 0x2

    new-array v5, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v11, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v12, "SUMMARY"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v11, v5, v8

    new-instance v11, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v12, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrMore:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v13, "ATTENDEE"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v11, v5, v3

    invoke-direct {v2, v5}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/validate/ComponentValidator;

    new-array v4, v4, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v9, v7}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v5, v4, v8

    new-instance v5, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v5, v4, v3

    invoke-direct {v2, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/time/temporal/TemporalAmount;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;-><init>()V

    .line 16
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Trigger;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/Trigger;-><init>(Ljava/time/temporal/TemporalAmount;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;-><init>()V

    .line 14
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Trigger;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/Trigger;-><init>(Lnet/fortuna/ical4j/model/DateTime;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 13

    const-string v0, "VALARM"

    .line 7
    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    .line 9
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v1, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v2, 0x1

    new-array v3, v2, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v4, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v5, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v6, "ATTACH"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v4, v3, v7

    invoke-direct {v1, v3}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v1, Lnet/fortuna/ical4j/validate/ComponentValidator;

    new-array v3, v2, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v4, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v8, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v9, "DESCRIPTION"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v8, v10}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v4, v3, v7

    invoke-direct {v1, v3}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v1, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v3, 0x2

    new-array v4, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    const-string v11, "SUMMARY"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v8, v11}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v10, v4, v7

    new-instance v10, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v11, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrMore:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v12, "ATTENDEE"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v10, v4, v2

    invoke-direct {v1, v4}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v1, Lnet/fortuna/ical4j/validate/ComponentValidator;

    new-array v3, v3, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v4, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v8, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v4, v3, v7

    new-instance v4, Lnet/fortuna/ical4j/validate/ValidationRule;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAction()Lnet/fortuna/ical4j/model/property/Action;
    .locals 1

    .line 1
    const-string v0, "ACTION"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Action;

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

.method public final getAttachment()Lnet/fortuna/ical4j/model/property/Attach;
    .locals 1

    .line 1
    const-string v0, "ATTACH"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Attach;

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

.method public final getDescription()Lnet/fortuna/ical4j/model/property/Description;
    .locals 1

    .line 1
    const-string v0, "DESCRIPTION"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Description;

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

.method public final getRepeat()Lnet/fortuna/ical4j/model/property/Repeat;
    .locals 1

    .line 1
    const-string v0, "REPEAT"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Repeat;

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

.method public final getSummary()Lnet/fortuna/ical4j/model/property/Summary;
    .locals 1

    .line 1
    const-string v0, "SUMMARY"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Summary;

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

.method public final getTrigger()Lnet/fortuna/ical4j/model/property/Trigger;
    .locals 1

    .line 1
    const-string v0, "TRIGGER"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/Trigger;

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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "VALARM validation included in VEVENT or VTODO method validator."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
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

.method public final validate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ACTION"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "TRIGGER"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "DURATION"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "REPEAT"

    .line 33
    .line 34
    invoke-static {v2, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    :try_end_0
    .catch Lnet/fortuna/ical4j/validate/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    .line 67
    .line 68
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getAction()Lnet/fortuna/ical4j/model/property/Action;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lnet/fortuna/ical4j/validate/Validator;

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    invoke-interface {v0, p0}, Lnet/fortuna/ical4j/validate/Validator;->validate(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->validateProperties()V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
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
.end method
