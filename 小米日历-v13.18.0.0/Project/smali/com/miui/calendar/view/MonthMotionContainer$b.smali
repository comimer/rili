.class final Lcom/miui/calendar/view/MonthMotionContainer$b;
.super Ljava/lang/Object;
.source "MonthMotionContainer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/view/MonthMotionContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/miui/calendar/view/MonthMotionContainer$b;",
        "Ljava/lang/Runnable;",
        "Lkotlin/u;",
        "run",
        "",
        "a",
        "I",
        "getPostViewType",
        "()I",
        "postViewType",
        "<init>",
        "(Lcom/miui/calendar/view/MonthMotionContainer;I)V",
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
.field private final a:I

.field final synthetic b:Lcom/miui/calendar/view/MonthMotionContainer;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/view/MonthMotionContainer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->a:I

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
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->a:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/view/MonthMotionContainer;->i(Lcom/miui/calendar/view/MonthMotionContainer;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->f(Lcom/miui/calendar/view/MonthMotionContainer;)Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "mListContainer"

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    float-to-int v0, v0

    .line 32
    iget-object v2, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/miui/calendar/view/MonthMotionContainer;->g(Lcom/miui/calendar/view/MonthMotionContainer;)Lcom/miui/calendar/util/b1;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "mVerticalMotionUtil"

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object v2, v1

    .line 46
    :cond_2
    invoke-virtual {v2}, Lcom/miui/calendar/util/b1;->h()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/2addr v0, v2

    .line 51
    add-int/lit8 v0, v0, 0x28

    .line 52
    .line 53
    iget-object v2, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/miui/calendar/view/MonthMotionContainer;->g(Lcom/miui/calendar/view/MonthMotionContainer;)Lcom/miui/calendar/util/b1;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v2, v1

    .line 65
    :cond_3
    invoke-virtual {v2}, Lcom/miui/calendar/util/b1;->f()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v2, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/miui/calendar/view/MonthMotionContainer;->g(Lcom/miui/calendar/view/MonthMotionContainer;)Lcom/miui/calendar/util/b1;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move-object v2, v1

    .line 85
    :cond_4
    int-to-float v4, v0

    .line 86
    const/4 v5, 0x1

    .line 87
    invoke-virtual {v2, v4, v5}, Lcom/miui/calendar/util/b1;->c(FZ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Lcom/miui/calendar/util/b1;->p(I)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/miui/calendar/view/MonthMotionContainer;->g(Lcom/miui/calendar/view/MonthMotionContainer;)Lcom/miui/calendar/util/b1;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move-object v2, v1

    .line 105
    :cond_5
    invoke-virtual {v2}, Lcom/miui/calendar/util/b1;->f()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-lt v0, v2, :cond_8

    .line 110
    .line 111
    iget-object v0, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 112
    .line 113
    iget v2, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->a:I

    .line 114
    .line 115
    invoke-static {v0, v2}, Lcom/miui/calendar/view/MonthMotionContainer;->i(Lcom/miui/calendar/view/MonthMotionContainer;I)Z

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->e(Lcom/miui/calendar/view/MonthMotionContainer;)Lcom/android/calendar/homepage/ListLayout;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/calendar/homepage/ListLayout;->h()V

    .line 127
    .line 128
    .line 129
    :cond_6
    iget-object v0, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->g(Lcom/miui/calendar/view/MonthMotionContainer;)Lcom/miui/calendar/util/b1;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-nez v0, :cond_7

    .line 136
    .line 137
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    move-object v1, v0

    .line 142
    :goto_0
    invoke-virtual {v1}, Lcom/miui/calendar/util/b1;->b()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/miui/calendar/view/MonthMotionContainer$b;->b:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 147
    .line 148
    const-wide/16 v1, 0x8

    .line 149
    .line 150
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .line 152
    .line 153
    return-void
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
