.class Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;
.super Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedAccController"
.end annotation


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Lcom/miui/maml/data/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

.field private mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "bounceInitSpeed"

    .line 12
    .line 13
    invoke-virtual {p1, p2, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "bounceAcceleration"

    .line 28
    .line 29
    invoke-virtual {p1, p2, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {v0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lcom/miui/maml/data/Expression;

    .line 38
    .line 39
    iget-boolean p2, p1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "."

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "bounce_progress"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 78
    .line 79
    :cond_0
    return-void
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
.method protected getDistance(J)J
    .locals 10

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    mul-long/2addr v1, p1

    .line 5
    const-wide/16 v3, 0x3e8

    .line 6
    .line 7
    div-long/2addr v1, v3

    .line 8
    iget v5, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    .line 9
    .line 10
    int-to-long v6, v5

    .line 11
    mul-long/2addr v6, p1

    .line 12
    mul-long/2addr v6, p1

    .line 13
    const-wide/32 v8, 0x1e8480

    .line 14
    .line 15
    .line 16
    div-long/2addr v6, v8

    .line 17
    add-long/2addr v1, v6

    .line 18
    int-to-long v6, v0

    .line 19
    int-to-long v8, v5

    .line 20
    mul-long/2addr v8, p1

    .line 21
    div-long/2addr v8, v3

    .line 22
    add-long/2addr v6, v8

    .line 23
    const-wide/16 p1, 0x0

    .line 24
    .line 25
    cmp-long p1, v6, p1

    .line 26
    .line 27
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 28
    .line 29
    if-gtz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 42
    .line 43
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    cmpl-double v0, p1, v5

    .line 46
    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    long-to-double v5, v1

    .line 50
    div-double/2addr v5, p1

    .line 51
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    cmpl-double p2, v5, v3

    .line 56
    .line 57
    if-lez p2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-wide v3, v5

    .line 61
    :goto_0
    invoke-virtual {p1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-wide v1
    .line 65
.end method

.method public init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
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

.method protected onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    double-to-int v0, v0

    .line 12
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lcom/miui/maml/data/Expression;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    double-to-int v0, v0

    .line 25
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
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
.end method

.method public start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
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
