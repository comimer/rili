.class public Lnet/fortuna/ical4j/validate/DefaultCalendarValidatorFactory;
.super Ljava/lang/Object;
.source "DefaultCalendarValidatorFactory.java"

# interfaces
.implements Lnet/fortuna/ical4j/validate/CalendarValidatorFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Lnet/fortuna/ical4j/validate/Validator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/fortuna/ical4j/validate/Validator<",
            "Lnet/fortuna/ical4j/model/Calendar;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Lnet/fortuna/ical4j/validate/ValidationRule;

    .line 5
    .line 6
    new-instance v2, Lnet/fortuna/ical4j/validate/ValidationRule;

    .line 7
    .line 8
    sget-object v3, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->One:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    .line 9
    .line 10
    const-string v4, "PRODID"

    .line 11
    .line 12
    const-string v5, "VERSION"

    .line 13
    .line 14
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-direct {v2, v3, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    new-instance v2, Lnet/fortuna/ical4j/validate/ValidationRule;

    .line 25
    .line 26
    sget-object v3, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    .line 27
    .line 28
    const-string v4, "CALSCALE"

    .line 29
    .line 30
    const-string v5, "METHOD"

    .line 31
    .line 32
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {v2, v3, v4}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    .line 43
    .line 44
    .line 45
    return-object v0
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
.end method
