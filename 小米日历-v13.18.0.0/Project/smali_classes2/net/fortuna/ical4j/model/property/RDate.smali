.class public Lnet/fortuna/ical4j/model/property/RDate;
.super Lnet/fortuna/ical4j/model/property/DateListProperty;
.source "RDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/RDate$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2e145d84bfcd3161L


# instance fields
.field private periods:Lnet/fortuna/ical4j/model/PeriodList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/RDate$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RDate$Factory;-><init>()V

    const-string v1, "RDATE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateList;)V
    .locals 2

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/property/RDate$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RDate$Factory;-><init>()V

    const-string v1, "RDATE"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 7
    new-instance p1, Lnet/fortuna/ical4j/model/PeriodList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/RDate$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RDate$Factory;-><init>()V

    const-string v1, "RDATE"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    new-instance p1, Lnet/fortuna/ical4j/model/PeriodList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 5
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/RDate;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;)V
    .locals 2

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/property/RDate$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RDate$Factory;-><init>()V

    const-string v1, "RDATE"

    invoke-direct {p0, v1, p1, p2, v0}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 9
    new-instance p1, Lnet/fortuna/ical4j/model/PeriodList;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PeriodList;)V
    .locals 3

    .line 12
    new-instance v0, Lnet/fortuna/ical4j/model/DateList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateList;-><init>(Z)V

    new-instance v1, Lnet/fortuna/ical4j/model/property/RDate$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RDate$Factory;-><init>()V

    const-string v2, "RDATE"

    invoke-direct {p0, v2, p1, v0, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 13
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PeriodList;)V
    .locals 3

    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/DateList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateList;-><init>(Z)V

    new-instance v1, Lnet/fortuna/ical4j/model/property/RDate$Factory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/RDate$Factory;-><init>()V

    const-string v2, "RDATE"

    invoke-direct {p0, v2, v0, v1}, Lnet/fortuna/ical4j/model/property/DateListProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 11
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    return-void
.end method


# virtual methods
.method public final getPeriods()Lnet/fortuna/ical4j/model/PeriodList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

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

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 12
    .line 13
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isUnmodifiable()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getValue()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
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
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 12
    .line 13
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isUnmodifiable()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PeriodList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 2
    .line 3
    const-string v1, "VALUE"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RDate;->periods:Lnet/fortuna/ical4j/model/PeriodList;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setValue(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "VALUE"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 42
    .line 43
    const-string v1, "Parameter [VALUE] is invalid"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "TZID"

    .line 54
    .line 55
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 56
    .line 57
    .line 58
    return-void
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
