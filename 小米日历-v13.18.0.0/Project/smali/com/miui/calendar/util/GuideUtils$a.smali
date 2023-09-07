.class Lcom/miui/calendar/util/GuideUtils$a;
.super Ljava/lang/Object;
.source "GuideUtils.java"

# interfaces
.implements Lu1/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/GuideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/calendar/job/RemoteJobService$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/miui/calendar/util/GuideUtils$a;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/miui/calendar/util/GuideUtils$a;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    return-void
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


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    const-string v0, "Cal:D:GuideUtils"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/calendar/util/GuideUtils$a;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :try_start_0
    const-string v3, "data"

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Ls4/d;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    const-class p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;

    .line 31
    .line 32
    invoke-static {v2, p1}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;

    .line 37
    .line 38
    invoke-static {v1, p1}, Lcom/miui/calendar/util/GuideUtils;->a(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const-string v3, "preferences_showing_subscribe_guide_red_point_id"

    .line 45
    .line 46
    iget-wide v4, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->redPointId:J

    .line 47
    .line 48
    invoke-static {v1, v3, v4, v5}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {v1, p1}, Lcom/miui/calendar/util/GuideUtils;->b(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    const-string v3, "preferences_new_subscribe_guide_bar_id"

    .line 58
    .line 59
    iget-wide v4, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->guideId:J

    .line 60
    .line 61
    invoke-static {v1, v3, v4, v5}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    const-string v3, "preferences_subscribe_guide_bar_title"

    .line 65
    .line 66
    iget-object v4, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->guideTitle:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3, v4}, Lb2/a;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    const-string v3, "preferences_edit_event_dislike_shown_start"

    .line 72
    .line 73
    iget-wide v4, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->editEventDislikeStart2:J

    .line 74
    .line 75
    invoke-static {v1, v3, v4, v5}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 76
    .line 77
    .line 78
    const-string v3, "preferences_edit_event_dislike_shown_end"

    .line 79
    .line 80
    iget-wide v4, p1, Lcom/miui/calendar/util/GuideUtils$GuideSetting;->editEventDislikeEnd2:J

    .line 81
    .line 82
    invoke-static {v1, v3, v4, v5}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object p1, p0, Lcom/miui/calendar/util/GuideUtils$a;->b:Ljava/lang/ref/WeakReference;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    :goto_0
    iget-object p1, p0, Lcom/miui/calendar/util/GuideUtils$a;->b:Ljava/lang/ref/WeakReference;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/miui/calendar/job/RemoteJobService$g;

    .line 100
    .line 101
    invoke-interface {p1}, Lcom/miui/calendar/job/RemoteJobService$g;->a()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception p1

    .line 108
    :try_start_1
    const-string v1, "ResponseListener:"

    .line 109
    .line 110
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v1, "data:"

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/miui/calendar/util/GuideUtils$a;->b:Ljava/lang/ref/WeakReference;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    :goto_1
    return-void

    .line 143
    :goto_2
    iget-object v0, p0, Lcom/miui/calendar/util/GuideUtils$a;->b:Ljava/lang/ref/WeakReference;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    iget-object v0, p0, Lcom/miui/calendar/util/GuideUtils$a;->b:Ljava/lang/ref/WeakReference;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lcom/miui/calendar/job/RemoteJobService$g;

    .line 158
    .line 159
    invoke-interface {v0}, Lcom/miui/calendar/job/RemoteJobService$g;->a()V

    .line 160
    .line 161
    .line 162
    :cond_5
    throw p1
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "Cal:D:GuideUtils"

    .line 2
    .line 3
    const-string v1, "ResponseListener:"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/miui/calendar/util/GuideUtils$a;->b:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/miui/calendar/util/GuideUtils$a;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/miui/calendar/job/RemoteJobService$g;

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/miui/calendar/job/RemoteJobService$g;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
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
    .line 65
.end method
