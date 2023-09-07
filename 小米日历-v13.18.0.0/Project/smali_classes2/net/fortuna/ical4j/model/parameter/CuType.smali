.class public Lnet/fortuna/ical4j/model/parameter/CuType;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "CuType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/parameter/CuType$Factory;
    }
.end annotation


# static fields
.field public static final GROUP:Lnet/fortuna/ical4j/model/parameter/CuType;

.field public static final INDIVIDUAL:Lnet/fortuna/ical4j/model/parameter/CuType;

.field public static final RESOURCE:Lnet/fortuna/ical4j/model/parameter/CuType;

.field public static final ROOM:Lnet/fortuna/ical4j/model/parameter/CuType;

.field public static final UNKNOWN:Lnet/fortuna/ical4j/model/parameter/CuType;

.field private static final VALUE_GROUP:Ljava/lang/String; = "GROUP"

.field private static final VALUE_INDIVIDUAL:Ljava/lang/String; = "INDIVIDUAL"

.field private static final VALUE_RESOURCE:Ljava/lang/String; = "RESOURCE"

.field private static final VALUE_ROOM:Ljava/lang/String; = "ROOM"

.field private static final VALUE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final serialVersionUID:J = -0x2b7e6ee5f89bff4cL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 2
    .line 3
    const-string v1, "INDIVIDUAL"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->INDIVIDUAL:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 9
    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 11
    .line 12
    const-string v1, "GROUP"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->GROUP:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 18
    .line 19
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 20
    .line 21
    const-string v1, "RESOURCE"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->RESOURCE:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 27
    .line 28
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 29
    .line 30
    const-string v1, "ROOM"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->ROOM:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 36
    .line 37
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 38
    .line 39
    const-string v1, "UNKNOWN"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->UNKNOWN:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 45
    .line 46
    return-void
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
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/parameter/CuType$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CUTYPE"

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
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/CuType;->value:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/CuType;->value:Ljava/lang/String;

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
