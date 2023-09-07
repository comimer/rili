.class public Lnet/fortuna/ical4j/model/property/Attendee;
.super Lnet/fortuna/ical4j/model/Property;
.source "Attendee.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Attendee$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7500ada329648df3L


# instance fields
.field private calAddress:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attendee$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attendee$Factory;-><init>()V

    const-string v1, "ATTENDEE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attendee$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attendee$Factory;-><init>()V

    const-string v1, "ATTENDEE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Attendee;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attendee$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attendee$Factory;-><init>()V

    const-string v1, "ATTENDEE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 7
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attendee$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attendee$Factory;-><init>()V

    const-string v1, "ATTENDEE"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Attendee;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/net/URI;)V
    .locals 2

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attendee$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attendee$Factory;-><init>()V

    const-string v1, "ATTENDEE"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 9
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    return-void
.end method

.method public static synthetic b(Lnet/fortuna/ical4j/model/property/Attendee;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/property/Attendee;->lambda$validate$0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$validate$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 6
    .line 7
    .line 8
    return-void
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


# virtual methods
.method public final copy()Lnet/fortuna/ical4j/model/Property;
    .locals 4

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attendee;

    .line 2
    .line 3
    new-instance v1, Lnet/fortuna/ical4j/model/ParameterList;

    .line 4
    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/model/ParameterList;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Attendee;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/net/URI;)V

    .line 16
    .line 17
    .line 18
    return-object v0
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

.method public final getCalAddress()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

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
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getCalAddress()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
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

.method public final setCalAddress(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    .line 2
    .line 3
    return-void
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

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    .line 6
    .line 7
    return-void
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

.method public final validate()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    const-string v0, "CUTYPE"

    .line 2
    .line 3
    const-string v1, "MEMBER"

    .line 4
    .line 5
    const-string v2, "ROLE"

    .line 6
    .line 7
    const-string v3, "PARTSTAT"

    .line 8
    .line 9
    const-string v4, "RSVP"

    .line 10
    .line 11
    const-string v5, "DELEGATED-TO"

    .line 12
    .line 13
    const-string v6, "DELEGATED-FROM"

    .line 14
    .line 15
    const-string v7, "SENT-BY"

    .line 16
    .line 17
    const-string v8, "CN"

    .line 18
    .line 19
    const-string v9, "DIR"

    .line 20
    .line 21
    const-string v10, "LANGUAGE"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lnet/fortuna/ical4j/model/property/a;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lnet/fortuna/ical4j/model/property/a;-><init>(Lnet/fortuna/ical4j/model/property/Attendee;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "SCHEDULE-AGENT"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "SCHEDULE-STATUS"

    .line 53
    .line 54
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 55
    .line 56
    .line 57
    return-void
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
