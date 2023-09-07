.class public Lnet/fortuna/ical4j/model/property/Priority;
.super Lnet/fortuna/ical4j/model/Property;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Priority$Factory;,
        Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;
    }
.end annotation


# static fields
.field public static final HIGH:Lnet/fortuna/ical4j/model/property/Priority;

.field public static final LOW:Lnet/fortuna/ical4j/model/property/Priority;

.field public static final MEDIUM:Lnet/fortuna/ical4j/model/property/Priority;

.field public static final UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

.field private static final serialVersionUID:J = -0x4e78599890425e45L


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    .line 9
    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lnet/fortuna/ical4j/model/property/Priority;->HIGH:Lnet/fortuna/ical4j/model/property/Priority;

    .line 17
    .line 18
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lnet/fortuna/ical4j/model/property/Priority;->MEDIUM:Lnet/fortuna/ical4j/model/property/Priority;

    .line 25
    .line 26
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;

    .line 27
    .line 28
    const/16 v1, 0x9

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lnet/fortuna/ical4j/model/property/Priority;->LOW:Lnet/fortuna/ical4j/model/property/Priority;

    .line 34
    .line 35
    return-void
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

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Priority$Factory;-><init>()V

    const-string v1, "PRIORITY"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Priority;->getLevel()I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Priority$Factory;-><init>()V

    const-string v1, "PRIORITY"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 9
    iput p1, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;I)V
    .locals 2

    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Priority$Factory;-><init>()V

    const-string v1, "PRIORITY"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 11
    iput p2, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Priority$Factory;-><init>()V

    const-string v1, "PRIORITY"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ical4j.parsing.relaxed"

    .line 5
    invoke-static {p2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    sget-object p1, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    iget p1, p1, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    iput p1, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    :goto_0
    return-void

    .line 7
    :cond_0
    throw p1
.end method


# virtual methods
.method public final getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    .line 2
    .line 3
    return v0
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
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Priority;->getLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

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

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

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

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

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

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    return-void
.end method
