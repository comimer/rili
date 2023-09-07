.class public final Lcom/miui/calendar/card/single/local/TodoSingleCard;
.super Lcom/miui/calendar/card/single/local/LocalSingleCard;
.source "TodoSingleCard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/local/TodoSingleCard$b;,
        Lcom/miui/calendar/card/single/local/TodoSingleCard$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0002#$B/\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\u0008\u001a\u00060\u0006R\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00020\r2\n\u0010\u000b\u001a\u00060\u0006R\u00020\u00072\u0006\u0010\u000c\u001a\u00020\tH\u0016R\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lcom/miui/calendar/card/single/local/TodoSingleCard;",
        "Lcom/miui/calendar/card/single/local/LocalSingleCard;",
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
        "Lkotlin/u;",
        "g",
        "",
        "Lr4/a;",
        "r",
        "Ljava/util/List;",
        "mTodoList",
        "Lcom/android/calendar/common/WrapperLinearLayoutManager;",
        "s",
        "Lcom/android/calendar/common/WrapperLinearLayoutManager;",
        "linearLayoutManager",
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
        "b",
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
.field public static final u:Lcom/miui/calendar/card/single/local/TodoSingleCard$a;


# instance fields
.field private final q:Lp4/a;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lr4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/android/calendar/common/WrapperLinearLayoutManager;

.field private final t:Lp4/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/card/single/local/TodoSingleCard$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/card/single/local/TodoSingleCard$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->u:Lcom/miui/calendar/card/single/local/TodoSingleCard$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V
    .locals 6

    .line 1
    const/16 v2, 0x13

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
    invoke-direct/range {v0 .. v5}, Lcom/miui/calendar/card/single/local/LocalSingleCard;-><init>(Landroid/content/Context;ILcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 12
    .line 13
    new-instance p2, Lcom/miui/calendar/card/single/local/TodoSingleCard$1;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Lcom/miui/calendar/card/single/local/TodoSingleCard$1;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->s:Lcom/android/calendar/common/WrapperLinearLayoutManager;

    .line 19
    .line 20
    new-instance p1, Lp4/a;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 23
    .line 24
    iget-object p3, p0, Lcom/miui/calendar/card/Card;->e:Ljava/util/Calendar;

    .line 25
    .line 26
    invoke-direct {p1, p2, p3}, Lp4/a;-><init>(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->q:Lp4/a;

    .line 30
    .line 31
    new-instance p2, Lcom/miui/calendar/card/single/local/r;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/miui/calendar/card/single/local/r;-><init>(Lcom/miui/calendar/card/single/local/TodoSingleCard;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->t:Lp4/a$b;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lp4/a;->q(Lp4/a$b;)V

    .line 39
    .line 40
    .line 41
    return-void
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

.method public static synthetic u(Lcom/miui/calendar/card/single/local/TodoSingleCard;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/card/single/local/TodoSingleCard;->x(Lcom/miui/calendar/card/single/local/TodoSingleCard;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/miui/calendar/card/single/local/TodoSingleCard;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/calendar/card/single/local/TodoSingleCard;->w(Lcom/miui/calendar/card/single/local/TodoSingleCard;Ljava/util/List;I)V

    return-void
.end method

.method private static final w(Lcom/miui/calendar/card/single/local/TodoSingleCard;Ljava/util/List;I)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->q:Lp4/a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p1, p2, v1}, Lp4/a;->o(Ljava/util/List;IZ)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->r:Ljava/util/List;

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

.method private static final x(Lcom/miui/calendar/card/single/local/TodoSingleCard;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v0, "com.miui.todo.action.INSERT_OR_EDIT"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/high16 v0, 0x10000000

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v0, "com.miui.notes"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    const-string p0, "card_button_clicked"

    .line 29
    .line 30
    const-string p1, "todo_item_click"

    .line 31
    .line 32
    const-string v0, "click"

    .line 33
    .line 34
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string p1, "Cal:D:TodoSingleCard"

    .line 44
    .line 45
    const-string v0, "onItemClick(): jump to notes todo error. "

    .line 46
    .line 47
    invoke-static {p1, v0, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
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


# virtual methods
.method public g(Ls3/a$a;I)V
    .locals 9

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->r:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/miui/calendar/util/i;->d(Ljava/util/List;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    instance-of v0, p1, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->q:Lp4/a;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/miui/calendar/card/Card;->e:Ljava/util/Calendar;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lp4/a;->p(Ljava/util/Calendar;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->q:Lp4/a;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->r:Ljava/util/List;

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lp4/a;->o(Ljava/util/List;IZ)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->r:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x3

    .line 45
    if-le v0, v1, :cond_1

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;->a()Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;->a()Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v5, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const v6, 0x7f10004a

    .line 69
    .line 70
    .line 71
    iget-object v7, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->r:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    sub-int/2addr v7, v1

    .line 81
    new-array v3, v3, [Ljava/lang/Object;

    .line 82
    .line 83
    iget-object v8, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->r:Ljava/util/List;

    .line 84
    .line 85
    invoke-static {v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    sub-int/2addr v8, v1

    .line 93
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    aput-object v1, v3, v4

    .line 98
    .line 99
    invoke-virtual {v5, v6, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;->a()Landroid/widget/TextView;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lcom/miui/calendar/card/single/local/q;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/miui/calendar/card/single/local/q;-><init>(Lcom/miui/calendar/card/single/local/TodoSingleCard;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    move-object v0, p1

    .line 120
    check-cast v0, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;->a()Landroid/widget/TextView;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const/16 v1, 0x8

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :goto_0
    invoke-super {p0, p1, p2}, Ls3/a;->g(Ls3/a$a;I)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_2
    :goto_1
    const-string p1, "Cal:D:TodoSingleCard"

    .line 136
    .line 137
    const-string p2, "bindView(): no data or holder error!"

    .line 138
    .line 139
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void
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
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;-><init>(Lcom/miui/calendar/card/single/local/TodoSingleCard;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;->b()Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->s:Lcom/android/calendar/common/WrapperLinearLayoutManager;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/miui/calendar/card/single/local/TodoSingleCard$b;->b()Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v1, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->q:Lp4/a;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 27
    .line 28
    .line 29
    return-object v0
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

.method public i()I
    .locals 1

    const v0, 0x7f0d023f

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/TodoSingleCard;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/i;->d(Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
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
