.class public final Lat/bitfire/dav4jvm/PropStat$Companion;
.super Ljava/lang/Object;
.source "PropStat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/dav4jvm/PropStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/PropStat$Companion;",
        "",
        "Lorg/xmlpull/v1/XmlPullParser;",
        "parser",
        "Lat/bitfire/dav4jvm/PropStat;",
        "parse",
        "Lvb/k;",
        "ASSUMING_OK",
        "Lvb/k;",
        "INVALID_STATUS",
        "Lat/bitfire/dav4jvm/Property$Name;",
        "NAME",
        "Lat/bitfire/dav4jvm/Property$Name;",
        "<init>",
        "()V",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lat/bitfire/dav4jvm/PropStat$Companion;-><init>()V

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
.end method


# virtual methods
.method public final parse(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/PropStat;
    .locals 7

    .line 1
    const-string v0, "parser"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-instance v2, Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    const/4 v4, 0x3

    .line 21
    if-ne v1, v4, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eq v4, v0, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    new-instance p1, Lat/bitfire/dav4jvm/PropStat;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lat/bitfire/dav4jvm/PropStat;->access$getASSUMING_OK$cp()Lvb/k;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v3, v0

    .line 40
    :goto_1
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v1, p1

    .line 44
    invoke-direct/range {v1 .. v6}, Lat/bitfire/dav4jvm/PropStat;-><init>(Ljava/util/List;Lvb/k;Ljava/util/List;ILkotlin/jvm/internal/o;)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    :goto_2
    const/4 v4, 0x2

    .line 49
    if-ne v1, v4, :cond_4

    .line 50
    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/lit8 v4, v0, 0x1

    .line 56
    .line 57
    if-ne v1, v4, :cond_4

    .line 58
    .line 59
    sget-object v1, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lat/bitfire/dav4jvm/XmlUtils;->propertyName(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property$Name;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v4, Lat/bitfire/dav4jvm/DavResource;->Companion:Lat/bitfire/dav4jvm/DavResource$Companion;

    .line 66
    .line 67
    invoke-virtual {v4}, Lat/bitfire/dav4jvm/DavResource$Companion;->getPROP()Lat/bitfire/dav4jvm/Property$Name;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    sget-object v1, Lat/bitfire/dav4jvm/Property;->Companion:Lat/bitfire/dav4jvm/Property$Companion;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lat/bitfire/dav4jvm/Property$Companion;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_3
    sget-object v4, Lat/bitfire/dav4jvm/Response;->Companion:Lat/bitfire/dav4jvm/Response$Companion;

    .line 88
    .line 89
    invoke-virtual {v4}, Lat/bitfire/dav4jvm/Response$Companion;->getSTATUS()Lat/bitfire/dav4jvm/Property$Name;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    :try_start_0
    sget-object v1, Lvb/k;->d:Lvb/k$a;

    .line 100
    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string v4, "parser.nextText()"

    .line 106
    .line 107
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Lvb/k$a;->a(Ljava/lang/String;)Lvb/k;

    .line 111
    .line 112
    .line 113
    move-result-object v1
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_3

    .line 115
    :catch_0
    invoke-static {}, Lat/bitfire/dav4jvm/PropStat;->access$getINVALID_STATUS$cp()Lvb/k;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :goto_3
    move-object v3, v1

    .line 120
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    goto :goto_0
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method
