.class public Lnet/fortuna/ical4j/model/parameter/PartStat;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "PartStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/parameter/PartStat$Factory;
    }
.end annotation


# static fields
.field public static final ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final COMPLETED:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final DELEGATED:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final IN_PROCESS:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field private static final VALUE_ACCEPTED:Ljava/lang/String; = "ACCEPTED"

.field private static final VALUE_COMPLETED:Ljava/lang/String; = "COMPLETED"

.field private static final VALUE_DECLINED:Ljava/lang/String; = "DECLINED"

.field private static final VALUE_DELEGATED:Ljava/lang/String; = "DELEGATED"

.field private static final VALUE_IN_PROCESS:Ljava/lang/String; = "IN-PROCESS"

.field private static final VALUE_NEEDS_ACTION:Ljava/lang/String; = "NEEDS-ACTION"

.field private static final VALUE_TENTATIVE:Ljava/lang/String; = "TENTATIVE"

.field private static final serialVersionUID:J = -0x6d075a166d7d8489L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 2
    .line 3
    const-string v1, "NEEDS-ACTION"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 9
    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 11
    .line 12
    const-string v1, "ACCEPTED"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 18
    .line 19
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 20
    .line 21
    const-string v1, "DECLINED"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 27
    .line 28
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 29
    .line 30
    const-string v1, "TENTATIVE"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 36
    .line 37
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 38
    .line 39
    const-string v1, "DELEGATED"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DELEGATED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 45
    .line 46
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 47
    .line 48
    const-string v1, "COMPLETED"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->COMPLETED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 54
    .line 55
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 56
    .line 57
    const-string v1, "IN-PROCESS"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->IN_PROCESS:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 63
    .line 64
    return-void
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

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/parameter/PartStat$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PARTSTAT"

    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/PartStat;->value:Ljava/lang/String;

    .line 16
    .line 17
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


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/PartStat;->value:Ljava/lang/String;

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
