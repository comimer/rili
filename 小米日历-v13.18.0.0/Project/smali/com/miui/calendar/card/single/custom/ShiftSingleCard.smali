.class public final Lcom/miui/calendar/card/single/custom/ShiftSingleCard;
.super Lcom/miui/calendar/card/single/custom/CustomSingleCard;
.source "ShiftSingleCard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;,
        Lcom/miui/calendar/card/single/custom/ShiftSingleCard$ShiftCardExtraSchema;,
        Lcom/miui/calendar/card/single/custom/ShiftSingleCard$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0003)*\u0003B/\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0008\u0010!\u001a\u0004\u0018\u00010 \u0012\u0008\u0010#\u001a\u0004\u0018\u00010\"\u0012\u0008\u0010%\u001a\u0004\u0018\u00010$\u00a2\u0006\u0004\u0008&\u0010\'J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u001c\u0010\u0010\u001a\u00020\u00022\n\u0010\u000e\u001a\u00060\u000cR\u00020\r2\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0014\u0010\u0013\u001a\u00060\u000cR\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00150\u0014H\u0014R\u0016\u0010\u0019\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006+"
    }
    d2 = {
        "Lcom/miui/calendar/card/single/custom/ShiftSingleCard;",
        "Lcom/miui/calendar/card/single/custom/CustomSingleCard;",
        "Lkotlin/u;",
        "b",
        "Lcom/miui/calendar/card/b$b;",
        "onDataLoadCompletedListener",
        "e",
        "",
        "j",
        "",
        "i",
        "B",
        "Ls3/a$a;",
        "Ls3/a;",
        "holder",
        "position",
        "g",
        "Landroid/view/View;",
        "view",
        "h",
        "Ljava/lang/Class;",
        "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomCardExtraSchema;",
        "z",
        "s",
        "Z",
        "mIsQueried",
        "Lcom/miui/calendar/shift/ShiftSchema;",
        "t",
        "Lcom/miui/calendar/shift/ShiftSchema;",
        "mShift",
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
        "ShiftCardExtraSchema",
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
.field public static final u:Lcom/miui/calendar/card/single/custom/ShiftSingleCard$a;


# instance fields
.field private s:Z

.field private t:Lcom/miui/calendar/shift/ShiftSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->u:Lcom/miui/calendar/card/single/custom/ShiftSingleCard$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V
    .locals 6

    .line 1
    const/16 v2, 0x35

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
    iget-object p1, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1}, Lk4/d;->c(Landroid/content/Context;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

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

.method public static synthetic D(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->I(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;)V

    return-void
.end method

.method public static synthetic E(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->G(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->H(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;ILandroid/view/View;)V

    return-void
.end method

.method private static final G(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;ILandroid/view/View;)V
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
    const-string v0, "\u6765\u81ea\u9996\u9875\u5361\u7247\u6309\u94ae"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lcom/android/calendar/common/Utils;->t1(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p2, "card_change_clicked"

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->k(Ljava/lang/String;IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
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

.method private static final H(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;ILandroid/view/View;)V
    .locals 2

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 7
    .line 8
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p2, Lcom/miui/calendar/shift/ShiftSchema;->isRemind:Z

    .line 12
    .line 13
    const-string v0, "\u6765\u81ea\u9996\u9875\u5361\u7247"

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2, v0}, Lcom/android/calendar/common/Utils;->s1(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p2, v0}, Lcom/android/calendar/common/Utils;->t1(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 p2, -0x1

    .line 29
    const/4 v0, 0x0

    .line 30
    const-string v1, "card_item_clicked"

    .line 31
    .line 32
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->k(Ljava/lang/String;IILjava/lang/String;)V

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

.method private static final I(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->s:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lk4/d;->c(Landroid/content/Context;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->b:Landroid/widget/BaseAdapter;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public B()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lk4/d;->c(Landroid/content/Context;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 8
    .line 9
    invoke-super {p0}, Ls3/a;->b()V

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

.method public e(Lcom/miui/calendar/card/b$b;)V
    .locals 5

    .line 1
    const-string v0, "onDataLoadCompletedListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->s:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->p:Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomCardExtraSchema;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    instance-of v1, v0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$ShiftCardExtraSchema;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.ShiftSingleCard.ShiftCardExtraSchema"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$ShiftCardExtraSchema;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$ShiftCardExtraSchema;->getConfigVersion()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-wide v2, v2, Lcom/miui/calendar/shift/ShiftSchema;->version:J

    .line 35
    .line 36
    cmp-long v2, v0, v2

    .line 37
    .line 38
    if-lez v2, :cond_0

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "local config version is "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 51
    .line 52
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-wide v3, v3, Lcom/miui/calendar/shift/ShiftSchema;->version:J

    .line 56
    .line 57
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, ", server config version is "

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", need sync"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "Cal:D:ShiftSingleCard"

    .line 78
    .line 79
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 83
    .line 84
    new-instance v1, Lcom/miui/calendar/card/single/custom/b0;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/miui/calendar/card/single/custom/b0;-><init>(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lk4/d;->i(Landroid/content/Context;Lk4/d$a;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->e(Lcom/miui/calendar/card/b$b;)V

    .line 93
    .line 94
    .line 95
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

.method public g(Ls3/a$a;I)V
    .locals 12

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p1, "Cal:D:ShiftSingleCard"

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
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->b:Landroid/widget/BaseAdapter;

    .line 22
    .line 23
    instance-of v1, v0, Lcom/miui/calendar/card/CardAdapter;

    .line 24
    .line 25
    const v2, 0x7f120575

    .line 26
    .line 27
    .line 28
    const v3, 0x7f120577

    .line 29
    .line 30
    .line 31
    const/16 v4, 0x8

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v1, "null cannot be cast to non-null type com.miui.calendar.card.CardAdapter"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v0, Lcom/miui/calendar/card/CardAdapter;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/miui/calendar/card/CardAdapter;->d()Lcom/miui/calendar/card/CardAdapter$DisplayMode;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lcom/miui/calendar/card/CardAdapter$DisplayMode;->PREVIEW_IN_DETAIL:Lcom/miui/calendar/card/CardAdapter$DisplayMode;

    .line 49
    .line 50
    if-ne v0, v1, :cond_1

    .line 51
    .line 52
    check-cast p1, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->b()Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->h()Landroid/widget/TextView;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 66
    .line 67
    new-array v1, v5, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {v0, v5}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    aput-object v4, v1, v6

    .line 74
    .line 75
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->e()Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->f()Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->f()Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 101
    .line 102
    const/16 v1, 0x1c2

    .line 103
    .line 104
    invoke-static {v0, v1, v5}, Lcom/miui/calendar/util/s0;->q(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->a()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->d()Landroid/widget/TextView;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 123
    .line 124
    new-array v0, v5, [Ljava/lang/Object;

    .line 125
    .line 126
    const/4 v1, 0x2

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    aput-object v1, v0, v6

    .line 132
    .line 133
    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 142
    .line 143
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-boolean v0, v0, Lcom/miui/calendar/shift/ShiftSchema;->isRemind:Z

    .line 147
    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->c()Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->h()Landroid/widget/TextView;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v7

    .line 171
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 172
    .line 173
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v7, v8}, Lcom/miui/calendar/shift/ShiftSchema;->isStartShift(J)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_3

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->b()Landroid/widget/TextView;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->h()Landroid/widget/TextView;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v9, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 194
    .line 195
    new-array v10, v5, [Ljava/lang/Object;

    .line 196
    .line 197
    iget-object v11, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 198
    .line 199
    invoke-static {v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v7, v8}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    invoke-static {v9, v11}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    aput-object v11, v10, v6

    .line 211
    .line 212
    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->e()Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 227
    .line 228
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v7, v8}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_2

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->f()Landroid/widget/TextView;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->a()Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->f()Landroid/widget/TextView;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->f()Landroid/widget/TextView;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iget-object v3, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 264
    .line 265
    iget-object v4, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 266
    .line 267
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v7, v8}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftReminderMinutes(J)I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    invoke-static {v3, v4, v5}, Lcom/miui/calendar/util/s0;->q(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->a()Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    :goto_0
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->d()Landroid/widget/TextView;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 293
    .line 294
    new-array v3, v5, [Ljava/lang/Object;

    .line 295
    .line 296
    iget-object v4, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 297
    .line 298
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 302
    .line 303
    .line 304
    move-result-wide v7

    .line 305
    invoke-virtual {v4, v7, v8}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderIndex(J)I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    add-int/2addr v4, v5

    .line 310
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    aput-object v4, v3, v6

    .line 315
    .line 316
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->b()Landroid/widget/TextView;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->h()Landroid/widget/TextView;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iget-object v2, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 336
    .line 337
    const v3, 0x7f120578

    .line 338
    .line 339
    .line 340
    new-array v5, v5, [Ljava/lang/Object;

    .line 341
    .line 342
    iget-object v7, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 343
    .line 344
    invoke-static {v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    iget-wide v7, v7, Lcom/miui/calendar/shift/ShiftSchema;->startTimeMillis:J

    .line 348
    .line 349
    invoke-static {v2, v7, v8}, Lcom/miui/calendar/util/s0;->g(Landroid/content/Context;J)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    aput-object v7, v5, v6

    .line 354
    .line 355
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->e()Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    goto :goto_1

    .line 370
    :cond_4
    move-object v0, p1

    .line 371
    check-cast v0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;

    .line 372
    .line 373
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->b()Landroid/widget/TextView;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->c()Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->h()Landroid/widget/TextView;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->e()Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    :goto_1
    check-cast p1, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;

    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->b()Landroid/widget/TextView;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    new-instance v1, Lcom/miui/calendar/card/single/custom/z;

    .line 408
    .line 409
    invoke-direct {v1, p0, p2}, Lcom/miui/calendar/card/single/custom/z;-><init>(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;I)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->b()Landroid/widget/TextView;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-static {v0}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->g()Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    new-instance v1, Lcom/miui/calendar/card/single/custom/a0;

    .line 427
    .line 428
    invoke-direct {v1, p0, p2}, Lcom/miui/calendar/card/single/custom/a0;-><init>(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;->g()Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-static {p1}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 439
    .line 440
    .line 441
    return-void
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
    new-instance v0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$b;-><init>(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;Landroid/view/View;)V

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

    const v0, 0x7f0d0214

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
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->t:Lcom/miui/calendar/shift/ShiftSchema;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/calendar/settings/j;->q(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
    .line 21
    .line 22
.end method

.method protected z()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomCardExtraSchema;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/miui/calendar/card/single/custom/ShiftSingleCard$ShiftCardExtraSchema;

    return-object v0
.end method
