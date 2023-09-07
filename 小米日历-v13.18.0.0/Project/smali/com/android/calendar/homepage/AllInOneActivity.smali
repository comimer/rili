.class public Lcom/android/calendar/homepage/AllInOneActivity;
.super Lcom/android/calendar/common/b;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/calendar/common/m$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/homepage/AllInOneActivity$k;,
        Lcom/android/calendar/homepage/AllInOneActivity$l;,
        Lcom/android/calendar/homepage/AllInOneActivity$n;,
        Lcom/android/calendar/homepage/AllInOneActivity$j;,
        Lcom/android/calendar/homepage/AllInOneActivity$m;,
        Lcom/android/calendar/homepage/AllInOneActivity$i;,
        Lcom/android/calendar/homepage/AllInOneActivity$h;
    }
.end annotation


# static fields
.field private static final K:Z


# instance fields
.field private D:Lcom/android/calendar/homepage/AllInOneActivity$h;

.field private E:Z

.field private F:I

.field private G:Lh4/c;

.field private final H:Ljava/lang/Runnable;

.field private final I:Landroid/database/ContentObserver;

.field J:Landroid/content/BroadcastReceiver;

.field private b:Lcom/android/calendar/common/e;

.field private c:Lcom/android/calendar/homepage/t0;

.field private d:Lcom/android/calendar/homepage/y0;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Calendar;

.field private k:J

.field private l:I

.field private m:J

.field private n:J

.field private o:I

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:Lcom/android/calendar/homepage/AllInOneActivity$n;

.field v:I

.field private w:I

.field private x:Lcom/android/calendar/common/m;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, La9/a;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/calendar/homepage/AllInOneActivity;->K:Z

    .line 6
    .line 7
    return-void
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

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->e:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->g:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->h:Z

    .line 11
    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->k:J

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    iput v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->l:I

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->m:J

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->n:J

    .line 22
    .line 23
    iput v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->o:I

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->p:Z

    .line 26
    .line 27
    new-instance v1, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->q:Landroid/os/Handler;

    .line 33
    .line 34
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    iput-wide v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->y:J

    .line 37
    .line 38
    iput-wide v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->z:J

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->E:Z

    .line 41
    .line 42
    iput v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->F:I

    .line 43
    .line 44
    new-instance v0, Lcom/android/calendar/homepage/AllInOneActivity$a;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/AllInOneActivity$a;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->H:Ljava/lang/Runnable;

    .line 50
    .line 51
    new-instance v0, Lcom/android/calendar/homepage/AllInOneActivity$k;

    .line 52
    .line 53
    new-instance v1, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, p0}, Lcom/android/calendar/homepage/AllInOneActivity$k;-><init>(Landroid/os/Handler;Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->I:Landroid/database/ContentObserver;

    .line 62
    .line 63
    return-void
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

.method static synthetic A0(Lcom/android/calendar/homepage/AllInOneActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->q:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
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

.method private A1(Landroid/view/MenuItem;)V
    .locals 6

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "restoreMenu"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "content://com.miui.home.app.hide"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "packageName"

    .line 24
    .line 25
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v3, "activityName"

    .line 29
    .line 30
    const-class v4, Lcom/android/calendar/homepage/AllInOneActivity;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "serialNumber"

    .line 40
    .line 41
    const-string v4, "0"

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "restoreHiddenApp"

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    const-string v1, "refreshMenuVisible error!"

    .line 63
    .line 64
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
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

.method static synthetic B0(Lcom/android/calendar/homepage/AllInOneActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->H:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
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

.method private B1(Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "START_BY_WIDGET"

    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v0, "android.intent.action.PROVIDER_CHANGED"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-class v0, Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 20
    .line 21
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v0, "Cal:D:AllInOne"

    .line 25
    .line 26
    const-string v1, "sendWidgetBroadcastIfNeeded():send broadcast to reset widget"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
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

.method static synthetic C0(Lcom/android/calendar/homepage/AllInOneActivity;)Lcom/android/calendar/homepage/t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    return-object p0
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

.method private C1(IJZZ)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setMainPanel() ,viewType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",timeMillis="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, ",force="

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string p3, "Cal:D:AllInOne"

    .line 35
    .line 36
    invoke-static {p3, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 40
    .line 41
    if-eqz p5, :cond_0

    .line 42
    .line 43
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p0, p2}, Lcom/android/calendar/common/Utils;->b1(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 51
    .line 52
    invoke-static {p0, p2}, Lcom/android/calendar/common/Utils;->g1(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    const/4 p2, -0x1

    .line 56
    if-ne p1, p2, :cond_1

    .line 57
    .line 58
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    :cond_1
    const/4 p2, 0x2

    .line 63
    new-array p2, p2, [Ljava/lang/String;

    .line 64
    .line 65
    const-string p4, "type"

    .line 66
    .line 67
    const/4 p5, 0x0

    .line 68
    aput-object p4, p2, p5

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    const/4 v0, 0x1

    .line 75
    aput-object p4, p2, v0

    .line 76
    .line 77
    const-string p4, "view_type"

    .line 78
    .line 79
    invoke-static {p4, p2}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p2, 0x5

    .line 83
    if-eq p1, p2, :cond_2

    .line 84
    .line 85
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 86
    .line 87
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->K(I)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/miui/calendar/view/MonthMotionContainer;->H()V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 100
    .line 101
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/android/calendar/homepage/WeekHeaderView;->g()V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->b:Lcom/android/calendar/common/e;

    .line 107
    .line 108
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    invoke-virtual {p2, p1, v1, v2}, Lcom/android/calendar/common/e;->y(IJ)V

    .line 113
    .line 114
    .line 115
    const/4 p2, 0x3

    .line 116
    if-eq p1, p2, :cond_3

    .line 117
    .line 118
    iget p4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->v:I

    .line 119
    .line 120
    if-eq p4, v0, :cond_3

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/android/calendar/common/b;->W(I)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object p4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 126
    .line 127
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 132
    .line 133
    if-ne v2, p2, :cond_4

    .line 134
    .line 135
    move p5, v0

    .line 136
    :cond_4
    invoke-virtual {p4, v1, p5}, Lcom/android/calendar/homepage/t0;->S(Ljava/util/Calendar;Z)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 140
    .line 141
    iget p4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 142
    .line 143
    invoke-virtual {p2, p4}, Lcom/android/calendar/homepage/t0;->N(I)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 147
    .line 148
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 149
    .line 150
    new-instance p4, Lcom/android/calendar/homepage/o;

    .line 151
    .line 152
    invoke-direct {p4, p0}, Lcom/android/calendar/homepage/o;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->x1()V

    .line 159
    .line 160
    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string p4, "Adding handler with type "

    .line 167
    .line 168
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p3, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return v0
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method static synthetic D0(Lcom/android/calendar/homepage/AllInOneActivity;)Lcom/android/calendar/homepage/AllInOneActivity$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    return-object p0
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

.method private D1()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->l(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/miui/calendar/util/z0;->m()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x7f0a06c1

    .line 13
    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->B(Landroid/app/Activity;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void
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

.method static synthetic E0()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/calendar/homepage/AllInOneActivity;->K:Z

    .line 2
    .line 3
    return v0
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

.method static synthetic F0(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/app/ActivityOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->I0(Landroid/app/ActivityOptions;)V

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

.method private F1()V
    .locals 3

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    const-string v1, "startLocalTask()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/calendar/homepage/AllInOneActivity$j;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/AllInOneActivity$j;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic G0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->r1()V

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

.method private G1()V
    .locals 1

    .line 1
    invoke-static {p0}, Lg4/a;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lz3/j;->f(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
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

.method private H0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Landroid/view/View;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 23
    .line 24
    new-instance v2, Lcom/android/calendar/homepage/AllInOneActivity$c;

    .line 25
    .line 26
    invoke-direct {v2, p0, v0}, Lcom/android/calendar/homepage/AllInOneActivity$c;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;Lmiuix/animation/d;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
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

.method private H1(II)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ne p2, v1, :cond_4

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    move v2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/calendar/homepage/t0;->M(Z)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    const/16 p2, 0x5a

    .line 19
    .line 20
    const-string v2, "Cal:D:AllInOne"

    .line 21
    .line 22
    if-eq p1, p2, :cond_2

    .line 23
    .line 24
    const/16 p2, 0xb4

    .line 25
    .line 26
    if-eq p1, p2, :cond_3

    .line 27
    .line 28
    const/16 p2, 0x10e

    .line 29
    .line 30
    if-eq p1, p2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string p1, "onOrientationChanged turn to reverse landscape."

    .line 34
    .line 35
    invoke-static {v2, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x8

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/calendar/common/b;->W(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string p1, "onOrientationChanged turn to landscape."

    .line 45
    .line 46
    invoke-static {v2, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/android/calendar/common/b;->W(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/calendar/common/b;->W(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/calendar/common/b;->W(I)V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void
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

.method private I0(Landroid/app/ActivityOptions;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->M0()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/android/calendar/common/Utils;->j(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->M0()Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/calendar/common/Utils;->k(Landroid/content/Context;Ljava/util/Calendar;Landroid/app/ActivityOptions;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const-string p1, "click_new_event_button"

    .line 19
    .line 20
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->q:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v0, Lcom/android/calendar/homepage/y;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/y;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
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

.method private I1(IZ)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->E(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->m()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->d:Lcom/android/calendar/homepage/y0;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/calendar/homepage/y0;->d(Landroid/content/Context;IZ)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/miui/calendar/util/g$d;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/miui/calendar/util/g$d;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 32
    .line 33
    new-instance p2, Lcom/android/calendar/homepage/AllInOneActivity$e;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/android/calendar/homepage/AllInOneActivity$e;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0x1f4

    .line 39
    .line 40
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    return-void
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private J0()V
    .locals 10

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 13
    .line 14
    .line 15
    new-instance v5, Lcom/android/calendar/homepage/AllInOneActivity$f;

    .line 16
    .line 17
    invoke-direct {v5, p0}, Lcom/android/calendar/homepage/AllInOneActivity$f;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->v()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->p()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->q()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->G:Lh4/c;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v0, Lh4/c;

    .line 40
    .line 41
    iget v6, p0, Lcom/android/calendar/homepage/AllInOneActivity;->F:I

    .line 42
    .line 43
    move-object v3, v0

    .line 44
    move-object v4, p0

    .line 45
    invoke-direct/range {v3 .. v9}, Lh4/c;-><init>(Landroid/content/Context;Lh4/c$d;IIII)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->G:Lh4/c;

    .line 49
    .line 50
    iget v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->F:I

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    if-ne v1, v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    :goto_0
    invoke-virtual {v0, v2}, Lh4/c;->F(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->G:Lh4/c;

    .line 61
    .line 62
    const v1, 0x7f120537

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lh4/c;->setTitle(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->G:Lh4/c;

    .line 69
    .line 70
    invoke-virtual {v0}, Lh4/c;->show()V

    .line 71
    .line 72
    .line 73
    return-void
    .line 74
    .line 75
.end method

.method private J1(Z)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->I1(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
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

.method private K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->r:Lcom/android/calendar/homepage/AllInOneActivity$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->r:Lcom/android/calendar/homepage/AllInOneActivity$n;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/android/calendar/homepage/AllInOneActivity$n;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/AllInOneActivity$n;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->r:Lcom/android/calendar/homepage/AllInOneActivity$n;

    .line 18
    .line 19
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    .line 23
    .line 24
    return-void
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

.method private K1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/homepage/t0;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 11
    .line 12
    new-instance v2, Lcom/android/calendar/homepage/w;

    .line 13
    .line 14
    invoke-direct {v2, p0, p1}, Lcom/android/calendar/homepage/w;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/homepage/t0;->J(Ljava/lang/Runnable;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->X0()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->E(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->d:Lcom/android/calendar/homepage/y0;

    .line 32
    .line 33
    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/homepage/y0;->e(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    return-void
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

.method private L0(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, -0x1

    .line 12
    sparse-switch v0, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    :goto_0
    move p1, v4

    .line 16
    goto :goto_1

    .line 17
    :sswitch_0
    const-string v0, "month"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v1

    .line 27
    goto :goto_1

    .line 28
    :sswitch_1
    const-string v0, "year"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p1, v2

    .line 38
    goto :goto_1

    .line 39
    :sswitch_2
    const-string v0, "week"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move p1, v3

    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    const-string v0, "day"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 p1, 0x0

    .line 60
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    return v4

    .line 64
    :pswitch_0
    return v2

    .line 65
    :pswitch_1
    return v3

    .line 66
    :pswitch_2
    return v1

    .line 67
    :pswitch_3
    const/4 p1, 0x6

    .line 68
    return p1

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x1839c -> :sswitch_3
        0x379ff4 -> :sswitch_2
        0x38883d -> :sswitch_1
        0x6342280 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method private L1()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "TimezoneUpdate: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/android/calendar/common/Utils;->X()Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " --> "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "Cal:D:AllInOne"

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/android/calendar/common/Utils;->X()Ljava/util/Calendar;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 70
    .line 71
    .line 72
    return-void
    .line 73
    .line 74
    .line 75
.end method

.method private M0()Ljava/util/Calendar;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->j:Ljava/util/Calendar;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    invoke-static {}, Lcom/android/calendar/common/Utils;->L()Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
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

.method private N0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/calendar/homepage/AllInOneActivity$i;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/AllInOneActivity$i;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/miui/calendar/util/k;->b(Landroid/content/Context;Lcom/miui/calendar/util/f0;)V

    .line 11
    .line 12
    .line 13
    return-void
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

.method private O0(II)J
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->add(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    return-wide p1
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

.method private P0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/miui/calendar/util/v;->e(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->l:Landroid/view/View;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/miui/calendar/util/v;->e(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v1, v0, [Landroid/view/View;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v1, v3

    .line 24
    .line 25
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-array v2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 34
    .line 35
    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 36
    .line 37
    aput-object v4, v2, v3

    .line 38
    .line 39
    const v5, 0x3f19999a    # 0.6f

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v5, v2}, Lmiuix/animation/ITouchStyle;->z(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-array v2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 47
    .line 48
    aput-object v4, v2, v3

    .line 49
    .line 50
    const/high16 v4, 0x3f800000    # 1.0f

    .line 51
    .line 52
    invoke-interface {v1, v4, v2}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-array v2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 57
    .line 58
    sget-object v5, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 59
    .line 60
    aput-object v5, v2, v3

    .line 61
    .line 62
    invoke-interface {v1, v4, v2}, Lmiuix/animation/ITouchStyle;->z(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-array v0, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 67
    .line 68
    aput-object v5, v0, v3

    .line 69
    .line 70
    invoke-interface {v1, v4, v0}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    .line 77
    .line 78
    new-array v2, v3, [Ld9/a;

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->P(Landroid/view/View;[Ld9/a;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    .line 86
    .line 87
    new-instance v1, Lcom/android/calendar/homepage/AllInOneActivity$b;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/AllInOneActivity$b;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->H0()V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lcom/android/calendar/common/e;->g(Landroid/content/Context;)Lcom/android/calendar/common/e;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->b:Lcom/android/calendar/common/e;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/e;->d(Lcom/android/calendar/homepage/AllInOneActivity$h;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Lcom/android/calendar/homepage/AllInOneActivity$l;

    .line 118
    .line 119
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/AllInOneActivity$l;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/android/calendar/homepage/t0;->o()V

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->m(Lcom/android/calendar/homepage/AllInOneActivity$h;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 140
    .line 141
    invoke-static {p0}, Lcom/miui/calendar/util/DeviceUtils;->O(Landroid/content/Context;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->M(Z)V

    .line 146
    .line 147
    .line 148
    return-void
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

.method private Q0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/common/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/calendar/common/m;-><init>(Lcom/android/calendar/common/b;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->x:Lcom/android/calendar/common/m;

    .line 7
    .line 8
    return-void
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

.method private R0(J)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Lcom/android/calendar/common/Utils;->f1(J)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/android/calendar/common/Utils;->e1(J)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/android/calendar/common/Utils;->X()Ljava/util/Calendar;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/android/calendar/common/Utils;->H()Ljava/util/Calendar;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 54
    .line 55
    .line 56
    return-void
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

.method private S0(Landroid/os/Bundle;Landroid/content/Intent;I)J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p3, "key_timestamp"

    .line 6
    .line 7
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/calendar/homepage/AllInOneActivity;->s1(Landroid/content/Intent;I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    :goto_0
    cmp-long p1, v2, v0

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-static {p2}, Lcom/android/calendar/common/Utils;->l1(Landroid/content/Intent;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :cond_1
    return-wide v2
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
.end method

.method private T0(Landroid/content/res/Resources;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/AllInOneActivity$h;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->P0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 14
    .line 15
    new-instance v1, Lcom/android/calendar/homepage/n;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/homepage/n;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/content/res/Resources;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
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

.method private U0(Landroid/os/Bundle;Landroid/content/Intent;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "key_restore_view"

    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v0

    .line 12
    :goto_0
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :cond_1
    if-nez p1, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->t1(Landroid/content/Intent;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
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

.method private V0(JIZ)V
    .locals 3

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const-string p1, "initViews() viewType=0, return false"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Initializing to "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " for view "

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x1

    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "android.intent.action.SEARCH"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    move v1, p2

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v1, v0

    .line 72
    :goto_0
    if-eqz p1, :cond_2

    .line 73
    .line 74
    const-string v2, "key_collapse_panel"

    .line 75
    .line 76
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    const/4 p1, 0x4

    .line 83
    if-ne p3, p1, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move p2, v0

    .line 87
    :goto_1
    new-instance p1, Lcom/miui/calendar/util/g$m;

    .line 88
    .line 89
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-direct {p1, p3, v0}, Lcom/miui/calendar/util/g$m;-><init>(II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p4}, Lcom/miui/calendar/util/g$m;->b(Z)Lcom/miui/calendar/util/g$m;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1, v1}, Lcom/miui/calendar/util/g$m;->c(Z)Lcom/miui/calendar/util/g$m;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1, p2}, Lcom/miui/calendar/util/g$m;->a(Z)Lcom/miui/calendar/util/g$m;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->onEventMainThread(Lcom/miui/calendar/util/g$m;)V

    .line 109
    .line 110
    .line 111
    return-void
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method private W0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->y:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->l:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 39
    .line 40
    new-instance v1, Lcom/android/calendar/homepage/p;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/p;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 51
    .line 52
    new-instance v1, Lcom/android/calendar/homepage/q;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/q;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    .line 59
    .line 60
    return-void
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

.method private X0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->M:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity$h;->f(Lcom/android/calendar/homepage/AllInOneActivity$h;)Landroid/view/ViewStub;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 16
    .line 17
    const v2, 0x7f0a070f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/calendar/homepage/YearFrameLayout;

    .line 25
    .line 26
    iput-object v0, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->M:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->M:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 31
    .line 32
    new-instance v1, Lcom/android/calendar/homepage/z;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/z;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/YearFrameLayout;->setOnMonthClickListener(Lcom/android/calendar/homepage/YearFrameLayout$a;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/android/calendar/homepage/y0;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->M:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 47
    .line 48
    invoke-direct {v0, v2, v1}, Lcom/android/calendar/homepage/y0;-><init>(Lcom/miui/calendar/view/MonthMotionContainer;Lcom/android/calendar/homepage/YearFrameLayout;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->d:Lcom/android/calendar/homepage/y0;

    .line 52
    .line 53
    :cond_0
    return-void
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

.method public static synthetic Y(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->c1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private Y0(III)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/miui/calendar/util/g$a0;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 14
    .line 15
    .line 16
    return-void
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
.end method

.method public static synthetic Z(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->a1()V

    return-void
.end method

.method private Z0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "from"

    .line 9
    .line 10
    const-string v2, "\u9996\u9875\u53f3\u4e0a\u89d2\u5f39\u7a97"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic a0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->l1()V

    return-void
.end method

.method private synthetic a1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/miui/calendar/util/g$s0;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/g$s0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 12
    .line 13
    .line 14
    :cond_0
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

.method public static synthetic b0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->i1()V

    return-void
.end method

.method private synthetic b1(Landroid/content/res/Resources;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->g:Landroid/widget/ImageView;

    .line 4
    .line 5
    const v0, 0x7f07045a

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    div-int/lit8 v3, v0, 0x2

    .line 13
    .line 14
    const v0, 0x7f07045e

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const v2, 0x7f07045d

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/miui/calendar/util/x0;->k(Landroid/view/View;ZIIII)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->W0()V

    .line 37
    .line 38
    .line 39
    return-void
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

.method public static synthetic c0(Lcom/android/calendar/homepage/AllInOneActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->f1()Z

    move-result p0

    return p0
.end method

.method private synthetic c1(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/miui/calendar/util/e1;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "key_long_press_launch_xiaoai"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic d0(Lcom/android/calendar/homepage/AllInOneActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->g1(Z)V

    return-void
.end method

.method private synthetic d1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    if-eq p2, v1, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x3

    .line 19
    if-eq p2, p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 44
    .line 45
    const p2, 0x3f19999a    # 0.6f

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return v1
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

.method public static synthetic e0(Lcom/android/calendar/homepage/AllInOneActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/AllInOneActivity;->e1(II)V

    return-void
.end method

.method private synthetic e1(II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Calendar;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/miui/calendar/util/g$a0;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/g$a0;->a(Z)Lcom/miui/calendar/util/g$a0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p2, v1}, Lcom/android/calendar/homepage/AllInOneActivity;->I1(IZ)V

    .line 33
    .line 34
    .line 35
    return-void
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

.method public static synthetic f0(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->j1(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic f1()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/z0;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->N0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
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

.method public static synthetic g0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->k1()V

    return-void
.end method

.method private synthetic g1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->l:Landroid/view/View;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

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

.method public static synthetic h0(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->b1(Landroid/content/res/Resources;)V

    return-void
.end method

.method private static synthetic h1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/util/g$b0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/util/g$b0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 7
    .line 8
    .line 9
    return-void
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

.method public static synthetic i0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->o1()V

    return-void
.end method

.method private synthetic i1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->J()V

    .line 6
    .line 7
    .line 8
    return-void
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

.method public static synthetic j0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->n1()V

    return-void
.end method

.method private synthetic j1(Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->B1(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "New intent received "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "Cal:D:AllInOne"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->e:Z

    .line 39
    .line 40
    const-string v2, "android.intent.action.VIEW"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-wide/16 v3, -0x1

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->u1(Landroid/content/Intent;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    cmp-long v0, v5, v3

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->l1(Landroid/content/Intent;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    :cond_0
    cmp-long v0, v5, v3

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-wide v7, p0, Lcom/android/calendar/homepage/AllInOneActivity;->k:J

    .line 67
    .line 68
    cmp-long v0, v7, v3

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/miui/calendar/util/g$a0;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Lcom/miui/calendar/util/g$a0;->a(Z)Lcom/miui/calendar/util/g$a0;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    const-string v0, "extra_view_type"

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-lez p1, :cond_8

    .line 104
    .line 105
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 106
    .line 107
    if-eq p1, v0, :cond_8

    .line 108
    .line 109
    new-instance v1, Lcom/miui/calendar/util/g$m;

    .line 110
    .line 111
    invoke-direct {v1, p1, v0}, Lcom/miui/calendar/util/g$m;-><init>(II)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_2
    const-string v2, "com.android.calendar.main.views"

    .line 120
    .line 121
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 128
    .line 129
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/homepage/AllInOneActivity;->t1(Landroid/content/Intent;I)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-lez v0, :cond_3

    .line 134
    .line 135
    iget v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 136
    .line 137
    if-ne v0, v2, :cond_4

    .line 138
    .line 139
    :cond_3
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lcom/android/calendar/homepage/t0;->u()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    :cond_4
    new-instance v2, Lcom/miui/calendar/util/g$m;

    .line 150
    .line 151
    iget v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 152
    .line 153
    invoke-direct {v2, v0, v5}, Lcom/miui/calendar/util/g$m;-><init>(II)V

    .line 154
    .line 155
    .line 156
    invoke-static {v2}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/homepage/AllInOneActivity;->s1(Landroid/content/Intent;I)J

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    cmp-long p1, v5, v3

    .line 164
    .line 165
    if-eqz p1, :cond_8

    .line 166
    .line 167
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lcom/miui/calendar/util/g$a0;

    .line 181
    .line 182
    invoke-direct {v0, p1}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/g$a0;->a(Z)Lcom/miui/calendar/util/g$a0;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    const/high16 v0, 0x100000

    .line 202
    .line 203
    and-int/2addr p1, v0

    .line 204
    if-nez p1, :cond_7

    .line 205
    .line 206
    const/4 p1, 0x1

    .line 207
    goto :goto_0

    .line 208
    :cond_7
    move p1, v1

    .line 209
    :goto_0
    if-eqz p1, :cond_8

    .line 210
    .line 211
    new-instance p1, Lcom/miui/calendar/util/g$a0;

    .line 212
    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-direct {p1, v0}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v1}, Lcom/miui/calendar/util/g$a0;->a(Z)Lcom/miui/calendar/util/g$a0;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Lcom/miui/calendar/util/g$w0;

    .line 228
    .line 229
    invoke-direct {p1}, Lcom/miui/calendar/util/g$w0;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 233
    .line 234
    .line 235
    :cond_8
    :goto_1
    return-void
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public static synthetic k0(Lcom/android/calendar/homepage/AllInOneActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->p1(I)V

    return-void
.end method

.method private synthetic k1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->w:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/homepage/AllInOneActivity;->H1(II)V

    .line 8
    .line 9
    .line 10
    return-void
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

.method public static synthetic l0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->m1()V

    return-void
.end method

.method private synthetic l1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->K(I)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method public static synthetic m0(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/AllInOneActivity;->d1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic m1()V
    .locals 9

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    const-string v1, "onResume()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Lcom/android/calendar/common/Utils;->f1(J)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->L1()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->e:Z

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 27
    .line 28
    iget-object v6, p0, Lcom/android/calendar/homepage/AllInOneActivity;->I:Landroid/database/ContentObserver;

    .line 29
    .line 30
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v4

    .line 35
    invoke-static {v0, v1, v4}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-boolean v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->h:Z

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/calendar/homepage/WeekHeaderView;->f()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-direct {p0, v4, v5, v1, v3}, Lcom/android/calendar/homepage/AllInOneActivity;->V0(JIZ)V

    .line 58
    .line 59
    .line 60
    iput-boolean v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->h:Z

    .line 61
    .line 62
    :cond_0
    iput-boolean v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->g:Z

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->w1()V

    .line 65
    .line 66
    .line 67
    iget-wide v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->k:J

    .line 68
    .line 69
    const-wide/16 v5, -0x1

    .line 70
    .line 71
    cmp-long v1, v3, v5

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    iget-wide v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->m:J

    .line 76
    .line 77
    cmp-long v1, v3, v5

    .line 78
    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    iget-wide v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->n:J

    .line 82
    .line 83
    cmp-long v1, v3, v5

    .line 84
    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    iget v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->l:I

    .line 88
    .line 89
    invoke-static {v1}, Lcom/android/calendar/common/event/schema/Event;->createEventByType(I)Lcom/android/calendar/common/event/schema/Event;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-wide v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->k:J

    .line 94
    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 96
    .line 97
    .line 98
    iget-wide v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->m:J

    .line 99
    .line 100
    invoke-virtual {v1, v3, v4}, Lcom/android/calendar/common/event/schema/Event;->setStartTimeMillis(J)V

    .line 101
    .line 102
    .line 103
    iget-wide v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->n:J

    .line 104
    .line 105
    invoke-virtual {v1, v3, v4}, Lcom/android/calendar/common/event/schema/Event;->setEndTimeMillis(J)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget v4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->o:I

    .line 113
    .line 114
    iget-boolean v7, p0, Lcom/android/calendar/homepage/AllInOneActivity;->p:Z

    .line 115
    .line 116
    invoke-static {v4, v7}, Lcom/android/calendar/common/j;->a(IZ)J

    .line 117
    .line 118
    .line 119
    move-result-wide v7

    .line 120
    invoke-static {v7, v8}, Lcom/android/calendar/common/j;->d(J)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    const/high16 v7, 0x10000000

    .line 125
    .line 126
    invoke-static {p0, v1, v3, v4, v7}, Lcom/android/calendar/common/Utils;->N0(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;Ljava/util/Calendar;II)V

    .line 127
    .line 128
    .line 129
    iput-wide v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->k:J

    .line 130
    .line 131
    iput-wide v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->m:J

    .line 132
    .line 133
    iput-wide v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->n:J

    .line 134
    .line 135
    iput-boolean v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->p:Z

    .line 136
    .line 137
    iput v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->l:I

    .line 138
    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->q:Landroid/os/Handler;

    .line 140
    .line 141
    iget-object v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->H:Ljava/lang/Runnable;

    .line 142
    .line 143
    iget-object v4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v1, v3, v4}, Lcom/android/calendar/common/Utils;->Z0(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->z1()V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    invoke-static {v0, v3, v4}, Lcom/android/calendar/common/Utils;->a1(Ljava/lang/String;J)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 159
    .line 160
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/miui/calendar/view/MonthMotionContainer;->D()V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->b:Lcom/android/calendar/common/e;

    .line 166
    .line 167
    iget v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 168
    .line 169
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/calendar/common/e;->i(IJZ)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 177
    .line 178
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const/4 v3, 0x2

    .line 183
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-virtual {v1, v2}, Lcom/android/calendar/homepage/t0;->O(I)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->c:Lcom/android/calendar/homepage/g0;

    .line 193
    .line 194
    if-eqz v1, :cond_2

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/android/calendar/homepage/g0;->Y()V

    .line 197
    .line 198
    .line 199
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 200
    .line 201
    iget v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Lcom/android/calendar/homepage/t0;->N(I)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 207
    .line 208
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 209
    .line 210
    new-instance v2, Lcom/android/calendar/homepage/m;

    .line 211
    .line 212
    invoke-direct {v2, p0}, Lcom/android/calendar/homepage/m;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->x:Lcom/android/calendar/common/m;

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_3

    .line 225
    .line 226
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->x:Lcom/android/calendar/common/m;

    .line 227
    .line 228
    invoke-virtual {v1, p0}, Lcom/android/calendar/common/m;->a(Lcom/android/calendar/common/m$b;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->x:Lcom/android/calendar/common/m;

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/android/calendar/common/m;->disable()V

    .line 235
    .line 236
    .line 237
    :goto_1
    invoke-static {}, Lcom/miui/calendar/util/x0;->w0()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_4

    .line 242
    .line 243
    new-instance v1, Lcom/miui/calendar/util/g$d;

    .line 244
    .line 245
    invoke-direct {v1}, Lcom/miui/calendar/util/g$d;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-static {v1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 249
    .line 250
    .line 251
    :cond_4
    const-string v1, "onResume() finish."

    .line 252
    .line 253
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return-void
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method public static synthetic n0()V
    .locals 0

    invoke-static {}, Lcom/android/calendar/homepage/AllInOneActivity;->h1()V

    return-void
.end method

.method private synthetic n1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity$h;->c(Lcom/android/calendar/homepage/AllInOneActivity$h;)Lcom/android/calendar/homepage/LSWeekCalendarView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity$h;->e(Lcom/android/calendar/homepage/AllInOneActivity$h;)Landroid/view/ViewStub;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/calendar/homepage/LSWeekCalendarView;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/AllInOneActivity$h;->d(Lcom/android/calendar/homepage/AllInOneActivity$h;Lcom/android/calendar/homepage/LSWeekCalendarView;)Lcom/android/calendar/homepage/LSWeekCalendarView;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity$h;->c(Lcom/android/calendar/homepage/AllInOneActivity$h;)Lcom/android/calendar/homepage/LSWeekCalendarView;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/android/calendar/homepage/LSWeekCalendarView;->v()V

    .line 31
    .line 32
    .line 33
    return-void
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

.method static synthetic o0(Lcom/android/calendar/homepage/AllInOneActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
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

.method private synthetic o1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->K(I)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method static synthetic p0(Lcom/android/calendar/homepage/AllInOneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
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

.method private synthetic p1(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->K1(I)V

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

.method static synthetic q0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->z1()V

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

.method private q1(Lcom/miui/calendar/util/g$a0;)Z
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/miui/calendar/util/g$a0;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/calendar/homepage/t0;->u()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v0, v3}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    :goto_0
    move v0, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object v0, p1, Lcom/miui/calendar/util/g$a0;->a:Ljava/util/Calendar;

    .line 40
    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v0, v3}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->b:Lcom/android/calendar/common/e;

    .line 52
    .line 53
    iget-boolean v3, p1, Lcom/miui/calendar/util/g$a0;->g:Z

    .line 54
    .line 55
    iput-boolean v3, v0, Lcom/android/calendar/common/e;->t:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    move v0, v2

    .line 59
    :goto_2
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iget-boolean p1, p1, Lcom/miui/calendar/util/g$a0;->h:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    const/4 p1, 0x6

    .line 68
    if-eq v3, p1, :cond_3

    .line 69
    .line 70
    const/4 p1, 0x4

    .line 71
    if-ne v3, p1, :cond_4

    .line 72
    .line 73
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->b:Lcom/android/calendar/common/e;

    .line 74
    .line 75
    iput-boolean v1, p1, Lcom/android/calendar/common/e;->t:Z

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move v2, v0

    .line 79
    :goto_3
    return v2
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

.method static synthetic r0(Lcom/android/calendar/homepage/AllInOneActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->F:I

    .line 2
    .line 3
    return p1
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

.method private r1()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->G1()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->N0()V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lg4/a;->f(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    return-void
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

.method static synthetic s0(Lcom/android/calendar/homepage/AllInOneActivity;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/homepage/AllInOneActivity;->Y0(III)V

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

.method private s1(Landroid/content/Intent;I)J
    .locals 6

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    const-string v3, "android.intent.action.VIEW"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_6

    .line 31
    .line 32
    const-string v3, "com.android.calendar.main.views"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x2

    .line 61
    if-lt v2, v3, :cond_7

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v4, 0x4

    .line 68
    if-le v2, v4, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v2, 0x1

    .line 72
    if-lt p2, v2, :cond_7

    .line 73
    .line 74
    const/4 v2, 0x5

    .line 75
    if-le p2, v2, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 p2, 0x0

    .line 79
    const/4 v2, -0x1

    .line 80
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-ne v5, v4, :cond_5

    .line 85
    .line 86
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct {p0, p2}, Lcom/android/calendar/homepage/AllInOneActivity;->L0(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/4 p2, 0x3

    .line 97
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    :cond_5
    if-lez v2, :cond_7

    .line 108
    .line 109
    invoke-direct {p0, p2, v2}, Lcom/android/calendar/homepage/AllInOneActivity;->O0(II)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->u1(Landroid/content/Intent;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    :cond_7
    :goto_0
    return-wide v0
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

.method static synthetic t0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->Z0()V

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

.method private t1(Landroid/content/Intent;I)I
    .locals 3

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    const-string v1, "com.android.calendar.main.views"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string p1, "android.intent.action.SEARCH"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move p2, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x2

    .line 61
    if-lt v0, v1, :cond_6

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x4

    .line 68
    if-le v0, v1, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :cond_6
    :goto_0
    return p2
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

.method static synthetic u0(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->G1()V

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

.method private u1(Landroid/content/Intent;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x2

    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    const-string v5, "events"

    .line 36
    .line 37
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    iput-wide v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->k:J

    .line 56
    .line 57
    cmp-long v0, v5, v1

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const-string v0, "beginTime"

    .line 62
    .line 63
    const-wide/16 v5, 0x0

    .line 64
    .line 65
    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    iput-wide v7, p0, Lcom/android/calendar/homepage/AllInOneActivity;->m:J

    .line 70
    .line 71
    const-string v0, "endTime"

    .line 72
    .line 73
    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    iput-wide v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->n:J

    .line 78
    .line 79
    const-string v0, "attendeeStatus"

    .line 80
    .line 81
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->o:I

    .line 86
    .line 87
    const-string v0, "allDay"

    .line 88
    .line 89
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput-boolean v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->p:Z

    .line 94
    .line 95
    iget-wide v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->m:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    .line 97
    :try_start_1
    const-string v2, "extra_key_event_type"

    .line 98
    .line 99
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->l:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .line 105
    :catch_0
    move-wide v1, v0

    .line 106
    :catch_1
    :cond_0
    return-wide v1
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

.method static synthetic v0(Lcom/android/calendar/homepage/AllInOneActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->o:I

    .line 2
    .line 3
    return p0
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

.method private v1(I)V
    .locals 3

    .line 1
    const/16 v0, -0x16d

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    const-string v1, "<-365"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v2, -0xb4

    .line 11
    .line 12
    if-lt p1, v0, :cond_1

    .line 13
    .line 14
    if-ge p1, v2, :cond_1

    .line 15
    .line 16
    const-string v1, "[-365, -180)"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v0, -0x5a

    .line 20
    .line 21
    if-lt p1, v2, :cond_2

    .line 22
    .line 23
    if-ge p1, v0, :cond_2

    .line 24
    .line 25
    const-string v1, "[-180, -90)"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/16 v2, -0x1e

    .line 29
    .line 30
    if-lt p1, v0, :cond_3

    .line 31
    .line 32
    if-ge p1, v2, :cond_3

    .line 33
    .line 34
    const-string v1, "[-90, -30)"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    if-lt p1, v2, :cond_4

    .line 38
    .line 39
    if-gez p1, :cond_4

    .line 40
    .line 41
    const-string v1, "[-30, 0)"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    if-nez p1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    const/16 v0, 0x1e

    .line 48
    .line 49
    if-lez p1, :cond_6

    .line 50
    .line 51
    if-gt p1, v0, :cond_6

    .line 52
    .line 53
    const-string v1, "(0, 30]"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_6
    const/16 v2, 0x5a

    .line 57
    .line 58
    if-le p1, v0, :cond_7

    .line 59
    .line 60
    if-gt p1, v2, :cond_7

    .line 61
    .line 62
    const-string v1, "(30, 90]"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    const/16 v0, 0xb4

    .line 66
    .line 67
    if-le p1, v2, :cond_8

    .line 68
    .line 69
    if-gt p1, v0, :cond_8

    .line 70
    .line 71
    const-string v1, "(90, 180]"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_8
    const/16 v2, 0x16d

    .line 75
    .line 76
    if-le p1, v0, :cond_9

    .line 77
    .line 78
    if-gt p1, v2, :cond_9

    .line 79
    .line 80
    const-string v1, "(180, 365]"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_9
    if-le p1, v2, :cond_a

    .line 84
    .line 85
    const-string v1, ">365"

    .line 86
    .line 87
    :cond_a
    :goto_0
    const/4 p1, 0x2

    .line 88
    new-array p1, p1, [Ljava/lang/String;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    const-string v2, "diff"

    .line 92
    .line 93
    aput-object v2, p1, v0

    .line 94
    .line 95
    const/4 v0, 0x1

    .line 96
    aput-object v1, p1, v0

    .line 97
    .line 98
    const-string v0, "goto_date"

    .line 99
    .line 100
    invoke-static {v0, p1}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
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

.method static synthetic w0(Lcom/android/calendar/homepage/AllInOneActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->p:Z

    .line 2
    .line 3
    return p0
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

.method private w1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "from_shortcuts_setup"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    :cond_0
    const-string v2, "from_shortcuts_next_agenda"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    :cond_1
    const-string v2, "from_shortcuts_new_agenda"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    :cond_2
    move v0, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v0, v5

    .line 56
    :goto_0
    if-eqz v1, :cond_9

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_9

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/miui/calendar/util/o0;->i(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    const/4 v1, -0x1

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    sparse-switch v2, :sswitch_data_0

    .line 87
    .line 88
    .line 89
    :goto_1
    move v4, v1

    .line 90
    goto :goto_2

    .line 91
    :sswitch_0
    const-string v2, "next_agenda"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    const/4 v4, 0x2

    .line 101
    goto :goto_2

    .line 102
    :sswitch_1
    const-string v2, "new_agenda"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :sswitch_2
    const-string v2, "setup"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    move v4, v5

    .line 121
    :cond_7
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :pswitch_0
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 132
    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    return-void

    .line 136
    :cond_8
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->K0()V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .line 141
    .line 142
    const-class v1, Lcom/android/calendar/event/EditEventActivity;

    .line 143
    .line 144
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .line 152
    .line 153
    const-class v1, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;

    .line 154
    .line 155
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    .line 160
    .line 161
    :cond_9
    :goto_3
    return-void

    .line 162
    nop

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x6843a7d -> :sswitch_2
        0xd0b5b8b -> :sswitch_1
        0x3a2be6d8 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method static synthetic x0(Lcom/android/calendar/homepage/AllInOneActivity;)Lcom/android/calendar/common/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->b:Lcom/android/calendar/common/e;

    .line 2
    .line 3
    return-object p0
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

.method private x1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 4
    .line 5
    new-instance v1, Lcom/android/calendar/homepage/k;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/k;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
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

.method static synthetic y0(Lcom/android/calendar/homepage/AllInOneActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->z:J

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

.method private y1(Landroid/view/MenuItem;)V
    .locals 6

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "refreshMenuVisible"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    const-string v1, "content://com.miui.home.app.hide"

    .line 13
    .line 14
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "packageName"

    .line 28
    .line 29
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "activityName"

    .line 33
    .line 34
    const-class v4, Lcom/android/calendar/homepage/AllInOneActivity;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "serialNumber"

    .line 44
    .line 45
    const-string v4, "0"

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "isAppHidded"

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    const-string v2, "result"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "true"

    .line 70
    .line 71
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    const-string v1, "refreshMenuVisible error!"

    .line 81
    .line 82
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    :goto_0
    return-void
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

.method static synthetic z0(Lcom/android/calendar/homepage/AllInOneActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->z:J

    .line 2
    .line 3
    return-wide p1
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

.method private z1()V
    .locals 1

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->q0(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->g:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->invalidateOptionsMenu()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method E1(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "click_more_setting_button"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/m;->V(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    return-void
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p3, Lcom/android/calendar/homepage/AllInOneActivity$d;

    .line 12
    .line 13
    invoke-direct {p3, p0}, Lcom/android/calendar/homepage/AllInOneActivity$d;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/miui/calendar/util/z0;->r(Landroid/content/Context;IILcom/miui/calendar/util/z0$h;)Z

    .line 17
    .line 18
    .line 19
    return-void
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
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lr3/b;->g:Z

    .line 3
    .line 4
    invoke-static {}, Lr3/a;->k()V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    sput-wide v0, Lr3/a;->h:J

    .line 10
    .line 11
    sput-wide v0, Lr3/a;->i:J

    .line 12
    .line 13
    :try_start_0
    invoke-super {p0}, Lmiuix/appcompat/app/m;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v1, "Cal:D:AllInOne"

    .line 19
    .line 20
    const-string v2, "onBackPressed"

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
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

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->y:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->y:J

    .line 10
    .line 11
    const-wide/16 v0, 0xfa

    .line 12
    .line 13
    cmp-long v0, v2, v0

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    const-string p1, "Cal:D:AllInOne"

    .line 18
    .line 19
    const-string v0, "Double click during short period."

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-string v0, "2.0"

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    sparse-switch p1, :sswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :sswitch_0
    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 46
    .line 47
    sget v0, Lmiuix/view/f;->z:I

    .line 48
    .line 49
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 56
    .line 57
    sget v0, Lmiuix/view/f;->k:I

    .line 58
    .line 59
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {}, Lcom/android/calendar/common/Utils;->I()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/miui/calendar/util/g$a0;

    .line 74
    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-direct {v0, v2}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 80
    .line 81
    .line 82
    iget v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 83
    .line 84
    if-ne v2, v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/g$a0;->d(Z)Lcom/miui/calendar/util/g$a0;

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0, p1}, Lcom/miui/calendar/util/s0;->w(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/4 v0, 0x4

    .line 107
    if-ne p1, v0, :cond_3

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 112
    .line 113
    new-instance v0, Lcom/android/calendar/homepage/AllInOneActivity$g;

    .line 114
    .line 115
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/AllInOneActivity$g;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 116
    .line 117
    .line 118
    const-wide/16 v1, 0xc8

    .line 119
    .line 120
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .line 122
    .line 123
    :cond_3
    const-string p1, "click_today_button"

    .line 124
    .line 125
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :sswitch_1
    iget p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->v:I

    .line 130
    .line 131
    const/4 v0, 0x3

    .line 132
    if-ne p1, v1, :cond_5

    .line 133
    .line 134
    iget p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->w:I

    .line 135
    .line 136
    const/16 v1, 0x10e

    .line 137
    .line 138
    if-ne p1, v1, :cond_4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    const/16 v1, 0x5a

    .line 142
    .line 143
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/calendar/homepage/AllInOneActivity;->H1(II)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/homepage/AllInOneActivity;->H1(II)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :sswitch_2
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->y:Landroid/widget/ImageView;

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->E1(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :sswitch_3
    const/4 p1, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->I0(Landroid/app/ActivityOptions;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_6

    .line 169
    .line 170
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 173
    .line 174
    sget v0, Lmiuix/view/f;->z:I

    .line 175
    .line 176
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 181
    .line 182
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 183
    .line 184
    sget v0, Lmiuix/view/f;->k:I

    .line 185
    .line 186
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 187
    .line 188
    .line 189
    :goto_2
    const-string p1, "click_new_event_button"

    .line 190
    .line 191
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :sswitch_4
    new-instance p1, Lcom/miui/calendar/util/g$a;

    .line 196
    .line 197
    invoke-direct {p1}, Lcom/miui/calendar/util/g$a;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 201
    .line 202
    .line 203
    :goto_3
    return-void

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x7f0a003f -> :sswitch_4
        0x7f0a0438 -> :sswitch_3
        0x7f0a054d -> :sswitch_2
        0x7f0a05cb -> :sswitch_1
        0x7f0a0645 -> :sswitch_0
    .end sparse-switch
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->v:I

    .line 5
    .line 6
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->v:I

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x3

    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 21
    .line 22
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->v:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/calendar/homepage/t0;->M(Z)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 33
    .line 34
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/android/calendar/homepage/t0;->K(I)V

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->v:I

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    const/16 v1, 0x400

    .line 43
    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->x1()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/calendar/homepage/t0;->t()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/calendar/homepage/t0;->I()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    return-void
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onCreate savedInstanceState:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Cal:D:AllInOne"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v0, "android:fragments"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->D1()V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Lpc/c;->o(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Lcom/android/calendar/homepage/r;

    .line 49
    .line 50
    invoke-direct {v2, p0}, Lcom/android/calendar/homepage/r;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {p0}, Lg4/a;->f(Landroid/app/Activity;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    const v0, 0x7f0d0049

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/AllInOneActivity;->B1(Landroid/content/Intent;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 87
    .line 88
    iput v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->v:I

    .line 89
    .line 90
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->s(Landroid/content/Context;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/4 v4, -0x1

    .line 95
    if-eq v3, v4, :cond_2

    .line 96
    .line 97
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->s(Landroid/content/Context;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {p0, v3}, Lcom/android/calendar/common/Utils;->g1(Landroid/content/Context;I)V

    .line 102
    .line 103
    .line 104
    invoke-static {p0, v4}, Lcom/android/calendar/common/Utils;->b1(Landroid/content/Context;I)V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/homepage/AllInOneActivity;->U0(Landroid/os/Bundle;Landroid/content/Intent;)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-direct {p0, p1, v0, v3}, Lcom/android/calendar/homepage/AllInOneActivity;->S0(Landroid/os/Bundle;Landroid/content/Intent;I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    invoke-direct {p0, v4, v5}, Lcom/android/calendar/homepage/AllInOneActivity;->R0(J)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v2}, Lcom/android/calendar/homepage/AllInOneActivity;->T0(Landroid/content/res/Resources;)V

    .line 119
    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    invoke-direct {p0, v4, v5, v3, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->V0(JIZ)V

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Lb2/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    invoke-static {v1, v2, v3}, Lcom/android/calendar/common/Utils;->a1(Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->F1()V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->Q0()V

    .line 143
    .line 144
    .line 145
    return-void
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

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e0001

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a03cd

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lcom/miui/calendar/util/y;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->M()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/calendar/settings/j;->q(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    :cond_1
    const v0, 0x7f0a03c9

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->y1(Landroid/view/MenuItem;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1
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

.method protected onDestroy()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    const-string v1, "onDestroy()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->G:Lh4/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lz3/j;->i()V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lb2/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->A()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/common/e;->g(Landroid/content/Context;)Lcom/android/calendar/common/e;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/android/calendar/common/e;->q()V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Lpc/c;->q(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/miui/calendar/util/w;->a()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->q:Landroid/os/Handler;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {}, Lz3/k;->c()V

    .line 65
    .line 66
    .line 67
    return-void
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$a0;)V
    .locals 6
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 51
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/calendar/common/Utils;->Y0(J)V

    .line 52
    iget-boolean v0, p1, Lcom/miui/calendar/util/g$a0;->e:Z

    const-string v1, "Cal:D:AllInOne"

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/calendar/util/g$a0;->a:Ljava/util/Calendar;

    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "gotoDate: same day, return"

    .line 53
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "timecost----- onEventMainThread receive GoToDateEvent"

    .line 54
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    iget-object v1, p1, Lcom/miui/calendar/util/g$a0;->a:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/homepage/t0;->S(Ljava/util/Calendar;Z)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->q1(Lcom/miui/calendar/util/g$a0;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/g$a0;->b(Z)Lcom/miui/calendar/util/g$a0;

    .line 57
    iget-boolean v0, p1, Lcom/miui/calendar/util/g$a0;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/miui/calendar/util/g$a0;->c:Z

    if-eqz v0, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p1, v4}, Lcom/miui/calendar/util/g$a0;->a(Z)Lcom/miui/calendar/util/g$a0;

    .line 58
    iget-object v0, p1, Lcom/miui/calendar/util/g$a0;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/android/calendar/common/k;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/calendar/common/Utils;->e1(J)V

    .line 59
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    .line 60
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->O(I)V

    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->Q(I)V

    .line 63
    :goto_1
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/homepage/t0;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->M:Lcom/android/calendar/homepage/YearFrameLayout;

    if-eqz v0, :cond_5

    .line 64
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/YearFrameLayout;->e(I)V

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity$h;->c(Lcom/android/calendar/homepage/AllInOneActivity$h;)Lcom/android/calendar/homepage/LSWeekCalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/homepage/LSWeekCalendarView;->v()V

    .line 66
    iget-boolean v0, p1, Lcom/miui/calendar/util/g$a0;->g:Z

    if-nez v0, :cond_6

    .line 67
    iget-object p1, p1, Lcom/miui/calendar/util/g$a0;->a:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/calendar/util/s0;->l(J)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->v1(I)V

    :cond_6
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$a;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/calendar/homepage/t0;->u()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->K1(I)V

    const-string p1, "view_year_entry_button_clicked"

    .line 4
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$b0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/calendar/homepage/t0;->u()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 6
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->K1(I)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$b;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$c0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$c;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 111
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 112
    throw p1
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$d0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$d;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$e0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$e;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$f0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$f;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$g0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$g;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$h0;)V
    .locals 5
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 19
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    move-result v0

    iget-boolean v1, p1, Lcom/miui/calendar/util/g$h0;->a:Z

    if-eq v0, v1, :cond_4

    .line 20
    invoke-static {v1}, Lcom/miui/calendar/util/x0;->L0(Z)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventMainThread mMonthExpanded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/miui/calendar/util/g$h0;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cal:D:AllInOne"

    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p1, Lcom/miui/calendar/util/g$h0;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 23
    iget-boolean v0, p1, Lcom/miui/calendar/util/g$h0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "month_view_pull_down"

    goto :goto_0

    :cond_0
    const-string v0, "month_view_pull_up"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    .line 24
    iget-boolean v3, p1, Lcom/miui/calendar/util/g$h0;->c:Z

    if-eqz v3, :cond_1

    const-string v3, "\u6765\u81ea\u6708\u76d8"

    goto :goto_1

    :cond_1
    const-string v3, "\u6765\u81ea\u5361\u7247\u5217\u8868"

    :goto_1
    aput-object v3, v2, v1

    .line 25
    invoke-static {v0, v2}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    :cond_2
    iget-boolean p1, p1, Lcom/miui/calendar/util/g$h0;->a:Z

    if-nez p1, :cond_3

    const-string p1, "preference_first_guide_shown"

    .line 27
    invoke-static {p0, p1, v1}, Lb2/a;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "preference_guide_last_swipe_date"

    invoke-static {p0, p1, v0, v1}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Lcom/miui/calendar/view/MonthMotionContainer;->M()V

    :cond_4
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$h;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$i0;)V
    .locals 0
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->b:Lcom/android/calendar/common/e;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/android/calendar/common/e;->w()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$i;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$j0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$k0;)V
    .locals 0
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {p1}, Lcom/miui/calendar/view/MonthMotionContainer;->F()V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$k;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$l0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$l;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$m;)V
    .locals 11
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 80
    iget v0, p1, Lcom/miui/calendar/util/g$m;->b:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 81
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/homepage/t0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    iput v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    move v6, v2

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/homepage/t0;->u()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    invoke-direct {p0, v3}, Lcom/android/calendar/homepage/AllInOneActivity;->J1(Z)V

    :cond_2
    move v6, v0

    :goto_0
    const/4 v0, 0x1

    if-eq v6, v0, :cond_7

    const/4 v4, 0x2

    if-eq v6, v4, :cond_6

    const/4 v4, 0x3

    if-eq v6, v4, :cond_4

    if-eq v6, v2, :cond_3

    const/4 v4, 0x6

    if-eq v6, v4, :cond_3

    goto :goto_2

    .line 85
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0800b2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 86
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    move v4, v0

    goto :goto_1

    :cond_5
    move v4, v3

    .line 87
    :goto_1
    iget-object v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v5, v5, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 88
    :cond_6
    iget-object v4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0800b1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 89
    :cond_7
    iget-object v4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0800b0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    move v4, v3

    .line 90
    :goto_3
    iget-object v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v5, v5, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    new-instance v7, Lcom/android/calendar/homepage/s;

    invoke-direct {v7, p0, v4}, Lcom/android/calendar/homepage/s;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;Z)V

    invoke-virtual {v5, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    iget-object v4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->c:Lcom/android/calendar/homepage/t0;

    sget-object v5, Lcom/android/calendar/common/Utils;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/homepage/t0;->R(I)V

    .line 92
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    move-result-wide v4

    .line 93
    iget-object v7, p1, Lcom/miui/calendar/util/g$m;->d:Ljava/util/Calendar;

    if-eqz v7, :cond_8

    .line 94
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    :cond_8
    move-wide v7, v4

    const-string v4, "Cal:D:AllInOne"

    if-nez v6, :cond_9

    const-string v5, "setMainPanel() viewType=0, return false"

    .line 95
    invoke-static {v4, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-boolean v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->E:Z

    .line 97
    :cond_9
    iget-boolean v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->e:Z

    const-string v9, ", return false"

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->E:Z

    if-eqz v5, :cond_a

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMainPanel() mOnSaveInstanceStateCalled="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/calendar/homepage/AllInOneActivity;->e:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",mIsViewInited="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/calendar/homepage/AllInOneActivity;->E:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-boolean v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->E:Z

    .line 100
    :cond_a
    iget-boolean v5, p1, Lcom/miui/calendar/util/g$m;->c:Z

    if-nez v5, :cond_b

    iget v5, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    if-ne v5, v6, :cond_b

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMainPanel() mCurrentView="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-boolean v3, p0, Lcom/android/calendar/homepage/AllInOneActivity;->E:Z

    .line 103
    :cond_b
    iget v4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    if-eq v6, v4, :cond_d

    .line 104
    iget-boolean v9, p1, Lcom/miui/calendar/util/g$m;->c:Z

    iget-boolean v10, p1, Lcom/miui/calendar/util/g$m;->f:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/calendar/homepage/AllInOneActivity;->C1(IJZZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/homepage/AllInOneActivity;->E:Z

    .line 105
    iget v4, p1, Lcom/miui/calendar/util/g$m;->b:I

    if-ne v4, v1, :cond_c

    .line 106
    iput v2, p1, Lcom/miui/calendar/util/g$m;->b:I

    move v3, v0

    .line 107
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    :cond_d
    if-eqz v3, :cond_e

    .line 108
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->q:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/homepage/t;

    invoke-direct {v1}, Lcom/android/calendar/homepage/t;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :cond_e
    iget-boolean p1, p1, Lcom/miui/calendar/util/g$m;->g:Z

    if-eqz p1, :cond_f

    .line 110
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    new-instance v0, Lcom/android/calendar/homepage/u;

    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/u;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$n;)V
    .locals 0
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/miui/calendar/util/y;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->F:I

    .line 38
    :cond_1
    invoke-static {}, Lz3/a;->a()V

    .line 39
    new-instance p1, Lcom/miui/calendar/util/g$j0;

    invoke-direct {p1}, Lcom/miui/calendar/util/g$j0;-><init>()V

    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 40
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->G:Lh4/c;

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->M:Lcom/android/calendar/homepage/YearFrameLayout;

    invoke-virtual {p1}, Lcom/android/calendar/homepage/YearFrameLayout;->k()V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$o;)V
    .locals 4
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "Cal:D:AllInOne"

    .line 44
    invoke-static {p1, v0}, Lcom/miui/calendar/util/g;->b(Lcom/miui/calendar/util/g$j;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    .line 46
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->b:Lcom/android/calendar/common/e;

    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 47
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 48
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/calendar/common/e;->i(IJZ)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$q0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$q;)V
    .locals 2
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 33
    iget v0, p1, Lcom/miui/calendar/util/g$q;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 34
    iget-object p1, p1, Lcom/miui/calendar/util/g$q;->b:Ljava/util/Calendar;

    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->j:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->j:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$r0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$s0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 115
    iget p1, p1, Lcom/miui/calendar/util/g$s0;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 116
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/homepage/AllInOneActivity;->H1(II)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$u0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$u;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$v0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$w0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    .line 70
    invoke-static {p0}, Lcom/android/calendar/common/e;->g(Landroid/content/Context;)Lcom/android/calendar/common/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/calendar/common/e;->r()V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$x0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$y;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$z;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/MonthMotionContainer;->a(Lcom/miui/calendar/util/g$j;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x52

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->I0(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "click_setting_button_from_menu"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "Cal:D:AllInOne"

    .line 5
    .line 6
    const-string v1, "activity onNewIntent()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 14
    .line 15
    new-instance v1, Lcom/android/calendar/homepage/v;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/homepage/v;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->D1()V

    .line 24
    .line 25
    .line 26
    return-void
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    const-class v1, Lcom/miui/calendar/search/SearchDetailsActivity;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "click_search_events"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :sswitch_1
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->j(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    new-instance p1, Lcom/android/calendar/homepage/AllInOneActivity$m;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/android/calendar/homepage/AllInOneActivity$m;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Lcom/miui/calendar/util/z0;->D(Landroid/content/Context;Lcom/miui/calendar/util/z0$h;)Lmiuix/appcompat/app/l;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->Z0()V

    .line 51
    .line 52
    .line 53
    :goto_0
    const-string p1, "click_subscription_service_button"

    .line 54
    .line 55
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :sswitch_2
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->I0(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "click_setting_button"

    .line 63
    .line 64
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->A1(Landroid/view/MenuItem;)V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :sswitch_4
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllInOneActivity;->J0()V

    .line 73
    .line 74
    .line 75
    const-string p1, "click_jump_date_button"

    .line 76
    .line 77
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    .line 82
    .line 83
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 84
    .line 85
    .line 86
    const-class v0, Lcom/android/calendar/datecalculate/DateCalculateInfoActivity;

    .line 87
    .line 88
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    const-string p1, "click_date_calculate_button"

    .line 95
    .line 96
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return v1

    .line 100
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    return p1

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x7f0a03c7 -> :sswitch_5
        0x7f0a03c8 -> :sswitch_4
        0x7f0a03c9 -> :sswitch_3
        0x7f0a03cb -> :sswitch_2
        0x7f0a03cd -> :sswitch_1
        0x7f0a0524 -> :sswitch_0
    .end sparse-switch
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

.method protected onPause()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    const-string v1, "onPause()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->g:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->isFinishing()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Lb2/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->q:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->H:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/android/calendar/common/Utils;->T0(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->J:Landroid/content/BroadcastReceiver;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {p0, v0}, Lcom/android/calendar/common/Utils;->d(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->J:Landroid/content/BroadcastReceiver;

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->B()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->x:Lcom/android/calendar/common/m;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/calendar/common/m;->disable()V

    .line 54
    .line 55
    .line 56
    return-void
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

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    const v0, 0x7f0a03cd

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {}, Lcom/miui/calendar/util/y;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->M()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/calendar/settings/j;->q(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 34
    .line 35
    .line 36
    :goto_1
    return v1
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

.method protected onRestart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->C()V

    .line 9
    .line 10
    .line 11
    return-void
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

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/calendar/common/b;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lg4/a;->c(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->H:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/android/calendar/common/Utils;->c1(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->J:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 22
    .line 23
    new-instance v1, Lcom/android/calendar/homepage/x;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/x;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "Cal:D:AllInOne"

    .line 2
    .line 3
    const-string v1, "onSaveInstanceState()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->e:Z

    .line 10
    .line 11
    invoke-super {p0, p1}, Lmiuix/appcompat/app/m;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->f:I

    .line 15
    .line 16
    const-string v1, "key_restore_view"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-string v2, "key_timestamp"

    .line 26
    .line 27
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    return-void
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

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "preferences_week_start_day"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->g:Z

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/android/calendar/homepage/AllInOneActivity;->h:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/calendar/homepage/AllInOneActivity;->V0(JIZ)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
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

.method protected onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/m;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->D:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->E()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->I:Landroid/database/ContentObserver;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v1, "Cal:D:AllInOne"

    .line 23
    .line 24
    const-string v2, "onStop()"

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
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

.method public p(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/AllInOneActivity;->w:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->w:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity;->q:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v0, Lcom/android/calendar/homepage/l;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/l;-><init>(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x12c

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method
