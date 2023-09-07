.class public final Lcom/android/calendar/homepage/WeekAgendaView$b;
.super Landroid/widget/LinearLayout;
.source "WeekAgendaView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/WeekAgendaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008)\u0010*B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010+\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008)\u0010,J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0016\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J(\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0014J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016J\u0006\u0010\u0017\u001a\u00020\u0004R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R$\u0010\"\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0014\u0010%\u001a\u00020\u000e8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006-"
    }
    d2 = {
        "Lcom/android/calendar/homepage/WeekAgendaView$b;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/u;",
        "m",
        "",
        "Lcom/android/calendar/common/event/schema/Event;",
        "eventList",
        "",
        "o",
        "i",
        "event",
        "f",
        "",
        "more",
        "k",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "removeAllViews",
        "p",
        "a",
        "Landroid/content/Context;",
        "mContext",
        "Ljava/util/Calendar;",
        "b",
        "Ljava/util/Calendar;",
        "getMThisDay",
        "()Ljava/util/Calendar;",
        "setMThisDay",
        "(Ljava/util/Calendar;)V",
        "mThisDay",
        "c",
        "I",
        "holidayNum",
        "d",
        "Ljava/util/List;",
        "mCachedEventList",
        "<init>",
        "(Lcom/android/calendar/homepage/WeekAgendaView;Landroid/content/Context;)V",
        "calendar",
        "(Lcom/android/calendar/homepage/WeekAgendaView;Landroid/content/Context;Ljava/util/Calendar;)V",
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
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Calendar;

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/android/calendar/homepage/WeekAgendaView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/WeekAgendaView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->e:Ljava/util/Map;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/homepage/WeekAgendaView;Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/WeekAgendaView$b;-><init>(Lcom/android/calendar/homepage/WeekAgendaView;Landroid/content/Context;)V

    .line 3
    iput-object p3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->b:Ljava/util/Calendar;

    .line 4
    invoke-direct {p0, p2}, Lcom/android/calendar/homepage/WeekAgendaView$b;->m(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/homepage/WeekAgendaView$b;->l(Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/android/calendar/homepage/WeekAgendaView$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/homepage/WeekAgendaView$b;->h(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/android/calendar/homepage/WeekAgendaView$b;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/calendar/homepage/WeekAgendaView$b;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/homepage/WeekAgendaView$b;->j(Lcom/android/calendar/homepage/WeekAgendaView$b;)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/homepage/WeekAgendaView$b;->g(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/calendar/homepage/WeekAgendaView;Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/homepage/WeekAgendaView$b;->n(Lcom/android/calendar/homepage/WeekAgendaView;Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/view/View;)V

    return-void
.end method

.method private final f(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/android/calendar/common/Utils$DisplayType;->ACCOUNT:Lcom/android/calendar/common/Utils$DisplayType;

    .line 11
    .line 12
    invoke-static {v0, p1, v1}, Lcom/android/calendar/common/Utils;->A(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/Utils$DisplayType;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    if-ne v2, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v2, 0x7f080263

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v1, v2, v3}, Landroidx/vectordrawable/graphics/drawable/d;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/d;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x7

    .line 45
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v1, v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const v2, 0x7f080264

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v1, v2, v3}, Landroidx/vectordrawable/graphics/drawable/d;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/d;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/16 v1, 0x9

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-ne v1, v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const v2, 0x7f080265

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v1, v2, v3}, Landroidx/vectordrawable/graphics/drawable/d;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/d;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const/4 v1, 0x0

    .line 100
    :goto_0
    if-eqz v1, :cond_3

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Landroidx/vectordrawable/graphics/drawable/d;->setTint(I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    new-instance v2, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 108
    .line 109
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    .line 114
    iget-object v4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 115
    .line 116
    invoke-static {v4}, Lcom/android/calendar/homepage/WeekAgendaView;->i(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    iget-object v5, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 121
    .line 122
    invoke-static {v5}, Lcom/android/calendar/homepage/WeekAgendaView;->f(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 130
    .line 131
    invoke-static {v4}, Lcom/android/calendar/homepage/WeekAgendaView;->g(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 141
    .line 142
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->d(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    iget-object v4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 147
    .line 148
    invoke-static {v4}, Lcom/android/calendar/homepage/WeekAgendaView;->d(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    const/4 v5, 0x0

    .line 153
    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    .line 155
    .line 156
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 157
    .line 158
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const v4, 0x7f0800eb

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    sget-object v6, Lcom/android/calendar/common/Utils$DisplayType;->FILL:Lcom/android/calendar/common/Utils$DisplayType;

    .line 182
    .line 183
    invoke-static {v4, p1, v6}, Lcom/android/calendar/common/Utils;->A(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/Utils$DisplayType;)I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    .line 192
    .line 193
    const/4 v3, -0x2

    .line 194
    if-eqz v1, :cond_4

    .line 195
    .line 196
    new-instance v4, Landroid/widget/ImageView;

    .line 197
    .line 198
    iget-object v6, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 199
    .line 200
    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    .line 205
    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    .line 207
    .line 208
    const/16 v7, -0x11

    .line 209
    .line 210
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    new-instance v1, Lcom/android/calendar/homepage/n1;

    .line 223
    .line 224
    invoke-direct {v1, v2, v4}, Lcom/android/calendar/homepage/n1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 228
    .line 229
    .line 230
    :cond_4
    new-instance v1, Landroid/widget/TextView;

    .line 231
    .line 232
    iget-object v4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 233
    .line 234
    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 235
    .line 236
    .line 237
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 238
    .line 239
    const/4 v6, -0x1

    .line 240
    invoke-direct {v4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    .line 242
    .line 243
    const/16 v3, 0x10

    .line 244
    .line 245
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 246
    .line 247
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 248
    .line 249
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->e(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 254
    .line 255
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Lcom/miui/calendar/util/w;->d()Landroid/graphics/Typeface;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 263
    .line 264
    .line 265
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 266
    .line 267
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->h(Lcom/android/calendar/homepage/WeekAgendaView;)F

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 272
    .line 273
    .line 274
    const/4 v3, 0x1

    .line 275
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 276
    .line 277
    .line 278
    iget-object v4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-static {v4, p1}, Lcom/android/calendar/event/e0;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    .line 300
    .line 301
    new-instance p1, Lcom/android/calendar/homepage/o1;

    .line 302
    .line 303
    invoke-direct {p1, v2, v1, p0}, Lcom/android/calendar/homepage/o1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/android/calendar/homepage/WeekAgendaView$b;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 307
    .line 308
    .line 309
    return-void
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

.method private static final g(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    const-string v0, "$layout"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$iconView"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

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

.method private static final h(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/android/calendar/homepage/WeekAgendaView$b;)V
    .locals 1

    .line 1
    const-string v0, "$layout"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$textView"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "this$0"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-void
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

.method private final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->b:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->l(Lcom/android/calendar/homepage/WeekAgendaView;)Landroid/util/LongSparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {}, Lcom/android/calendar/homepage/WeekAgendaView;->b()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v3, v0, v1, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "mBirthDays[juliaDay, EMPTY_EVENT_LIST]"

    .line 28
    .line 29
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v3, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->k(Lcom/android/calendar/homepage/WeekAgendaView;)Landroid/util/LongSparseArray;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {}, Lcom/android/calendar/homepage/WeekAgendaView;->b()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v0, v1, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "mAnniversaryEvents[juliaDay, EMPTY_EVENT_LIST]"

    .line 52
    .line 53
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast v3, Ljava/util/Collection;

    .line 57
    .line 58
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->n(Lcom/android/calendar/homepage/WeekAgendaView;)Landroid/util/LongSparseArray;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {}, Lcom/android/calendar/homepage/WeekAgendaView;->b()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v0, v1, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "mCountdownEvents[juliaDay, EMPTY_EVENT_LIST]"

    .line 76
    .line 77
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v3, Ljava/util/Collection;

    .line 81
    .line 82
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 86
    .line 87
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->j(Lcom/android/calendar/homepage/WeekAgendaView;)Landroid/util/LongSparseArray;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {}, Lcom/android/calendar/homepage/WeekAgendaView;->b()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v0, v1, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "mAgendaEvents[juliaDay, EMPTY_EVENT_LIST]"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast v0, Ljava/util/Collection;

    .line 105
    .line 106
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v2}, Lcom/android/calendar/homepage/WeekAgendaView$b;->o(Ljava/util/List;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    .line 115
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/android/calendar/homepage/l1;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/l1;-><init>(Lcom/android/calendar/homepage/WeekAgendaView$b;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 122
    .line 123
    .line 124
    iget v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->c:I

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_1

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/android/calendar/common/event/schema/Event;

    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    iget-object v4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 145
    .line 146
    invoke-static {v4}, Lcom/android/calendar/homepage/WeekAgendaView;->o(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-ge v0, v4, :cond_1

    .line 151
    .line 152
    invoke-direct {p0, v3}, Lcom/android/calendar/homepage/WeekAgendaView$b;->f(Lcom/android/calendar/common/event/schema/Event;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    iget v1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->c:I

    .line 157
    .line 158
    sub-int/2addr v0, v1

    .line 159
    add-int/2addr v1, v0

    .line 160
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 161
    .line 162
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->o(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-ne v1, v3, :cond_2

    .line 167
    .line 168
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-ne v0, v1, :cond_2

    .line 173
    .line 174
    add-int/lit8 v0, v0, -0x1

    .line 175
    .line 176
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/android/calendar/common/event/schema/Event;

    .line 181
    .line 182
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/WeekAgendaView$b;->f(Lcom/android/calendar/common/event/schema/Event;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-ge v0, v1, :cond_3

    .line 191
    .line 192
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    sub-int/2addr v1, v0

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    invoke-direct {p0, v1}, Lcom/android/calendar/homepage/WeekAgendaView$b;->k(I)V

    .line 200
    .line 201
    .line 202
    :cond_3
    :goto_1
    return-void
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

.method private static final j(Lcom/android/calendar/homepage/WeekAgendaView$b;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

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

.method private final k(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/android/calendar/homepage/WeekAgendaView;->i(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->f(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/android/calendar/homepage/WeekAgendaView;->g(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/calendar/homepage/WeekAgendaView;->h(Lcom/android/calendar/homepage/WeekAgendaView;)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const/16 v3, 0x2b

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    const/16 p1, 0x10

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/android/calendar/homepage/WeekAgendaView;->d(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iget-object v1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/android/calendar/homepage/WeekAgendaView;->d(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/android/calendar/homepage/WeekAgendaView;->c(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/miui/calendar/util/w;->d()Landroid/graphics/Typeface;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/android/calendar/homepage/m1;

    .line 107
    .line 108
    invoke-direct {p1, p0, v0}, Lcom/android/calendar/homepage/m1;-><init>(Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/widget/TextView;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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
.end method

.method private static final l(Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$textView"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

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

.method private final m(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/homepage/WeekAgendaView$b;->i()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->f:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 14
    .line 15
    new-instance v0, Lcom/android/calendar/homepage/p1;

    .line 16
    .line 17
    invoke-direct {v0, p1, p0}, Lcom/android/calendar/homepage/p1;-><init>(Lcom/android/calendar/homepage/WeekAgendaView;Lcom/android/calendar/homepage/WeekAgendaView$b;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method private static final n(Lcom/android/calendar/homepage/WeekAgendaView;Lcom/android/calendar/homepage/WeekAgendaView$b;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "this$1"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/calendar/homepage/WeekAgendaView;->p(Lcom/android/calendar/homepage/WeekAgendaView;)Lcom/android/calendar/homepage/h1$b;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/calendar/homepage/WeekAgendaView;->p(Lcom/android/calendar/homepage/WeekAgendaView;)Lcom/android/calendar/homepage/h1$b;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/calendar/homepage/WeekAgendaView$b;->b:Ljava/util/Calendar;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/android/calendar/homepage/h1$b;->a(Ljava/util/Calendar;)V

    .line 27
    .line 28
    .line 29
    :cond_0
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

.method private final o(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->d:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    move v3, v2

    .line 30
    :goto_1
    if-ge v3, v0, :cond_3

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->d:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/calendar/common/event/schema/Event;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lcom/android/calendar/common/event/schema/Event;

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    cmp-long v4, v4, v6

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->d:Ljava/util/List;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v1, v2

    .line 68
    :goto_2
    return v1

    .line 69
    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->d:Ljava/util/List;

    .line 70
    .line 71
    return v1
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
.method public final getMThisDay()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->b:Ljava/util/Calendar;

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

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_3

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    move p3, p1

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    if-ge p3, p4, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-gt v0, p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 38
    .line 39
    const v1, 0x7f010055

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-ge p3, p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    if-le p4, p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    const/4 v0, 0x4

    .line 73
    if-eq p4, v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object p4, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->a:Landroid/content/Context;

    .line 79
    .line 80
    const v0, 0x7f010056

    .line 81
    .line 82
    .line 83
    invoke-static {p4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    invoke-virtual {p1, p4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    return-void
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

.method public final p()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/WeekAgendaView$b;->i()V

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

.method public removeAllViews()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->d:Ljava/util/List;

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

.method public final setMThisDay(Ljava/util/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$b;->b:Ljava/util/Calendar;

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
.end method
