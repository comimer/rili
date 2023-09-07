.class public Lnet/fortuna/ical4j/validate/component/VEventValidator;
.super Lnet/fortuna/ical4j/validate/ComponentValidator;
.source "VEventValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/validate/ComponentValidator<",
        "Lnet/fortuna/ical4j/model/component/VEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final alarmsAllowed:Z

.field private final itipValidator:Lnet/fortuna/ical4j/validate/Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/validate/Validator<",
            "Lnet/fortuna/ical4j/model/component/VAlarm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V
    .locals 7

    .line 2
    invoke-direct {p0, p2}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    .line 3
    new-instance p2, Lnet/fortuna/ical4j/validate/ComponentValidator;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v1, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v2, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v3, "ACTION"

    const-string v4, "TRIGGER"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v2, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v3, "DESCRIPTION"

    const-string v4, "DURATION"

    const-string v5, "REPEAT"

    const-string v6, "SUMMARY"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p2, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    iput-object p2, p0, Lnet/fortuna/ical4j/validate/component/VEventValidator;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    .line 4
    iput-boolean p1, p0, Lnet/fortuna/ical4j/validate/component/VEventValidator;->alarmsAllowed:Z

    return-void
.end method

.method public varargs constructor <init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/validate/component/VEventValidator;-><init>(Z[Lnet/fortuna/ical4j/validate/ValidationRule;)V

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
    check-cast p1, Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/validate/component/VEventValidator;->validate(Lnet/fortuna/ical4j/model/component/VEvent;)V

    return-void
.end method

.method public bridge synthetic validate(Lnet/fortuna/ical4j/model/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 2
    check-cast p1, Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/validate/component/VEventValidator;->validate(Lnet/fortuna/ical4j/model/component/VEvent;)V

    return-void
.end method

.method public validate(Lnet/fortuna/ical4j/model/component/VEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->validate(Lnet/fortuna/ical4j/model/Component;)V

    .line 4
    iget-boolean v0, p0, Lnet/fortuna/ical4j/validate/component/VEventValidator;->alarmsAllowed:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    iget-object v0, p0, Lnet/fortuna/ical4j/validate/component/VEventValidator;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrb/a;

    invoke-direct {v1, v0}, Lrb/a;-><init>(Lnet/fortuna/ical4j/validate/Validator;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    const-string v0, "VALARM"

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    :goto_0
    return-void
.end method
