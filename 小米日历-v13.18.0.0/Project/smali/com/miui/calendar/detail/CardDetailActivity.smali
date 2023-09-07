.class public final Lcom/miui/calendar/detail/CardDetailActivity;
.super Lcom/android/calendar/common/b;
.source "CardDetailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/detail/CardDetailActivity$d;,
        Lcom/miui/calendar/detail/CardDetailActivity$b;,
        Lcom/miui/calendar/detail/CardDetailActivity$c;,
        Lcom/miui/calendar/detail/CardDetailActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 O2\u00020\u0001:\u0004P#\'+B\u0007\u00a2\u0006\u0004\u0008M\u0010NJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J \u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0012\u0010\u0016\u001a\u00020\u00022\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0017\u001a\u00020\u0002H\u0014J\u0008\u0010\u0018\u001a\u00020\u0002H\u0014J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0012\u0010 \u001a\u00020\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0007J\u0008\u0010!\u001a\u00020\u0002H\u0014R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010?\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0016\u0010F\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010H\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010>R\u0018\u0010L\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010K\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/miui/calendar/detail/CardDetailActivity;",
        "Lcom/android/calendar/common/b;",
        "Lkotlin/u;",
        "t0",
        "init",
        "B0",
        "",
        "cardId",
        "",
        "userHide",
        "",
        "cardName",
        "A0",
        "Landroid/view/View;",
        "q0",
        "s0",
        "u0",
        "x0",
        "y0",
        "z0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onResume",
        "onPause",
        "onBackPressed",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onOptionsItemSelected",
        "Lcom/miui/calendar/util/g$v0;",
        "event",
        "onEventMainThread",
        "onDestroy",
        "Landroid/widget/ListView;",
        "b",
        "Landroid/widget/ListView;",
        "mListView",
        "Landroid/widget/TextView;",
        "c",
        "Landroid/widget/TextView;",
        "mButtonView",
        "Lcom/miui/calendar/view/LoadingView;",
        "d",
        "Lcom/miui/calendar/view/LoadingView;",
        "mLoadingView",
        "e",
        "Landroid/view/View;",
        "mFooterView",
        "Landroid/content/Context;",
        "f",
        "Landroid/content/Context;",
        "mContext",
        "Lcom/miui/calendar/card/CardAdapter;",
        "g",
        "Lcom/miui/calendar/card/CardAdapter;",
        "mCardAdapter",
        "Lcom/miui/calendar/detail/g;",
        "h",
        "Lcom/miui/calendar/detail/g;",
        "mCardFactory",
        "i",
        "J",
        "mCardId",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        "j",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        "mCard",
        "k",
        "Z",
        "mButtonHasClicked",
        "l",
        "mPreviewTime",
        "Lmiuix/appcompat/app/l;",
        "n",
        "Lmiuix/appcompat/app/l;",
        "mAlertDialog",
        "<init>",
        "()V",
        "p",
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
.field public static final p:Lcom/miui/calendar/detail/CardDetailActivity$a;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/calendar/view/LoadingView;

.field private e:Landroid/view/View;

.field private f:Landroid/content/Context;

.field private g:Lcom/miui/calendar/card/CardAdapter;

.field private h:Lcom/miui/calendar/detail/g;

.field private i:J

.field private j:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field private k:Z

.field private l:J

.field private m:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lmiuix/appcompat/app/l;

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/detail/CardDetailActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/detail/CardDetailActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/detail/CardDetailActivity;->p:Lcom/miui/calendar/detail/CardDetailActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->o:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->l:J

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private final A0(JILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/miui/calendar/detail/CardDetailActivity$d;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    move-object v2, p0

    .line 9
    move v3, p3

    .line 10
    move-wide v4, p1

    .line 11
    move-object v6, p4

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/miui/calendar/detail/CardDetailActivity$d;-><init>(Lcom/miui/calendar/detail/CardDetailActivity;IJLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lk3/d;->g(Lk3/d$b;)V

    .line 16
    .line 17
    .line 18
    :cond_0
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

.method private final B0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->userHide:I

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const v2, 0x7f080109

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const v3, 0x7f060083

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const v2, 0x7f1206b8

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lcom/miui/calendar/detail/d;

    .line 95
    .line 96
    invoke-direct {v2, p0}, Lcom/miui/calendar/detail/d;-><init>(Lcom/miui/calendar/detail/CardDetailActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const v2, 0x7f08010b

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const v3, 0x7f060537

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const v2, 0x7f1205cb

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Lcom/miui/calendar/detail/e;

    .line 154
    .line 155
    invoke-direct {v2, p0}, Lcom/miui/calendar/detail/e;-><init>(Lcom/miui/calendar/detail/CardDetailActivity;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-static {v0, v1}, Lcom/miui/calendar/util/v;->f(Landroid/view/View;Z)V

    .line 164
    .line 165
    .line 166
    :goto_1
    return-void
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

.method private static final C0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/view/View;)V
    .locals 5

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->k:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput p1, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->userHide:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const v1, 0x7f1206ba

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    iget-wide v2, p0, Lcom/miui/calendar/detail/CardDetailActivity;->i:J

    .line 37
    .line 38
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 44
    .line 45
    const-string v4, "mCard!!.title"

    .line 46
    .line 47
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2, v3, p1, v0}, Lcom/miui/calendar/detail/CardDetailActivity;->A0(JILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "title"

    .line 57
    .line 58
    aput-object v2, v0, v1

    .line 59
    .line 60
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 66
    .line 67
    aput-object p0, v0, p1

    .line 68
    .line 69
    const-string p0, "card_detail_unsubscribe_clicked"

    .line 70
    .line 71
    invoke-static {p0, v0}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
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

.method private static final D0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/view/View;)V
    .locals 5

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget p1, p1, Lcom/miui/calendar/card/schema/CustomCardSchema;->showType:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x14

    .line 17
    .line 18
    const/16 v0, 0x39

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lf4/b;->e(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-wide v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->id:J

    .line 36
    .line 37
    const-string v2, "key_subscribe_menstruation"

    .line 38
    .line 39
    invoke-static {p1, v2, v0, v1}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {p0}, Lf4/b;->g(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v0, 0x3a

    .line 49
    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    invoke-static {p0}, Lv3/d;->c(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-wide v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->id:J

    .line 66
    .line 67
    const-string v2, "key_subscribe_class_schedule"

    .line 68
    .line 69
    invoke-static {p1, v2, v0, v1}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Lv3/d;->e(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->k:Z

    .line 83
    .line 84
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    iput v1, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->userHide:I

    .line 91
    .line 92
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const v2, 0x7f1205d3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    .line 110
    .line 111
    iget-wide v2, p0, Lcom/miui/calendar/detail/CardDetailActivity;->i:J

    .line 112
    .line 113
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 114
    .line 115
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 119
    .line 120
    const-string v4, "mCard!!.title"

    .line 121
    .line 122
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/miui/calendar/detail/CardDetailActivity;->A0(JILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x2

    .line 129
    new-array v0, v0, [Ljava/lang/String;

    .line 130
    .line 131
    const-string v2, "title"

    .line 132
    .line 133
    aput-object v2, v0, v1

    .line 134
    .line 135
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 136
    .line 137
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 141
    .line 142
    aput-object p0, v0, p1

    .line 143
    .line 144
    const-string p0, "card_detail_subscribe_clicked"

    .line 145
    .line 146
    invoke-static {p0, v0}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void
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

.method public static synthetic Y(Lcom/miui/calendar/detail/CardDetailActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->r0(Lcom/miui/calendar/detail/CardDetailActivity;)V

    return-void
.end method

.method public static synthetic Z(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/calendar/detail/CardDetailActivity;->w0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/detail/CardDetailActivity;->C0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/detail/CardDetailActivity;->D0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/calendar/detail/CardDetailActivity;->v0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic d0(Lcom/miui/calendar/detail/CardDetailActivity;)Ltc/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->m:Ltc/a;

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

.method public static final synthetic e0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/card/schema/CustomCardSchema;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

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

.method public static final synthetic f0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/card/CardAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->g:Lcom/miui/calendar/card/CardAdapter;

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

.method public static final synthetic g0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/detail/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->h:Lcom/miui/calendar/detail/g;

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

.method public static final synthetic h0(Lcom/miui/calendar/detail/CardDetailActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->i:J

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

.method public static final synthetic i0(Lcom/miui/calendar/detail/CardDetailActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

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

.method private final init()V
    .locals 3

    .line 1
    const v0, 0x7f0a038f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/miui/calendar/view/LoadingView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->d:Lcom/miui/calendar/view/LoadingView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/miui/calendar/detail/c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/miui/calendar/detail/c;-><init>(Lcom/miui/calendar/detail/CardDetailActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/LoadingView;->setOnRefreshListener(Lcom/miui/calendar/view/LoadingView$b;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const v0, 0x7f0a0381

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/ListView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->b:Landroid/widget/ListView;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->q0()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->e:Landroid/view/View;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->b:Landroid/widget/ListView;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x2

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    new-instance v0, Lcom/miui/calendar/card/CardAdapter;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->b:Landroid/widget/ListView;

    .line 51
    .line 52
    sget-object v2, Lcom/miui/calendar/card/CardAdapter$DisplayMode;->PREVIEW_IN_DETAIL:Lcom/miui/calendar/card/CardAdapter$DisplayMode;

    .line 53
    .line 54
    invoke-direct {v0, p0, v1, v2}, Lcom/miui/calendar/card/CardAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/miui/calendar/card/CardAdapter$DisplayMode;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->g:Lcom/miui/calendar/card/CardAdapter;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->b:Landroid/widget/ListView;

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    new-instance v0, Lcom/miui/calendar/detail/g;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->g:Lcom/miui/calendar/card/CardAdapter;

    .line 70
    .line 71
    invoke-direct {v0, p0, v1}, Lcom/miui/calendar/detail/g;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->h:Lcom/miui/calendar/detail/g;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->g:Lcom/miui/calendar/card/CardAdapter;

    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->h:Lcom/miui/calendar/detail/g;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/miui/calendar/card/CardAdapter;->b(Lcom/miui/calendar/card/b;)V

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0a0119

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->c:Landroid/widget/TextView;

    .line 96
    .line 97
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

.method public static final synthetic j0(Lcom/miui/calendar/detail/CardDetailActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->e:Landroid/view/View;

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

.method public static final synthetic k0(Lcom/miui/calendar/detail/CardDetailActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->b:Landroid/widget/ListView;

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

.method public static final synthetic l0(Lcom/miui/calendar/detail/CardDetailActivity;)Lcom/miui/calendar/view/LoadingView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->d:Lcom/miui/calendar/view/LoadingView;

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

.method public static final synthetic m0(Lcom/miui/calendar/detail/CardDetailActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->l:J

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

.method public static final synthetic n0(Lcom/miui/calendar/detail/CardDetailActivity;Ltc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->m:Ltc/a;

    .line 2
    .line 3
    return-void
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

.method public static final synthetic o0(Lcom/miui/calendar/detail/CardDetailActivity;Lcom/miui/calendar/card/schema/CustomCardSchema;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    return-void
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

.method public static final synthetic p0(Lcom/miui/calendar/detail/CardDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->B0()V

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

.method private final q0()Landroid/view/View;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f070439

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v3, 0x7f060529

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    const v1, 0x7f1200c2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 49
    .line 50
    const/4 v3, -0x1

    .line 51
    const/4 v4, -0x2

    .line 52
    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x11

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const v3, 0x7f070770

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const v4, 0x7f0701b8

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    .line 87
    .line 88
    return-object v0
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

.method private static final r0(Lcom/miui/calendar/detail/CardDetailActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->x0()V

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

.method private final s0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->userHide:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-string v3, "card_detail_dialog_shown"

    .line 21
    .line 22
    invoke-static {v0, v3, v2}, Lb2/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0, v3, v1}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->u0()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 38
    .line 39
    .line 40
    :goto_0
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

.method private final t0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Cal:D:CardDetailActivity"

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "parseIntent(): url:"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v3, "cardId"

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v3, v2

    .line 51
    :goto_0
    :try_start_0
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    iput-wide v3, p0, Lcom/miui/calendar/detail/CardDetailActivity;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v3

    .line 62
    const-string v4, "parseIntent()"

    .line 63
    .line 64
    invoke-static {v1, v4, v3}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 68
    .line 69
    .line 70
    :goto_1
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const-string v1, "time"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_2
    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    goto :goto_2

    .line 86
    :catch_1
    const-wide/16 v0, -0x1

    .line 87
    .line 88
    :goto_2
    iput-wide v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->l:J

    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "parseIntent(): intent INVALID:"

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 112
    .line 113
    .line 114
    return-void
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
.end method

.method private final u0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->n:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lmiuix/appcompat/app/l$b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f1200c1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->G(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/l$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f1200be

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 28
    .line 29
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v3, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v3, v2, v4

    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->n(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/l$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const v1, 0x7f1200c0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/miui/calendar/detail/a;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/miui/calendar/detail/a;-><init>(Lcom/miui/calendar/detail/CardDetailActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/l$b;->A(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const v1, 0x7f1200bf

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lcom/miui/calendar/detail/b;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/miui/calendar/detail/b;-><init>(Lcom/miui/calendar/detail/CardDetailActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/l$b;->s(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/l$b;->d(Z)Lmiuix/appcompat/app/l$b;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->a()Lmiuix/appcompat/app/l;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->n:Lmiuix/appcompat/app/l;

    .line 86
    .line 87
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->n:Lmiuix/appcompat/app/l;

    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

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

.method private static final v0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 7
    .line 8
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget p2, p2, Lcom/miui/calendar/card/schema/CustomCardSchema;->showType:I

    .line 12
    .line 13
    add-int/lit8 p2, p2, 0x14

    .line 14
    .line 15
    const/16 v0, 0x39

    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Lf4/b;->e(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 33
    .line 34
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-wide v0, p2, Lcom/miui/calendar/card/schema/CustomCardSchema;->id:J

    .line 38
    .line 39
    const-string p2, "key_subscribe_menstruation"

    .line 40
    .line 41
    invoke-static {p1, p2, v0, v1}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p0}, Lf4/b;->g(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v0, 0x3a

    .line 51
    .line 52
    if-ne p2, v0, :cond_3

    .line 53
    .line 54
    invoke-static {p0}, Lv3/d;->c(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-wide v0, p2, Lcom/miui/calendar/card/schema/CustomCardSchema;->id:J

    .line 73
    .line 74
    const-string p2, "key_subscribe_class_schedule"

    .line 75
    .line 76
    invoke-static {p1, p2, v0, v1}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0}, Lv3/d;->e(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const/4 p1, 0x2

    .line 89
    new-array p1, p1, [Ljava/lang/String;

    .line 90
    .line 91
    const-string p2, "title"

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    aput-object p2, p1, v0

    .line 95
    .line 96
    const/4 p2, 0x1

    .line 97
    iget-object v1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 103
    .line 104
    aput-object v1, p1, p2

    .line 105
    .line 106
    const-string p2, "card_detail_dialog_positive_clicked"

    .line 107
    .line 108
    invoke-static {p2, p1}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-wide p1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->i:J

    .line 112
    .line 113
    iget-object v1, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 114
    .line 115
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 119
    .line 120
    const-string v2, "mCard!!.title"

    .line 121
    .line 122
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/calendar/detail/CardDetailActivity;->A0(JILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
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

.method private static final w0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [Ljava/lang/String;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    const-string v0, "title"

    .line 11
    .line 12
    aput-object v0, p1, p2

    .line 13
    .line 14
    iget-object p2, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 15
    .line 16
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p2, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object p2, p1, v0

    .line 23
    .line 24
    const-string p2, "card_detail_dialog_negative_clicked"

    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 30
    .line 31
    .line 32
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

.method private final x0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->y0()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
    .line 21
    .line 22
.end method

.method private final y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->j:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->d:Lcom/miui/calendar/view/LoadingView;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/miui/calendar/view/LoadingView;->e()V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/miui/calendar/detail/CardDetailActivity$b;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/miui/calendar/detail/CardDetailActivity$b;-><init>(Lcom/miui/calendar/detail/CardDetailActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lk3/d;->g(Lk3/d$b;)V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method

.method private final z0()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:CardDetailActivity"

    .line 2
    .line 3
    const-string v1, "stop query"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->m:Ltc/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ltc/a;->cancel()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->m:Ltc/a;

    .line 20
    .line 21
    :cond_0
    return-void
    .line 22
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->s0()V

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0063

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->f:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->t0()V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f1200c3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->init()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/calendar/common/b;->X()V

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
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->n:Lmiuix/appcompat/app/l;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/miui/calendar/detail/CardDetailActivity;->n:Lmiuix/appcompat/app/l;

    .line 16
    .line 17
    :cond_0
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final onEventMainThread(Lcom/miui/calendar/util/g$v0;)V
    .locals 0
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->x0()V

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const v1, 0x102002c

    .line 11
    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->s0()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
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

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lpc/c;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->z0()V

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

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/calendar/common/b;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lpc/c;->o(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/miui/calendar/detail/CardDetailActivity;->x0()V

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
