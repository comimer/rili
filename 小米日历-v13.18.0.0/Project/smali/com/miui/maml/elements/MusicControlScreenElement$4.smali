.class Lcom/miui/maml/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "android.media.metadata.DURATION"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/miui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long v6, v0, v4

    .line 43
    .line 44
    if-lez v6, :cond_3

    .line 45
    .line 46
    cmp-long v4, v2, v4

    .line 47
    .line 48
    if-gez v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 52
    .line 53
    invoke-static {v4}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    long-to-double v0, v0

    .line 58
    invoke-virtual {v4, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    long-to-double v4, v2

    .line 68
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2700(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 88
    .line 89
    invoke-static {v0, v2, v3}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2800(Lcom/miui/maml/elements/MusicControlScreenElement;J)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2900(Lcom/miui/maml/elements/MusicControlScreenElement;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    int-to-long v1, v1

    .line 114
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_0
    return-void
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
