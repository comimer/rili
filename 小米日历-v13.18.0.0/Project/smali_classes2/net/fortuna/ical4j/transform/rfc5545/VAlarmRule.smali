.class public Lnet/fortuna/ical4j/transform/rfc5545/VAlarmRule;
.super Ljava/lang/Object;
.source "VAlarmRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule<",
        "Lnet/fortuna/ical4j/model/component/VAlarm;",
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
.method public bridge synthetic applyTo(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/rfc5545/VAlarmRule;->applyTo(Lnet/fortuna/ical4j/model/component/VAlarm;)V

    return-void
.end method

.method public applyTo(Lnet/fortuna/ical4j/model/component/VAlarm;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VAlarm;->getAction()Lnet/fortuna/ical4j/model/property/Action;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Action;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VAlarm;->getDescription()Lnet/fortuna/ical4j/model/property/Description;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VAlarm;->getDescription()Lnet/fortuna/ical4j/model/property/Description;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Description;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/property/Description;

    const-string v1, "display"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/Description;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/fortuna/ical4j/model/component/VAlarm;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
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
.end method
