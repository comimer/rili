.class Lkb/b$a;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkb/b;


# direct methods
.method constructor <init>(Lkb/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb/b$a;->a:Lkb/b;

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
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/high16 v2, 0x40000000    # 2.0f

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    neg-int v2, v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v4, v0, Lkb/b$a;->a:Lkb/b;

    .line 23
    .line 24
    invoke-static {v4}, Lkb/b;->l(Lkb/b;)Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v0, Lkb/b$a;->a:Lkb/b;

    .line 32
    .line 33
    invoke-virtual {v4}, Lkb/b;->T()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-object v4, v0, Lkb/b$a;->a:Lkb/b;

    .line 40
    .line 41
    invoke-virtual {v4}, Lkb/b;->T()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v4, v0, Lkb/b$a;->a:Lkb/b;

    .line 49
    .line 50
    invoke-virtual {v4}, Lkb/b;->V()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    iget-object v4, v0, Lkb/b$a;->a:Lkb/b;

    .line 57
    .line 58
    invoke-virtual {v4}, Lkb/b;->V()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v1, v0, Lkb/b$a;->a:Lkb/b;

    .line 66
    .line 67
    invoke-static {v1}, Lkb/b;->l(Lkb/b;)Landroid/widget/RelativeLayout;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual {v1, v3, v2, v4, v3}, Landroid/view/View;->layout(IIII)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lkb/b$a;->a:Lkb/b;

    .line 83
    .line 84
    invoke-virtual {v1}, Lkb/b;->T()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    iget-object v1, v0, Lkb/b$a;->a:Lkb/b;

    .line 91
    .line 92
    invoke-virtual {v1}, Lkb/b;->T()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, v0, Lkb/b$a;->a:Lkb/b;

    .line 97
    .line 98
    iget-object v2, v2, Lkb/b;->j:Lmiuix/springback/view/SpringBackLayout;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iget-object v5, v0, Lkb/b$a;->a:Lkb/b;

    .line 109
    .line 110
    iget-object v5, v5, Lkb/b;->j:Lmiuix/springback/view/SpringBackLayout;

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    add-int/2addr v5, v6

    .line 121
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 122
    .line 123
    .line 124
    :cond_2
    iget-object v1, v0, Lkb/b$a;->a:Lkb/b;

    .line 125
    .line 126
    invoke-virtual {v1}, Lkb/b;->V()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    iget-object v1, v0, Lkb/b$a;->a:Lkb/b;

    .line 133
    .line 134
    invoke-virtual {v1}, Lkb/b;->V()Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-virtual {v1, v3, v2, v4, v3}, Landroid/view/View;->layout(IIII)V

    .line 147
    .line 148
    .line 149
    :cond_3
    iget-object v5, v0, Lkb/b$a;->a:Lkb/b;

    .line 150
    .line 151
    move-object/from16 v6, p1

    .line 152
    .line 153
    move/from16 v7, p2

    .line 154
    .line 155
    move/from16 v8, p3

    .line 156
    .line 157
    move/from16 v9, p4

    .line 158
    .line 159
    move/from16 v10, p5

    .line 160
    .line 161
    move/from16 v11, p6

    .line 162
    .line 163
    move/from16 v12, p7

    .line 164
    .line 165
    move/from16 v13, p8

    .line 166
    .line 167
    move/from16 v14, p9

    .line 168
    .line 169
    invoke-virtual/range {v5 .. v14}, Lkb/b;->M0(Landroid/view/View;IIIIIIII)V

    .line 170
    .line 171
    .line 172
    return-void
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
.end method
