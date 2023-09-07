.class public Lcom/miui/calendar/util/GuideUtils;
.super Ljava/lang/Object;
.source "GuideUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/GuideUtils$GuideSetting;,
        Lcom/miui/calendar/util/GuideUtils$a;
    }
.end annotation


# direct methods
.method static synthetic a(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/calendar/util/GuideUtils;->e(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
.end method

.method static synthetic b(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/calendar/util/GuideUtils;->d(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private static d(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/GuideUtils;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0, v0}, Lcom/miui/calendar/util/DeviceUtils;->r(Landroid/content/Context;Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const-string v0, "preferences_new_subscribe_guide_bar_id"

    .line 19
    .line 20
    invoke-static {p0, v0, v4, v5}, Lb2/a;->b(Landroid/content/Context;Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-wide v6, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->guideVersion:J

    .line 25
    .line 26
    cmp-long p0, v2, v6

    .line 27
    .line 28
    if-ltz p0, :cond_0

    .line 29
    .line 30
    iget-wide v2, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->guideId:J

    .line 31
    .line 32
    cmp-long p0, v2, v4

    .line 33
    .line 34
    if-lez p0, :cond_0

    .line 35
    .line 36
    iget-object p0, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->guideTitle:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_0
    return v1
    .line 46
    .line 47
.end method

.method private static e(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/GuideUtils;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0, v0}, Lcom/miui/calendar/util/DeviceUtils;->r(Landroid/content/Context;Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const-string v0, "preferences_showing_subscribe_guide_red_point_id"

    .line 19
    .line 20
    invoke-static {p0, v0, v4, v5}, Lb2/a;->b(Landroid/content/Context;Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-wide v6, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->redPointVersion:J

    .line 25
    .line 26
    cmp-long p0, v2, v6

    .line 27
    .line 28
    if-ltz p0, :cond_0

    .line 29
    .line 30
    iget-wide p0, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->redPointId:J

    .line 31
    .line 32
    cmp-long p0, p0, v4

    .line 33
    .line 34
    if-lez p0, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_0
    return v1
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
.end method

.method public static f(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)Ltc/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/calendar/job/RemoteJobService$g;",
            ")",
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lu1/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "id"

    .line 11
    .line 12
    const-string v3, "1"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lu1/d;->d()Lu1/a;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "Cal:D:GuideUtils"

    .line 26
    .line 27
    const-string v4, "queryAndShowGuideIfNeed() start query guide"

    .line 28
    .line 29
    invoke-static {v3, v4}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lcom/miui/calendar/util/GuideUtils$a;

    .line 33
    .line 34
    invoke-direct {v3, p0, p1}, Lcom/miui/calendar/util/GuideUtils$a;-><init>(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v0, v1}, Lu1/a;->c(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance p1, Lu1/b;

    .line 42
    .line 43
    invoke-direct {p1, v3}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, p1}, Ltc/a;->q(Ltc/b;)V

    .line 47
    .line 48
    .line 49
    return-object p0
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

.method public static g(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "preferences_showing_subscribe_guide_red_point_id"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {p0, v0, v1, v2}, Lb2/a;->b(Landroid/content/Context;Ljava/lang/String;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-string v2, "preferences_last_subscribe_guide_red_point_id"

    .line 10
    .line 11
    invoke-static {p0, v2, v0, v1}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
