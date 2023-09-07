.class public final Lc2/c;
.super Lat/bitfire/ical4android/AndroidEvent;
.source "OneWayLocalEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/c$a;,
        Lc2/c$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB\u001f\u0008\u0012\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B\u001f\u0008\u0016\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u001a\u0010\n\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014R\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lc2/c;",
        "Lat/bitfire/ical4android/AndroidEvent;",
        "Landroid/content/ContentValues;",
        "row",
        "Lkotlin/u;",
        "populateEvent",
        "Lat/bitfire/ical4android/Event;",
        "recurrence",
        "Landroid/content/ContentProviderOperation$Builder;",
        "builder",
        "buildEvent",
        "",
        "lastModified",
        "J",
        "f",
        "()J",
        "setLastModified",
        "(J)V",
        "Lat/bitfire/ical4android/AndroidCalendar;",
        "calendar",
        "values",
        "<init>",
        "(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)V",
        "event",
        "(Lat/bitfire/ical4android/AndroidCalendar;Lat/bitfire/ical4android/Event;)V",
        "a",
        "b",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final c:Lc2/c$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc2/c$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lc2/c;->c:Lc2/c$a;

    return-void
.end method

.method private constructor <init>(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/bitfire/ical4android/AndroidCalendar<",
            "+",
            "Lat/bitfire/ical4android/AndroidEvent;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lat/bitfire/ical4android/AndroidEvent;-><init>(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)V

    const-string p1, "_sync_id"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc2/c;->a:Ljava/lang/String;

    const-string p1, "sync_data2"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lc2/c;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc2/c;-><init>(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)V

    return-void
.end method

.method public constructor <init>(Lat/bitfire/ical4android/AndroidCalendar;Lat/bitfire/ical4android/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/bitfire/ical4android/AndroidCalendar<",
            "+",
            "Lat/bitfire/ical4android/AndroidEvent;",
            ">;",
            "Lat/bitfire/ical4android/Event;",
            ")V"
        }
    .end annotation

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lat/bitfire/ical4android/AndroidEvent;-><init>(Lat/bitfire/ical4android/AndroidCalendar;Lat/bitfire/ical4android/Event;)V

    .line 5
    invoke-virtual {p2}, Lat/bitfire/ical4android/ICalendar;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc2/c;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lat/bitfire/ical4android/Event;->getLastModified()Lnet/fortuna/ical4j/model/property/LastModified;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDateTime()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lc2/c;->b:J

    return-void
.end method


# virtual methods
.method protected buildEvent(Lat/bitfire/ical4android/Event;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 2

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lat/bitfire/ical4android/AndroidEvent;->buildEvent(Lat/bitfire/ical4android/Event;Landroid/content/ContentProviderOperation$Builder;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lc2/c;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "_sync_id"

    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-wide v0, p0, Lc2/c;->b:J

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "sync_data2"

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lc2/c;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "original_sync_id"

    .line 34
    .line 35
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc2/c;->b:J

    .line 2
    .line 3
    return-wide v0
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

.method protected populateEvent(Landroid/content/ContentValues;)V
    .locals 5

    .line 1
    const-string v0, "row"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lat/bitfire/ical4android/AndroidEvent;->populateEvent(Landroid/content/ContentValues;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidEvent;->getEvent()Lat/bitfire/ical4android/Event;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "_sync_id"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/ICalendar;->setUid(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "sync_data2"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "it"

    .line 31
    .line 32
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iput-wide v1, p0, Lc2/c;->b:J

    .line 40
    .line 41
    new-instance v1, Lnet/fortuna/ical4j/model/property/LastModified;

    .line 42
    .line 43
    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-direct {v2, v3, v4}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/property/LastModified;-><init>(Lnet/fortuna/ical4j/model/DateTime;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Event;->setLastModified(Lnet/fortuna/ical4j/model/property/LastModified;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v0, "Required value was null."

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
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
