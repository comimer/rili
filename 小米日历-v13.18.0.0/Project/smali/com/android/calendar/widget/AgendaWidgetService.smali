.class public Lcom/android/calendar/widget/AgendaWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "AgendaWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v0, "allDay"

    .line 2
    .line 3
    const-string v1, "begin"

    .line 4
    .line 5
    const-string v2, "end"

    .line 6
    .line 7
    const-string v3, "title"

    .line 8
    .line 9
    const-string v4, "eventLocation"

    .line 10
    .line 11
    const-string v5, "event_id"

    .line 12
    .line 13
    const-string v6, "startDay"

    .line 14
    .line 15
    const-string v7, "endDay"

    .line 16
    .line 17
    const-string v8, "displayColor"

    .line 18
    .line 19
    const-string v9, "selfAttendeeStatus"

    .line 20
    .line 21
    const-string v10, "calendar_displayName"

    .line 22
    .line 23
    const-string v11, "customAppPackage"

    .line 24
    .line 25
    const-string v12, "account_name"

    .line 26
    .line 27
    const-string v13, "account_type"

    .line 28
    .line 29
    const-string v14, "hasExtendedProperties"

    .line 30
    .line 31
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/calendar/widget/AgendaWidgetService;->a:[Ljava/lang/String;

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
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

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

.method static a(JJ)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 7
    .line 8
    .line 9
    sub-long p2, p0, p2

    .line 10
    .line 11
    const-wide/32 v1, 0xea60

    .line 12
    .line 13
    .line 14
    cmp-long v3, p2, v1

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    const-string v5, "HH:mm:ss"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x3

    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    div-long/2addr p2, v1

    .line 25
    new-array v1, v8, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    aput-object p0, v1, v7

    .line 32
    .line 33
    invoke-virtual {v0, v5}, Lcom/miui/calendar/util/r0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    aput-object p0, v1, v6

    .line 38
    .line 39
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    aput-object p0, v1, v4

    .line 44
    .line 45
    const-string p0, "[%d] %s (%+d mins)"

    .line 46
    .line 47
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 53
    .line 54
    div-long/2addr p2, v1

    .line 55
    new-array v1, v8, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    aput-object p0, v1, v7

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lcom/miui/calendar/util/r0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    aput-object p0, v1, v6

    .line 68
    .line 69
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    aput-object p0, v1, v4

    .line 74
    .line 75
    const-string p0, "[%d] %s (%+d secs)"

    .line 76
    .line 77
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
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


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    return-object v0
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
