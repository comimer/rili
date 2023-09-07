.class final Lcom/miui/calendar/detail/CardDetailActivity$c;
.super Ljava/lang/Object;
.source "CardDetailActivity.kt"

# interfaces
.implements Lu1/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/detail/CardDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\t\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007H\u0016R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/calendar/detail/CardDetailActivity$c;",
        "Lu1/b$a;",
        "Lorg/json/JSONObject;",
        "jsonObject",
        "Lkotlin/u;",
        "a",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "b",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/miui/calendar/detail/CardDetailActivity;",
        "Ljava/lang/ref/WeakReference;",
        "mCardDetailActivityRef",
        "activity",
        "<init>",
        "(Lcom/miui/calendar/detail/CardDetailActivity;)V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/calendar/detail/CardDetailActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/calendar/detail/CardDetailActivity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic c(Lcom/miui/calendar/detail/CardDetailActivity$c;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/detail/CardDetailActivity$c;->d(Lcom/miui/calendar/detail/CardDetailActivity$c;)V

    return-void
.end method

.method private static final d(Lcom/miui/calendar/detail/CardDetailActivity$c;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/miui/calendar/detail/CardDetailActivity;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->f0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/card/CardAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/miui/calendar/card/CardAdapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->f0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/card/CardAdapter;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/miui/calendar/card/CardAdapter;->getCount()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-static {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->k0(Lcom/miui/calendar/detail/CardDetailActivity;)Landroid/widget/ListView;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-static {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->k0(Lcom/miui/calendar/detail/CardDetailActivity;)Landroid/widget/ListView;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->j0(Lcom/miui/calendar/detail/CardDetailActivity;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    :cond_1
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


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    const-string v0, "jsonObject"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/miui/calendar/detail/CardDetailActivity;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :try_start_0
    const-string v2, "data"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/miui/calendar/util/l0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    invoke-static {p1}, Ls4/d;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    const-string v3, "card_detail"

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    :try_start_2
    invoke-static {v0}, Lcom/miui/calendar/detail/CardDetailActivity;->i0(Lcom/miui/calendar/detail/CardDetailActivity;)Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lkotlin/jvm/internal/z;->a:Lkotlin/jvm/internal/z;

    .line 44
    .line 45
    const-string v2, "%s_%d"

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    new-array v5, v4, [Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    aput-object v3, v5, v6

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-static {v0}, Lcom/miui/calendar/detail/CardDetailActivity;->h0(Lcom/miui/calendar/detail/CardDetailActivity;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    aput-object v6, v5, v3

    .line 63
    .line 64
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "format(format, *args)"

    .line 73
    .line 74
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2, p1}, Lcom/miui/calendar/util/q;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-class v1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 81
    .line 82
    invoke-static {p1, v1}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/miui/calendar/detail/CardDetailActivity;->o0(Lcom/miui/calendar/detail/CardDetailActivity;Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {v0}, Lcom/miui/calendar/detail/CardDetailActivity;->i0(Lcom/miui/calendar/detail/CardDetailActivity;)Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2, v3}, Lcom/miui/calendar/util/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/miui/calendar/detail/CardDetailActivity;->o0(Lcom/miui/calendar/detail/CardDetailActivity;Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-static {v0}, Lcom/miui/calendar/detail/CardDetailActivity;->g0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/detail/g;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/miui/calendar/detail/CardDetailActivity;->e0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v3, Lcom/miui/calendar/detail/f;

    .line 114
    .line 115
    invoke-direct {v3, p0}, Lcom/miui/calendar/detail/f;-><init>(Lcom/miui/calendar/detail/CardDetailActivity$c;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/miui/calendar/detail/g;->i(Lcom/miui/calendar/card/schema/CustomCardSchema;Lcom/miui/calendar/card/b$b;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Lcom/miui/calendar/detail/CardDetailActivity;->p0(Lcom/miui/calendar/detail/CardDetailActivity;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lcom/miui/calendar/detail/CardDetailActivity;->l0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/view/LoadingView;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/miui/calendar/view/LoadingView;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    move-object v1, p1

    .line 137
    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    .line 139
    :goto_1
    const-string p1, "Cal:D:CardDetailActivity"

    .line 140
    .line 141
    const-string v2, "GetDetailResponseListener:"

    .line 142
    .line 143
    invoke-static {p1, v2, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v2, "data:"

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    return-void
    .line 167
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Cal:D:CardDetailActivity"

    .line 7
    .line 8
    const-string v1, "GetDetailResponseListener:"

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/miui/calendar/detail/CardDetailActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/miui/calendar/detail/CardDetailActivity;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {p1}, Lcom/miui/calendar/detail/CardDetailActivity;->e0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Lcom/miui/calendar/detail/CardDetailActivity;->l0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/view/LoadingView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/miui/calendar/view/LoadingView;->d()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
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
