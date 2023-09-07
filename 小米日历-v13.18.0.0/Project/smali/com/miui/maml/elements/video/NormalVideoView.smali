.class Lcom/miui/maml/elements/video/NormalVideoView;
.super Lcom/miui/maml/elements/video/BaseVideoView;
.source "NormalVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

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


# virtual methods
.method protected addSurfaceHolderCallback()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    .line 9
    .line 10
    return-void
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

.method protected onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_9

    .line 5
    .line 6
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 13
    .line 14
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 19
    .line 20
    if-lez v2, :cond_8

    .line 21
    .line 22
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 23
    .line 24
    if-lez v2, :cond_8

    .line 25
    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/high16 v2, 0x40000000    # 2.0f

    .line 43
    .line 44
    if-ne v0, v2, :cond_1

    .line 45
    .line 46
    if-ne v1, v2, :cond_1

    .line 47
    .line 48
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 49
    .line 50
    mul-int v1, v0, p2

    .line 51
    .line 52
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 53
    .line 54
    mul-int v3, p1, v2

    .line 55
    .line 56
    if-ge v1, v3, :cond_0

    .line 57
    .line 58
    mul-int/2addr v0, p2

    .line 59
    div-int/2addr v0, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    mul-int v1, v0, p2

    .line 62
    .line 63
    mul-int v3, p1, v2

    .line 64
    .line 65
    if-le v1, v3, :cond_4

    .line 66
    .line 67
    mul-int/2addr v2, p1

    .line 68
    div-int v1, v2, v0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/high16 v3, -0x80000000

    .line 72
    .line 73
    if-ne v0, v2, :cond_3

    .line 74
    .line 75
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 76
    .line 77
    mul-int/2addr v0, p1

    .line 78
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 79
    .line 80
    div-int/2addr v0, v2

    .line 81
    if-ne v1, v3, :cond_2

    .line 82
    .line 83
    if-le v0, p2, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v1, v0

    .line 87
    :goto_0
    move v0, p1

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    if-ne v1, v2, :cond_6

    .line 90
    .line 91
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 92
    .line 93
    mul-int/2addr v1, p2

    .line 94
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 95
    .line 96
    div-int/2addr v1, v2

    .line 97
    if-ne v0, v3, :cond_5

    .line 98
    .line 99
    if-le v1, p1, :cond_5

    .line 100
    .line 101
    :cond_4
    :goto_1
    move v0, p1

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    move v0, v1

    .line 104
    :goto_2
    move v1, p2

    .line 105
    goto :goto_4

    .line 106
    :cond_6
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 107
    .line 108
    iget v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 109
    .line 110
    if-ne v1, v3, :cond_7

    .line 111
    .line 112
    if-le v4, p2, :cond_7

    .line 113
    .line 114
    mul-int v1, p2, v2

    .line 115
    .line 116
    div-int/2addr v1, v4

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    move v1, v2

    .line 119
    move p2, v4

    .line 120
    :goto_3
    if-ne v0, v3, :cond_5

    .line 121
    .line 122
    if-le v1, p1, :cond_5

    .line 123
    .line 124
    mul-int/2addr v4, p1

    .line 125
    div-int v1, v4, v2

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 133
    .line 134
    .line 135
    :goto_5
    return-void
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

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

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

.method protected onSurfaceDestroyed()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

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

.method protected setFormat(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

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
.end method

.method protected updateVideoSize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

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
