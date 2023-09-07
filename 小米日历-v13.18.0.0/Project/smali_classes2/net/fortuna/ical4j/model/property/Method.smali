.class public Lnet/fortuna/ical4j/model/property/Method;
.super Lnet/fortuna/ical4j/model/Property;
.source "Method.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Method$Factory;,
        Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;
    }
.end annotation


# static fields
.field public static final ADD:Lnet/fortuna/ical4j/model/property/Method;

.field public static final CANCEL:Lnet/fortuna/ical4j/model/property/Method;

.field public static final COUNTER:Lnet/fortuna/ical4j/model/property/Method;

.field public static final DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

.field public static final PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

.field public static final REFRESH:Lnet/fortuna/ical4j/model/property/Method;

.field public static final REPLY:Lnet/fortuna/ical4j/model/property/Method;

.field public static final REQUEST:Lnet/fortuna/ical4j/model/property/Method;

.field private static final serialVersionUID:J = 0x6435fdb54d3f949fL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    .line 2
    .line 3
    const-string v1, "PUBLISH"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    .line 10
    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    .line 12
    .line 13
    const-string v1, "REQUEST"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    .line 19
    .line 20
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    .line 21
    .line 22
    const-string v1, "REPLY"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    .line 28
    .line 29
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    .line 30
    .line 31
    const-string v1, "ADD"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    .line 37
    .line 38
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    .line 39
    .line 40
    const-string v1, "CANCEL"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    .line 46
    .line 47
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    .line 48
    .line 49
    const-string v1, "REFRESH"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    .line 55
    .line 56
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    .line 57
    .line 58
    const-string v1, "COUNTER"

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 64
    .line 65
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    .line 66
    .line 67
    const-string v1, "DECLINE-COUNTER"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 73
    .line 74
    return-void
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
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Method$Factory;-><init>()V

    const-string v1, "METHOD"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Method$Factory;-><init>()V

    const-string v1, "METHOD"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Method;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Method$Factory;-><init>()V

    const-string v1, "METHOD"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Method;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Method;->value:Ljava/lang/String;

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

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Method;->value:Ljava/lang/String;

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

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    return-void
.end method
