.class public Lcom/miui/maml/animation/ScaleAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "ScaleAnimation.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mDelayValueX:D

.field private mDelayValueY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    const-string v1, "x"

    .line 4
    .line 5
    const-string v2, "y"

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Item"

    .line 12
    .line 13
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    .line 32
    .line 33
    return-void
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

.method private getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :goto_1
    return-wide v0
    .line 20
    .line 21
    .line 22
.end method

.method private getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x2

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :goto_1
    return-wide v0
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method protected getDelayValue(I)D
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    .line 11
    .line 12
    :goto_1
    return-wide v0
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

.method public final getScaleX()D
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
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

.method public final getScaleY()D
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
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

.method protected onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    sub-double/2addr v3, v0

    .line 16
    float-to-double v5, p3

    .line 17
    mul-double/2addr v3, v5

    .line 18
    add-double/2addr v0, v3

    .line 19
    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const/4 p1, 0x2

    .line 27
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 28
    .line 29
    .line 30
    move-result-wide p2

    .line 31
    sub-double/2addr p2, v0

    .line 32
    mul-double/2addr p2, v5

    .line 33
    add-double/2addr v0, p2

    .line 34
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 35
    .line 36
    .line 37
    return-void
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
