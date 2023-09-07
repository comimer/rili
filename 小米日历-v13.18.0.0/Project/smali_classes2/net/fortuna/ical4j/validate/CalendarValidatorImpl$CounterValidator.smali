.class public Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CounterValidator;
.super Ljava/lang/Object;
.source "CalendarValidatorImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/validate/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CounterValidator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/validate/Validator<",
        "Lnet/fortuna/ical4j/model/Calendar;",
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
.method public bridge synthetic validate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CounterValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    return-void
.end method

.method public validate(Lnet/fortuna/ical4j/model/Calendar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    const-string v0, "VEVENT"

    .line 2
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/CalendarComponent;

    move-result-object v0

    const-string v1, "VJOURNAL"

    const-string v2, "VFREEBUSY"

    const-string v3, "VTODO"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 4
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 5
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    invoke-static {v3, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v3}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/CalendarComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    const-string v3, "VTIMEZONE"

    invoke-static {v3, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 8
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 9
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    invoke-static {v1, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    :cond_1
    :goto_0
    return-void
.end method
