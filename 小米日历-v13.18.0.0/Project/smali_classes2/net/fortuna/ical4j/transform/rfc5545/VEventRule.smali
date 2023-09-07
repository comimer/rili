.class public Lnet/fortuna/ical4j/transform/rfc5545/VEventRule;
.super Ljava/lang/Object;
.source "VEventRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545ComponentRule<",
        "Lnet/fortuna/ical4j/model/component/VEvent;",
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
    check-cast p1, Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/rfc5545/VEventRule;->applyTo(Lnet/fortuna/ical4j/model/component/VEvent;)V

    return-void
.end method

.method public applyTo(Lnet/fortuna/ical4j/model/component/VEvent;)V
    .locals 6

    const-string v0, "DTSTART"

    .line 2
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    const-string v1, "DTEND"

    .line 3
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    const-string v2, "DURATION"

    .line 4
    invoke-virtual {p1, v2}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Lnet/fortuna/ical4j/model/Property;)Z

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "VALUE"

    .line 7
    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/parameter/Value;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/parameter/Value;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    instance-of v0, v1, Lnet/fortuna/ical4j/model/property/DateProperty;

    if-eqz v0, :cond_1

    .line 13
    check-cast v1, Lnet/fortuna/ical4j/model/property/DateProperty;

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 17
    new-instance v2, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    :cond_1
    const-string v0, "DTSTAMP"

    .line 18
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    :cond_2
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    new-instance v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    :cond_3
    return-void
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/fortuna/ical4j/model/component/VEvent;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/component/VEvent;

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
