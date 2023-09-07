.class public Lnet/fortuna/ical4j/model/parameter/Value;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/parameter/Value$Factory;
    }
.end annotation


# static fields
.field public static final BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final BOOLEAN:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final CAL_ADDRESS:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final DATE:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final FLOAT:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final INTEGER:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final RECUR:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final TEXT:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final TIME:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final URI:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final UTC_OFFSET:Lnet/fortuna/ical4j/model/parameter/Value;

.field private static final VALUE_BINARY:Ljava/lang/String; = "BINARY"

.field private static final VALUE_BOOLEAN:Ljava/lang/String; = "BOOLEAN"

.field private static final VALUE_CAL_ADDRESS:Ljava/lang/String; = "CAL-ADDRESS"

.field private static final VALUE_DATE:Ljava/lang/String; = "DATE"

.field private static final VALUE_DATE_TIME:Ljava/lang/String; = "DATE-TIME"

.field private static final VALUE_DURATION:Ljava/lang/String; = "DURATION"

.field private static final VALUE_FLOAT:Ljava/lang/String; = "FLOAT"

.field private static final VALUE_INTEGER:Ljava/lang/String; = "INTEGER"

.field private static final VALUE_PERIOD:Ljava/lang/String; = "PERIOD"

.field private static final VALUE_RECUR:Ljava/lang/String; = "RECUR"

.field private static final VALUE_TEXT:Ljava/lang/String; = "TEXT"

.field private static final VALUE_TIME:Ljava/lang/String; = "TIME"

.field private static final VALUE_URI:Ljava/lang/String; = "URI"

.field private static final VALUE_UTC_OFFSET:Ljava/lang/String; = "UTC-OFFSET"

.field private static final serialVersionUID:J = -0x6474d3370dda4bc8L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 2
    .line 3
    const-string v1, "BINARY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 9
    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 11
    .line 12
    const-string v1, "BOOLEAN"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BOOLEAN:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 18
    .line 19
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 20
    .line 21
    const-string v1, "CAL-ADDRESS"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->CAL_ADDRESS:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 27
    .line 28
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 29
    .line 30
    const-string v1, "DATE"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 36
    .line 37
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 38
    .line 39
    const-string v1, "DATE-TIME"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 45
    .line 46
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 47
    .line 48
    const-string v1, "DURATION"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 54
    .line 55
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 56
    .line 57
    const-string v1, "FLOAT"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->FLOAT:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 63
    .line 64
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 65
    .line 66
    const-string v1, "INTEGER"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->INTEGER:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 72
    .line 73
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 74
    .line 75
    const-string v1, "PERIOD"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 81
    .line 82
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 83
    .line 84
    const-string v1, "RECUR"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->RECUR:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 90
    .line 91
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 92
    .line 93
    const-string v1, "TEXT"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->TEXT:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 99
    .line 100
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 101
    .line 102
    const-string v1, "TIME"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 108
    .line 109
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 110
    .line 111
    const-string v1, "URI"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->URI:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 117
    .line 118
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 119
    .line 120
    const-string v1, "UTC-OFFSET"

    .line 121
    .line 122
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->UTC_OFFSET:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 126
    .line 127
    return-void
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/parameter/Value$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "VALUE"

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
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/Value;->value:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Value;->value:Ljava/lang/String;

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
