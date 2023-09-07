.class Lcom/miui/maml/elements/TimepanelScreenElement$1;
.super Ljava/lang/Object;
.source "TimepanelScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/TimepanelScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/TimepanelScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/TimepanelScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

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
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$000(Lcom/miui/maml/elements/TimepanelScreenElement;)Z

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
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-object v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 28
    .line 29
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 59
    .line 60
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$200(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 76
    .line 77
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$300(Lcom/miui/maml/elements/TimepanelScreenElement;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$400(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 103
    .line 104
    invoke-static {v2, v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$402(Lcom/miui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 105
    .line 106
    .line 107
    new-instance v2, Landroid/graphics/Canvas;

    .line 108
    .line 109
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    .line 117
    .line 118
    move v0, v3

    .line 119
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-ge v3, v4, :cond_5

    .line 124
    .line 125
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    iget-object v5, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 130
    .line 131
    invoke-static {v5, v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$500(Lcom/miui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    int-to-float v5, v0

    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    add-int/2addr v0, v4

    .line 148
    iget-object v4, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 149
    .line 150
    invoke-static {v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    add-int/2addr v0, v4

    .line 155
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 159
    .line 160
    iget-object v1, v1, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 166
    .line 167
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    sub-int/2addr v0, v2

    .line 172
    invoke-static {v1, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$702(Lcom/miui/maml/elements/TimepanelScreenElement;I)I

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$700(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    int-to-double v1, v1

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->setActualWidth(D)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 192
    .line 193
    .line 194
    return-void
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
