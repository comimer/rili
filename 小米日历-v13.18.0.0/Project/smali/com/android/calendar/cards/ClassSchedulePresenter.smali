.class public Lcom/android/calendar/cards/ClassSchedulePresenter;
.super Lcom/android/calendar/cards/b;
.source "ClassSchedulePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/ClassSchedulePresenter$b;,
        Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;,
        Lcom/android/calendar/cards/ClassSchedulePresenter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/android/calendar/cards/ClassSchedulePresenter$b;",
        ">;"
    }
.end annotation


# static fields
.field private static k:I

.field private static l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;


# instance fields
.field f:Landroid/content/Context;

.field private g:I

.field private h:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->g:I

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "disk_cache_key_class_schedule_data-"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->j:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->f:Landroid/content/Context;

    .line 37
    .line 38
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

.method public static synthetic k(Lcom/android/calendar/cards/ClassSchedulePresenter;Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/cards/ClassSchedulePresenter;->s(Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method

.method static synthetic l(Lcom/android/calendar/cards/ClassSchedulePresenter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->i:Ljava/lang/String;

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

.method static synthetic m(Lcom/android/calendar/cards/ClassSchedulePresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->i:Ljava/lang/String;

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

.method static synthetic n(Lcom/android/calendar/cards/ClassSchedulePresenter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->j:Ljava/lang/String;

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

.method static synthetic o()Lcom/android/calendar/cards/ClassSchedulePresenter$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

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

.method static synthetic p()I
    .locals 1

    .line 1
    sget v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->k:I

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

.method private synthetic s(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/miui/calendar/account/mi/MiAccountSchema;->authToken:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/miui/calendar/account/mi/MiAccountSchema;->userId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->f:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2, v0, p1}, Lu1/d;->b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-wide v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->id:J

    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "cardIds"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "targetTime"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->f:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/miui/calendar/util/DeviceUtils;->d(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->f:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {}, Lu1/d;->d()Lu1/a;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Lcom/android/calendar/cards/ClassSchedulePresenter$c;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/android/calendar/cards/ClassSchedulePresenter$c;-><init>(Lcom/android/calendar/cards/ClassSchedulePresenter;)V

    .line 70
    .line 71
    .line 72
    const-string v3, "Cal:D:ClassSchedulePresenter"

    .line 73
    .line 74
    const-string v4, "start query class schedule card item"

    .line 75
    .line 76
    invoke-static {v3, v4}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, p1, v0}, Lu1/a;->q(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->h:Ltc/a;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    new-instance v0, Lu1/b;

    .line 88
    .line 89
    invoke-direct {v0, v2}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Ltc/a;->q(Ltc/b;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
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
.method bridge synthetic b()Lcom/android/calendar/cards/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/ClassSchedulePresenter;->q()Lcom/android/calendar/cards/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method c()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/ClassSchedulePresenter;->r()Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method e()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->v(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
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
.end method

.method h()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/cards/ClassSchedulePresenter$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 7
    .line 8
    sget-object v0, Lcom/android/calendar/cards/CardHelper;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 25
    .line 26
    iget v2, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->showType:I

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x14

    .line 29
    .line 30
    const/16 v3, 0x3a

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    sget-object v2, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 35
    .line 36
    iput-object v1, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->f:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->j:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/miui/calendar/util/q;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->i:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->i:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v2, Lcom/android/calendar/cards/ClassSchedulePresenter$a;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/android/calendar/cards/ClassSchedulePresenter$a;-><init>(Lcom/android/calendar/cards/ClassSchedulePresenter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v0, v2}, Lcom/miui/calendar/util/x;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/List;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 87
    .line 88
    move-object v1, v0

    .line 89
    :cond_2
    sget-object v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/android/calendar/cards/CardHelper;->l(Lcom/miui/calendar/card/schema/CustomCardSchema;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v2, "Cal:D:ClassSchedulePresenter"

    .line 99
    .line 100
    const-string v3, "doInBackground() "

    .line 101
    .line 102
    invoke-static {v2, v3, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    iput-object v1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter;->i:Ljava/lang/String;

    .line 107
    .line 108
    :goto_1
    sget-object v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 109
    .line 110
    iput-object v1, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->b:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->extra:Lcom/google/gson/JsonObject;

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    const-string v1, "classState"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    sget-object v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 129
    .line 130
    iget-object v2, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 131
    .line 132
    iget-object v2, v2, Lcom/miui/calendar/card/schema/CustomCardSchema;->extra:Lcom/google/gson/JsonObject;

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    iput v1, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->c:I

    .line 143
    .line 144
    :cond_4
    sget-object v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    iget v0, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->c:I

    .line 151
    .line 152
    sget v1, Lcom/android/calendar/cards/ClassSchedulePresenter;->k:I

    .line 153
    .line 154
    if-ne v0, v1, :cond_5

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_5
    new-instance v0, Lcom/android/calendar/cards/e0;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lcom/android/calendar/cards/e0;-><init>(Lcom/android/calendar/cards/ClassSchedulePresenter;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Lk3/d;->g(Lk3/d$b;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    return-void
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

.method q()Lcom/android/calendar/cards/d0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/cards/d0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/d0;-><init>(Ljava/util/Calendar;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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

.method r()Lcom/android/calendar/cards/ClassSchedulePresenter$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/cards/ClassSchedulePresenter;->l:Lcom/android/calendar/cards/ClassSchedulePresenter$b;

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
