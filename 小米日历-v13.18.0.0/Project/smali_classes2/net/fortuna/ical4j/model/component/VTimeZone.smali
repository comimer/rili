.class public Lnet/fortuna/ical4j/model/component/VTimeZone;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VTimeZone$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e20a3e5ac8d93b7L


# instance fields
.field private final itipValidator:Lnet/fortuna/ical4j/validate/Validator;

.field private observances:Lnet/fortuna/ical4j/model/ComponentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/Observance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "VTIMEZONE"

    .line 1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;

    const/4 v1, 0x0

    new-array v1, v1, [Lnet/fortuna/ical4j/validate/ValidationRule;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/Observance;",
            ">;)V"
        }
    .end annotation

    const-string v0, "VTIMEZONE"

    .line 7
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;

    const/4 v1, 0x0

    new-array v1, v1, [Lnet/fortuna/ical4j/validate/ValidationRule;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    .line 9
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1

    const-string v0, "VTIMEZONE"

    .line 4
    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 5
    new-instance p1, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/fortuna/ical4j/validate/ValidationRule;

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    .line 6
    new-instance p1, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {p1}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/PropertyList;",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/Observance;",
            ">;)V"
        }
    .end annotation

    const-string v0, "VTIMEZONE"

    .line 10
    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 11
    new-instance p1, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/fortuna/ical4j/validate/ValidationRule;

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/component/VTimeZoneValidator;-><init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    .line 12
    iput-object p2, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    return-void
.end method


# virtual methods
.method public copy()Lnet/fortuna/ical4j/model/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/fortuna/ical4j/model/Component;->copy()Lnet/fortuna/ical4j/model/Component;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 6
    .line 7
    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ComponentList;-><init>(Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    .line 15
    .line 16
    return-object v0
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/Component;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    .line 12
    .line 13
    check-cast p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 14
    .line 15
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1

    .line 29
    :cond_1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/Component;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final getApplicableObservance(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/Observance;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lnet/fortuna/ical4j/model/component/Observance;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lnet/fortuna/ical4j/model/component/Observance;->getLatestOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    :cond_1
    move-object v1, v3

    .line 38
    move-object v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v1
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
.end method

.method public final getLastModified()Lnet/fortuna/ical4j/model/property/LastModified;
    .locals 1

    .line 1
    const-string v0, "LAST-MODIFIED"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/LastModified;

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

.method public final getObservances()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/fortuna/ical4j/model/ComponentList<",
            "Lnet/fortuna/ical4j/model/component/Observance;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

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

.method public final getTimeZoneId()Lnet/fortuna/ical4j/model/property/TzId;
    .locals 1

    .line 1
    const-string v0, "TZID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/TzId;

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

.method public final getTimeZoneUrl()Lnet/fortuna/ical4j/model/property/TzUrl;
    .locals 1

    .line 1
    const-string v0, "TZURL"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/TzUrl;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->itipValidator:Lnet/fortuna/ical4j/validate/Validator;

    .line 2
    .line 3
    return-object p1
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/builder/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/e;->t()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
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

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BEGIN:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "\r\n"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VTimeZone;->observances:Lnet/fortuna/ical4j/model/ComponentList;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "END"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x3a

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
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

.method public final validate(Z)V
    .locals 2
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
    const-string v1, "TZID"

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
    const-string v1, "LAST-MODIFIED"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TZURL"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "STANDARD"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "DAYLIGHT"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 54
    .line 55
    const-string v0, "Sub-components [STANDARD,DAYLIGHT] must be specified at least once"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lnet/fortuna/ical4j/model/component/Observance;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/component/Observance;->validate(Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->validateProperties()V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void
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
