.class public final enum Lnet/fortuna/ical4j/model/Recur$Frequency;
.super Ljava/lang/Enum;
.source "Recur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/Recur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Frequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/fortuna/ical4j/model/Recur$Frequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/fortuna/ical4j/model/Recur$Frequency;

.field public static final enum DAILY:Lnet/fortuna/ical4j/model/Recur$Frequency;

.field public static final enum HOURLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

.field public static final enum MINUTELY:Lnet/fortuna/ical4j/model/Recur$Frequency;

.field public static final enum MONTHLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

.field public static final enum SECONDLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

.field public static final enum WEEKLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

.field public static final enum YEARLY:Lnet/fortuna/ical4j/model/Recur$Frequency;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 2
    .line 3
    const-string v1, "SECONDLY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/Recur$Frequency;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->SECONDLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 10
    .line 11
    new-instance v1, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 12
    .line 13
    const-string v3, "MINUTELY"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lnet/fortuna/ical4j/model/Recur$Frequency;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/fortuna/ical4j/model/Recur$Frequency;->MINUTELY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 20
    .line 21
    new-instance v3, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 22
    .line 23
    const-string v5, "HOURLY"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lnet/fortuna/ical4j/model/Recur$Frequency;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lnet/fortuna/ical4j/model/Recur$Frequency;->HOURLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 30
    .line 31
    new-instance v5, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 32
    .line 33
    const-string v7, "DAILY"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lnet/fortuna/ical4j/model/Recur$Frequency;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lnet/fortuna/ical4j/model/Recur$Frequency;->DAILY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 40
    .line 41
    new-instance v7, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 42
    .line 43
    const-string v9, "WEEKLY"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lnet/fortuna/ical4j/model/Recur$Frequency;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lnet/fortuna/ical4j/model/Recur$Frequency;->WEEKLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 50
    .line 51
    new-instance v9, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 52
    .line 53
    const-string v11, "MONTHLY"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lnet/fortuna/ical4j/model/Recur$Frequency;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lnet/fortuna/ical4j/model/Recur$Frequency;->MONTHLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 60
    .line 61
    new-instance v11, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 62
    .line 63
    const-string v13, "YEARLY"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lnet/fortuna/ical4j/model/Recur$Frequency;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lnet/fortuna/ical4j/model/Recur$Frequency;->YEARLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 70
    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 73
    .line 74
    aput-object v0, v13, v2

    .line 75
    .line 76
    aput-object v1, v13, v4

    .line 77
    .line 78
    aput-object v3, v13, v6

    .line 79
    .line 80
    aput-object v5, v13, v8

    .line 81
    .line 82
    aput-object v7, v13, v10

    .line 83
    .line 84
    aput-object v9, v13, v12

    .line 85
    .line 86
    aput-object v11, v13, v14

    .line 87
    .line 88
    sput-object v13, Lnet/fortuna/ical4j/model/Recur$Frequency;->$VALUES:[Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 89
    .line 90
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
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
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
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Recur$Frequency;
    .locals 1

    .line 1
    const-class v0, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 8
    .line 9
    return-object p0
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

.method public static values()[Lnet/fortuna/ical4j/model/Recur$Frequency;
    .locals 1

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->$VALUES:[Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lnet/fortuna/ical4j/model/Recur$Frequency;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/fortuna/ical4j/model/Recur$Frequency;

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
