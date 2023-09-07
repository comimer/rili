.class public Lnet/fortuna/ical4j/model/property/Trigger;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "Trigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Trigger$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x46132619c0b71e52L


# instance fields
.field private duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Trigger$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Trigger$Factory;-><init>()V

    const-string v1, "TRIGGER"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/temporal/TemporalAmount;)V
    .locals 2

    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/property/Trigger$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Trigger$Factory;-><init>()V

    const-string v1, "TRIGGER"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 6
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Trigger;->setDuration(Ljava/time/temporal/TemporalAmount;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/property/Trigger$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Trigger$Factory;-><init>()V

    const-string v1, "TRIGGER"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 11
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Trigger;->setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Dur;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->from(Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->getDuration()Ljava/time/temporal/TemporalAmount;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/property/Trigger;-><init>(Ljava/time/temporal/TemporalAmount;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Trigger$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Trigger$Factory;-><init>()V

    const-string v1, "TRIGGER"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Trigger;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/time/temporal/TemporalAmount;)V
    .locals 2

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/property/Trigger$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Trigger$Factory;-><init>()V

    const-string v1, "TRIGGER"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 9
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Trigger;->setDuration(Ljava/time/temporal/TemporalAmount;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .line 12
    new-instance v0, Lnet/fortuna/ical4j/model/property/Trigger$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Trigger$Factory;-><init>()V

    const-string v1, "TRIGGER"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 13
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Trigger;->setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Dur;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-static {p2}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->from(Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->getDuration()Ljava/time/temporal/TemporalAmount;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/property/Trigger;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/time/temporal/TemporalAmount;)V

    return-void
.end method


# virtual methods
.method public final getDuration()Ljava/time/temporal/TemporalAmount;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->getDuration()Ljava/time/temporal/TemporalAmount;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
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

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getValue()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
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

.method public final setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 14
    .line 15
    .line 16
    return-void
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

.method public final setDuration(Ljava/time/temporal/TemporalAmount;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;-><init>(Ljava/time/temporal/TemporalAmount;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "VALUE"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->parse(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 13
    .line 14
    invoke-super {p0, v0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
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

.method public final validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->validate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "RELATED"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "VALUE"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertNullOrEqual(Lnet/fortuna/ical4j/model/Parameter;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDateTime()Lnet/fortuna/ical4j/model/DateTime;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 49
    .line 50
    const-string v1, "DATE-TIME value not specified"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 64
    .line 65
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertNullOrEqual(Lnet/fortuna/ical4j/model/Parameter;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Trigger;->getDuration()Ljava/time/temporal/TemporalAmount;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    :goto_1
    return-void

    .line 79
    :cond_3
    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 80
    .line 81
    const-string v1, "Duration value not specified"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
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
