.class Lcom/miui/calendar/web/CalendarWebViewActivity$b;
.super Ljava/lang/Object;
.source "CalendarWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/web/CalendarWebViewActivity;->E0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/calendar/web/CalendarWebViewActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/web/CalendarWebViewActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->o0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "history"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->b0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f0800e6

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->c0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const v2, 0x7f060139

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->b0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/widget/ImageView;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const v2, 0x7f0800e8

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->c0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/widget/TextView;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const v2, 0x7f060537

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->b0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/widget/ImageView;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/graphics/drawable/Animatable;

    .line 119
    .line 120
    invoke-static {v0, v1}, Lcom/miui/calendar/web/CalendarWebViewActivity;->e0(Lcom/miui/calendar/web/CalendarWebViewActivity;Landroid/graphics/drawable/Animatable;)Landroid/graphics/drawable/Animatable;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->d0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/graphics/drawable/Animatable;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->d0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/graphics/drawable/Animatable;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    iget-object v0, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$b;->b:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->d0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/graphics/drawable/Animatable;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_1
    return-void
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
