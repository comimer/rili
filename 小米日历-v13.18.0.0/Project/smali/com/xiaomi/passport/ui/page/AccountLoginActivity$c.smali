.class Lcom/xiaomi/passport/ui/page/AccountLoginActivity$c;
.super Ljava/lang/Object;
.source "AccountLoginActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/AccountLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/AccountLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$c;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

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


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$c;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$c;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Ln5/e;->J:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(I)Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/xiaomi/passport/ui/page/a;

    .line 23
    .line 24
    instance-of v0, v0, Lcom/xiaomi/passport/ui/page/g;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$c;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    new-instance v2, Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sub-int/2addr v0, v2

    .line 68
    div-int/lit8 v1, v1, 0x4

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    if-lt v0, v1, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$c;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/AccountLoginActivity;->I(Lcom/xiaomi/passport/ui/page/AccountLoginActivity;)Lcom/xiaomi/passport/ui/view/AnimateScrollLinerLayout;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$c;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget v3, Ln5/c;->g:I

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    float-to-double v3, v1

    .line 92
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    double-to-int v1, v3

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/view/AnimateScrollLinerLayout;->c(II)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$c;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/AccountLoginActivity;->I(Lcom/xiaomi/passport/ui/page/AccountLoginActivity;)Lcom/xiaomi/passport/ui/view/AnimateScrollLinerLayout;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v2, v2}, Lcom/xiaomi/passport/ui/view/AnimateScrollLinerLayout;->c(II)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
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
