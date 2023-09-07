.class public final Lat/bitfire/dav4jvm/DavCalendar;
.super Lat/bitfire/dav4jvm/DavCollection;
.source "DavCalendar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/DavCalendar$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB#\u0008\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019JF\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u001c\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007j\u0002`\u000bJ8\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\r2\u001c\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007j\u0002`\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/DavCalendar;",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "",
        "component",
        "Ljava/util/Date;",
        "start",
        "end",
        "Lkotlin/Function2;",
        "Lat/bitfire/dav4jvm/Response;",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "Lkotlin/u;",
        "Lat/bitfire/dav4jvm/DavResponseCallback;",
        "callback",
        "",
        "Lat/bitfire/dav4jvm/Property;",
        "calendarQuery",
        "Lokhttp3/t;",
        "urls",
        "multiget",
        "Lokhttp3/x;",
        "httpClient",
        "location",
        "Ljava/util/logging/Logger;",
        "log",
        "<init>",
        "(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V",
        "Companion",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final CALENDAR_MULTIGET:Lat/bitfire/dav4jvm/Property$Name;

.field private static final CALENDAR_QUERY:Lat/bitfire/dav4jvm/Property$Name;

.field private static final COMP_FILTER:Lat/bitfire/dav4jvm/Property$Name;

.field public static final COMP_FILTER_NAME:Ljava/lang/String; = "name"

.field public static final Companion:Lat/bitfire/dav4jvm/DavCalendar$Companion;

.field private static final FILTER:Lat/bitfire/dav4jvm/Property$Name;

.field private static final MIME_ICALENDAR:Lokhttp3/v;

.field private static final MIME_ICALENDAR_UTF8:Lokhttp3/v;

.field private static final TIME_RANGE:Lat/bitfire/dav4jvm/Property$Name;

.field public static final TIME_RANGE_END:Ljava/lang/String; = "end"

.field public static final TIME_RANGE_START:Ljava/lang/String; = "start"

.field private static final timeFormatUTC:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/DavCalendar$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/DavCalendar$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar;->Companion:Lat/bitfire/dav4jvm/DavCalendar$Companion;

    .line 8
    .line 9
    sget-object v0, Lokhttp3/v;->g:Lokhttp3/v$a;

    .line 10
    .line 11
    const-string v1, "text/calendar"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lat/bitfire/dav4jvm/DavCalendar;->MIME_ICALENDAR:Lokhttp3/v;

    .line 18
    .line 19
    const-string v1, "text/calendar;charset=utf-8"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar;->MIME_ICALENDAR_UTF8:Lokhttp3/v;

    .line 26
    .line 27
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 28
    .line 29
    const-string v1, "urn:ietf:params:xml:ns:caldav"

    .line 30
    .line 31
    const-string v2, "calendar-query"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar;->CALENDAR_QUERY:Lat/bitfire/dav4jvm/Property$Name;

    .line 37
    .line 38
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 39
    .line 40
    const-string v2, "calendar-multiget"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar;->CALENDAR_MULTIGET:Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 48
    .line 49
    const-string v2, "filter"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar;->FILTER:Lat/bitfire/dav4jvm/Property$Name;

    .line 55
    .line 56
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 57
    .line 58
    const-string v2, "comp-filter"

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar;->COMP_FILTER:Lat/bitfire/dav4jvm/Property$Name;

    .line 64
    .line 65
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 66
    .line 67
    const-string v2, "time-range"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar;->TIME_RANGE:Lat/bitfire/dav4jvm/Property$Name;

    .line 73
    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 75
    .line 76
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 77
    .line 78
    const-string v2, "yyyyMMdd\'T\'HHmmss\'Z\'"

    .line 79
    .line 80
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar;->timeFormatUTC:Ljava/text/SimpleDateFormat;

    .line 84
    .line 85
    const-string v1, "Etc/UTC"

    .line 86
    .line 87
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    .line 93
    .line 94
    return-void
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public constructor <init>(Lokhttp3/x;Lokhttp3/t;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/DavCalendar;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V
    .locals 1

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/DavCollection;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    invoke-virtual {p3}, Lat/bitfire/dav4jvm/Dav4jvm;->getLog()Ljava/util/logging/Logger;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/DavCalendar;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V

    return-void
.end method

.method public static final synthetic access$getCALENDAR_MULTIGET$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavCalendar;->CALENDAR_MULTIGET:Lat/bitfire/dav4jvm/Property$Name;

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
.end method

.method public static final synthetic access$getCALENDAR_QUERY$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavCalendar;->CALENDAR_QUERY:Lat/bitfire/dav4jvm/Property$Name;

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
.end method

.method public static final synthetic access$getCOMP_FILTER$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavCalendar;->COMP_FILTER:Lat/bitfire/dav4jvm/Property$Name;

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
.end method

.method public static final synthetic access$getFILTER$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavCalendar;->FILTER:Lat/bitfire/dav4jvm/Property$Name;

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
.end method

.method public static final synthetic access$getMIME_ICALENDAR$cp()Lokhttp3/v;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavCalendar;->MIME_ICALENDAR:Lokhttp3/v;

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
.end method

.method public static final synthetic access$getMIME_ICALENDAR_UTF8$cp()Lokhttp3/v;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavCalendar;->MIME_ICALENDAR_UTF8:Lokhttp3/v;

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
.end method

.method public static final synthetic access$getTIME_RANGE$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavCalendar;->TIME_RANGE:Lat/bitfire/dav4jvm/Property$Name;

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
.end method

.method public static final synthetic access$getTimeFormatUTC$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavCalendar;->timeFormatUTC:Ljava/text/SimpleDateFormat;

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
.end method


# virtual methods
.method public final calendarQuery(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lw7/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "component"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    .line 12
    .line 13
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/XmlUtils;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/io/StringWriter;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "UTF-8"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    const-string v5, "DAV:"

    .line 34
    .line 35
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "CAL"

    .line 39
    .line 40
    const-string v5, "urn:ietf:params:xml:ns:caldav"

    .line 41
    .line 42
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lat/bitfire/dav4jvm/DavCalendar;->CALENDAR_QUERY:Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    new-instance v5, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;

    .line 48
    .line 49
    invoke-direct {v5, p1, p2, p3}, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v3, v5}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;

    .line 59
    .line 60
    invoke-direct {p1, p0, v2}, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;-><init>(Lat/bitfire/dav4jvm/DavCalendar;Ljava/io/StringWriter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :try_start_0
    invoke-virtual {p0, p1, p4}, Lat/bitfire/dav4jvm/DavResource;->processMultiStatus(Lokhttp3/a0;Lw7/p;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {p1, v4}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-object p2

    .line 75
    :catchall_0
    move-exception p2

    .line 76
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :catchall_1
    move-exception p3

    .line 78
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p3
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method public final multiget(Ljava/util/List;Lw7/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/t;",
            ">;",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "urls"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    .line 12
    .line 13
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/XmlUtils;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/io/StringWriter;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "UTF-8"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    const-string v5, "DAV:"

    .line 34
    .line 35
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "CAL"

    .line 39
    .line 40
    const-string v5, "urn:ietf:params:xml:ns:caldav"

    .line 41
    .line 42
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lat/bitfire/dav4jvm/DavCalendar;->CALENDAR_MULTIGET:Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    new-instance v5, Lat/bitfire/dav4jvm/DavCalendar$multiget$1;

    .line 48
    .line 49
    invoke-direct {v5, p1, v1}, Lat/bitfire/dav4jvm/DavCalendar$multiget$1;-><init>(Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v3, v5}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lat/bitfire/dav4jvm/DavCalendar$multiget$2;

    .line 59
    .line 60
    invoke-direct {p1, p0, v2}, Lat/bitfire/dav4jvm/DavCalendar$multiget$2;-><init>(Lat/bitfire/dav4jvm/DavCalendar;Ljava/io/StringWriter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lat/bitfire/dav4jvm/DavResource;->processMultiStatus(Lokhttp3/a0;Lw7/p;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {p1, v4}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-object p2

    .line 75
    :catchall_0
    move-exception p2

    .line 76
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v0
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
