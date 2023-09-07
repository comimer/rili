.class public Lnet/fortuna/ical4j/model/parameter/FbType;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "FbType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/parameter/FbType$Factory;
    }
.end annotation


# static fields
.field public static final BUSY:Lnet/fortuna/ical4j/model/parameter/FbType;

.field public static final BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/parameter/FbType;

.field public static final BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/parameter/FbType;

.field public static final FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

.field private static final VALUE_BUSY:Ljava/lang/String; = "BUSY"

.field private static final VALUE_BUSY_TENTATIVE:Ljava/lang/String; = "BUSY-TENTATIVE"

.field private static final VALUE_BUSY_UNAVAILABLE:Ljava/lang/String; = "BUSY-UNAVAILABLE"

.field private static final VALUE_FREE:Ljava/lang/String; = "FREE"

.field private static final serialVersionUID:J = -0x1ec6d10c315f23cfL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 2
    .line 3
    const-string v1, "FREE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 9
    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 11
    .line 12
    const-string v1, "BUSY"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 18
    .line 19
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 20
    .line 21
    const-string v1, "BUSY-UNAVAILABLE"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 27
    .line 28
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 29
    .line 30
    const-string v1, "BUSY-TENTATIVE"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 36
    .line 37
    return-void
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

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/parameter/FbType$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FBTYPE"

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
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/FbType;->value:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/FbType;->value:Ljava/lang/String;

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
