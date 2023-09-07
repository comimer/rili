.class public Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;
.super Lnet/fortuna/ical4j/validate/ComponentValidator;
.source "VTimeZoneValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/validate/ComponentValidator<",
        "Lnet/fortuna/ical4j/model/component/VTimeZone;",
        ">;"
    }
.end annotation


# instance fields
.field private final itipValidator:Lnet/fortuna/ical4j/validate/Validator;


# direct methods
.method public varargs constructor <init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lnet/fortuna/ical4j/validate/ComponentValidator;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lnet/fortuna/ical4j/validate/ValidationRule;

    .line 8
    .line 9
    new-instance v1, Lnet/fortuna/ical4j/validate/ValidationRule;

    .line 10
    .line 11
    sget-object v2, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    .line 12
    .line 13
    const-string v3, "DTSTART"

    .line 14
    .line 15
    const-string v4, "TZOFFSETFROM"

    .line 16
    .line 17
    const-string v5, "TZOFFSETTO"

    .line 18
    .line 19
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    new-instance v1, Lnet/fortuna/ical4j/validate/ValidationRule;

    .line 30
    .line 31
    sget-object v2, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    .line 32
    .line 33
    const-string v3, "TZNAME"

    .line 34
    .line 35
    filled-new-array {v3}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/ComponentValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    .line 49
    .line 50
    return-void
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
    check-cast p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;->validate(Lnet/fortuna/ical4j/model/component/VTimeZone;)V

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
    check-cast p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;->validate(Lnet/fortuna/ical4j/model/component/VTimeZone;)V

    return-void
.end method

.method public validate(Lnet/fortuna/ical4j/model/component/VTimeZone;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->validate(Lnet/fortuna/ical4j/model/Component;)V

    .line 4
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    iget-object v0, p0, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrb/b;

    invoke-direct {v1, v0}, Lrb/b;-><init>(Lnet/fortuna/ical4j/validate/Validator;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
