.class public final Lcom/miui/calendar/search/SearchResultFragment$d;
.super Ljava/lang/Object;
.source "SearchResultFragment.kt"

# interfaces
.implements Lt4/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/search/SearchResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/miui/calendar/search/SearchResultFragment$d",
        "Lt4/a$d;",
        "Lkotlin/u;",
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


# instance fields
.field final synthetic a:Lcom/miui/calendar/search/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/calendar/search/SearchResultFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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

.method public static synthetic c(Lcom/miui/calendar/search/SearchResultFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/search/SearchResultFragment$d;->e(Lcom/miui/calendar/search/SearchResultFragment;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/calendar/search/SearchResultFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/search/SearchResultFragment$d;->f(Lcom/miui/calendar/search/SearchResultFragment;)V

    return-void
.end method

.method private static final e(Lcom/miui/calendar/search/SearchResultFragment;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/miui/calendar/search/SearchResultFragment;->o(Lcom/miui/calendar/search/SearchResultFragment;)Lcom/miui/calendar/view/RefreshLoadRecyclerView;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "mEventsList"

    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/miui/calendar/view/RefreshLoadRecyclerView;->w()V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method

.method private static final f(Lcom/miui/calendar/search/SearchResultFragment;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/miui/calendar/search/SearchResultFragment;->o(Lcom/miui/calendar/search/SearchResultFragment;)Lcom/miui/calendar/view/RefreshLoadRecyclerView;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "mEventsList"

    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/miui/calendar/view/RefreshLoadRecyclerView;->x()V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->n(Lcom/miui/calendar/search/SearchResultFragment;)Lcom/miui/calendar/widget/EmptyView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mEmptyView"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v0, v2

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->n(Lcom/miui/calendar/search/SearchResultFragment;)Lcom/miui/calendar/widget/EmptyView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v0, v2

    .line 34
    :cond_1
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->r(Lcom/miui/calendar/search/SearchResultFragment;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 v0, 0x0

    .line 54
    :goto_0
    if-eqz v0, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->o(Lcom/miui/calendar/search/SearchResultFragment;)Lcom/miui/calendar/view/RefreshLoadRecyclerView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    const-string v0, "mEventsList"

    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    move-object v2, v0

    .line 71
    :goto_1
    invoke-virtual {v2}, Lcom/miui/calendar/view/RefreshLoadRecyclerView;->x()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 76
    .line 77
    const/16 v1, -0xc

    .line 78
    .line 79
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->r(Lcom/miui/calendar/search/SearchResultFragment;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 84
    .line 85
    new-instance v4, Lcom/miui/calendar/search/m;

    .line 86
    .line 87
    invoke-direct {v4, v3}, Lcom/miui/calendar/search/m;-><init>(Lcom/miui/calendar/search/SearchResultFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/calendar/search/SearchResultFragment;->A(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
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

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->r(Lcom/miui/calendar/search/SearchResultFragment;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

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
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->o(Lcom/miui/calendar/search/SearchResultFragment;)Lcom/miui/calendar/view/RefreshLoadRecyclerView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "mEventsList"

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/miui/calendar/view/RefreshLoadRecyclerView;->w()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 37
    .line 38
    const/16 v1, 0xc

    .line 39
    .line 40
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->r(Lcom/miui/calendar/search/SearchResultFragment;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/miui/calendar/search/SearchResultFragment$d;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 45
    .line 46
    new-instance v4, Lcom/miui/calendar/search/l;

    .line 47
    .line 48
    invoke-direct {v4, v3}, Lcom/miui/calendar/search/l;-><init>(Lcom/miui/calendar/search/SearchResultFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/calendar/search/SearchResultFragment;->A(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    return-void
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
