.class public Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CancelValidator;
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
    name = "CancelValidator"
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

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CancelValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    return-void
.end method

.method public validate(Lnet/fortuna/ical4j/model/Calendar;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    const-string v0, "VEVENT"

    .line 2
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/CalendarComponent;

    move-result-object v0

    const-string v1, "VTODO"

    const-string v2, "VJOURNAL"

    const-string v3, "VFREEBUSY"

    const-string v4, "VALARM"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v4, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 4
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 5
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 6
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    invoke-static {v1, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/CalendarComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    const-string v1, "VTIMEZONE"

    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 9
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v4, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 10
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 11
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    invoke-static {v2, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1, v2}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/CalendarComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-static {v4, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 14
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    invoke-static {v3, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    :cond_2
    :goto_0
    return-void
.end method
