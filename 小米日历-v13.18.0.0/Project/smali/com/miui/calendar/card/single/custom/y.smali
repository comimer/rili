.class public final Lcom/miui/calendar/card/single/custom/y;
.super Lcom/miui/calendar/card/single/custom/CustomSingleCard;
.source "MenstruationSingleCard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/custom/y$b;,
        Lcom/miui/calendar/card/single/custom/y$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u00020\u0001:\u0002\'\u0006B/\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0008\u0010!\u001a\u0004\u0018\u00010 \u0012\u0008\u0010#\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0004\u0008$\u0010%J\u0014\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u00060\u0002R\u00020\u0000H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0014\u0010\u0010\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u001c\u0010\u0015\u001a\u00020\u00042\n\u0010\u0013\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0011H\u0016R\u0016\u0010\u0018\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006("
    }
    d2 = {
        "Lcom/miui/calendar/card/single/custom/y;",
        "Lcom/miui/calendar/card/single/custom/CustomSingleCard;",
        "Lcom/miui/calendar/card/single/custom/y$b;",
        "viewHolder",
        "Lkotlin/u;",
        "K",
        "b",
        "Lcom/miui/calendar/card/b$b;",
        "onDataLoadCompletedListener",
        "e",
        "",
        "j",
        "Landroid/view/View;",
        "view",
        "Ls3/a$a;",
        "Ls3/a;",
        "h",
        "",
        "i",
        "holder",
        "position",
        "g",
        "t",
        "Z",
        "mIsInfoError",
        "J",
        "()Lkotlin/u;",
        "menstruationInfoAsync",
        "Landroid/content/Context;",
        "context",
        "Lcom/miui/calendar/card/Card$ContainerType;",
        "containerType",
        "Ljava/util/Calendar;",
        "desiredDay",
        "Landroid/widget/BaseAdapter;",
        "adapter",
        "<init>",
        "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V",
        "u",
        "a",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final u:Lcom/miui/calendar/card/single/custom/y$a;


# instance fields
.field private s:Lf4/a;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/card/single/custom/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/card/single/custom/y$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/card/single/custom/y;->u:Lcom/miui/calendar/card/single/custom/y$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V
    .locals 6

    .line 1
    const/16 v2, 0x39

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;-><init>(Landroid/content/Context;ILcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

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

.method public static synthetic D(Lcom/miui/calendar/card/single/custom/y;Lf4/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/card/single/custom/y;->G(Lcom/miui/calendar/card/single/custom/y;Lf4/a;)V

    return-void
.end method

.method public static synthetic E(Lcom/miui/calendar/card/single/custom/y;Ls3/a$a;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/calendar/card/single/custom/y;->I(Lcom/miui/calendar/card/single/custom/y;Ls3/a$a;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/miui/calendar/card/single/custom/y;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/calendar/card/single/custom/y;->H(Lcom/miui/calendar/card/single/custom/y;ILandroid/view/View;)V

    return-void
.end method

.method private static final G(Lcom/miui/calendar/card/single/custom/y;Lf4/a;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/y;->s:Lf4/a;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/y;->s:Lf4/a;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->b:Landroid/widget/BaseAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
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

.method private static final H(Lcom/miui/calendar/card/single/custom/y;ILandroid/view/View;)V
    .locals 2

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p2}, Lf4/b;->e(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p0}, Lf4/b;->g(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/miui/calendar/card/single/custom/y;->s:Lf4/a;

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/miui/calendar/card/single/custom/y;->J()Lkotlin/u;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p2, Lf4/a;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    iget-object p2, p0, Lcom/miui/calendar/card/single/custom/y;->s:Lf4/a;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p2, Lf4/a;->d:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/high16 v0, 0x10000000

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    .line 60
    .line 61
    const-string p2, "card_item_clicked"

    .line 62
    .line 63
    const/4 v0, -0x1

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->k(Ljava/lang/String;IILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "com.mi.health"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p0

    .line 88
    const-string p1, "Cal:D:MenstruationSingleCard"

    .line 89
    .line 90
    const-string p2, "onClick(): jump to health menstruation error. "

    .line 91
    .line 92
    invoke-static {p1, p2, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :goto_0
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
.end method

.method private static final I(Lcom/miui/calendar/card/single/custom/y;Ls3/a$a;ILandroid/view/View;)V
    .locals 6

    .line 1
    const-string p3, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "$holder"

    .line 7
    .line 8
    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "preferences_menstruation_is_private"

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {p3, v0, v1}, Lb2/a;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    iget-object v1, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 21
    .line 22
    xor-int/lit8 v2, p3, 0x1

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Lb2/a;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Lcom/miui/calendar/card/single/custom/y$b;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/calendar/card/single/custom/y;->K(Lcom/miui/calendar/card/single/custom/y$b;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    const-string p1, "\u663e\u793a\u7ecf\u671f\u4fe1\u606f\u6309\u94ae"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, "\u9690\u85cf\u7ecf\u671f\u4fe1\u606f\u6309\u94ae"

    .line 43
    .line 44
    :goto_0
    const-string p3, "type"

    .line 45
    .line 46
    invoke-interface {v5, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const/4 v3, -0x1

    .line 50
    const/4 v4, 0x0

    .line 51
    const-string v1, "card_button_clicked"

    .line 52
    .line 53
    move-object v0, p0

    .line 54
    move v2, p2

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 56
    .line 57
    .line 58
    return-void
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

.method private final J()Lkotlin/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/miui/calendar/card/single/custom/x;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/miui/calendar/card/single/custom/x;-><init>(Lcom/miui/calendar/card/single/custom/y;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lf4/b;->c(Landroid/content/Context;Lcom/android/calendar/cards/l1$b;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 12
    .line 13
    return-object v0
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

.method private final K(Lcom/miui/calendar/card/single/custom/y$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/y;->s:Lf4/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, v0, Lf4/a;->a:Z

    .line 7
    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    iget-object v1, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const-string v3, "preferences_menstruation_is_private"

    .line 14
    .line 15
    invoke-static {v1, v3, v2}, Lb2/a;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/y$b;->d()Landroid/widget/ImageView;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const v3, 0x7f08025f

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v3, 0x7f08025e

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/y$b;->d()Landroid/widget/ImageView;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const v4, 0x7f1205f9

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const v4, 0x7f1205f8

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/y$b;->b()Landroid/widget/TextView;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget-object v3, v0, Lf4/a;->b:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-object v3, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const v4, 0x7f120323

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/y$b;->c()Landroid/widget/TextView;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    iget-object v0, v0, Lf4/a;->c:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const v1, 0x7f120322

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/y$b;->b()Landroid/widget/TextView;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v2, v0, Lf4/a;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/y$b;->c()Landroid/widget/TextView;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v0, v0, Lf4/a;->c:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    :goto_4
    return-void
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
.method public b()V
    .locals 2

    .line 1
    invoke-super {p0}, Ls3/a;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lf4/b;->d(Landroid/content/Context;)Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/miui/calendar/card/single/custom/y;->t:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lf4/b;->b(Landroid/content/Context;)Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/miui/calendar/card/single/custom/y;->t:Z

    .line 24
    .line 25
    :goto_0
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/y;->s:Lf4/a;

    .line 26
    .line 27
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

.method public e(Lcom/miui/calendar/card/b$b;)V
    .locals 1

    .line 1
    const-string v0, "onDataLoadCompletedListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->e(Lcom/miui/calendar/card/b$b;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/miui/calendar/card/single/custom/y;->J()Lkotlin/u;

    .line 10
    .line 11
    .line 12
    return-void
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

.method public g(Ls3/a$a;I)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/miui/calendar/card/single/custom/y$b;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p1, "Cal:D:MenstruationSingleCard"

    .line 11
    .line 12
    const-string p2, "bindView(): holder error!"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->g(Ls3/a$a;I)V

    .line 19
    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/miui/calendar/card/single/custom/y$b;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/y$b;->a()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/miui/calendar/card/single/custom/v;

    .line 29
    .line 30
    invoke-direct {v2, p0, p2}, Lcom/miui/calendar/card/single/custom/v;-><init>(Lcom/miui/calendar/card/single/custom/y;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/y$b;->a()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/y;->s:Lf4/a;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/y$b;->d()Landroid/widget/ImageView;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/y;->s:Lf4/a;

    .line 52
    .line 53
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v2, v2, Lf4/a;->a:Z

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    move v2, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/16 v2, 0x8

    .line 64
    .line 65
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/y$b;->c()Landroid/widget/TextView;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v0}, Lcom/miui/calendar/card/single/custom/y;->K(Lcom/miui/calendar/card/single/custom/y$b;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/y$b;->d()Landroid/widget/ImageView;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, Lcom/miui/calendar/card/single/custom/w;

    .line 83
    .line 84
    invoke-direct {v2, p0, p1, p2}, Lcom/miui/calendar/card/single/custom/w;-><init>(Lcom/miui/calendar/card/single/custom/y;Ls3/a$a;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/y$b;->d()Landroid/widget/ImageView;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    return-void
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

.method public h(Landroid/view/View;)Ls3/a$a;
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/miui/calendar/card/single/custom/y$b;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/miui/calendar/card/single/custom/y$b;-><init>(Lcom/miui/calendar/card/single/custom/y;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object v0
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

.method public i()I
    .locals 1

    const v0, 0x7f0d0111

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/calendar/settings/j;->q(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
