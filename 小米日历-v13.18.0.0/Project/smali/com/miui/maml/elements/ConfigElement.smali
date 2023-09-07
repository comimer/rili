.class public abstract Lcom/miui/maml/elements/ConfigElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "ConfigElement.java"


# static fields
.field protected static final ATTR_DELAY:Ljava/lang/String; = "delay"

.field protected static final ATTR_EASE:Ljava/lang/String; = "ease"

.field protected static final ATTR_FROM_SPEED:Ljava/lang/String; = "fromSpeed"

.field protected static final ATTR_ON_BEGIN:Ljava/lang/String; = "onBegin"

.field protected static final ATTR_ON_COMPLETE:Ljava/lang/String; = "onComplete"

.field protected static final ATTR_ON_UPDATE:Ljava/lang/String; = "onUpdate"

.field protected static final ATTR_PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field protected mTempAnimConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld9/a;",
            ">;"
        }
    .end annotation
.end field

.field protected mTempValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/folme/ConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
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

.method private setupCallbacks(Ljava/util/Collection;Ln/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;",
            "Ln/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ln/b;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lcom/miui/maml/elements/FunctionElement;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
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
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected abstract evaluateConfigValue()V
.end method

.method public getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)Ld9/a;
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Ld9/a;

    .line 8
    .line 9
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ConfigElement;->evaluateConfigValue()V

    .line 14
    .line 15
    .line 16
    new-instance v7, Ld9/a;

    .line 17
    .line 18
    invoke-direct {v7}, Ld9/a;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v9, 0x1

    .line 32
    const/4 v10, 0x0

    .line 33
    if-eqz v1, :cond_6

    .line 34
    .line 35
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v11, v1

    .line 40
    check-cast v11, Lcom/miui/maml/folme/ConfigValue;

    .line 41
    .line 42
    iget-object v1, v11, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Ln/b;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1}, Ln/b;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    new-instance v12, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v1, v11, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Ln/b;

    .line 58
    .line 59
    invoke-virtual {v1}, Ln/b;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/b;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-boolean v1, v11, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    iget-object v3, v11, Lcom/miui/maml/folme/ConfigValue;->mEase:Lj9/c$a;

    .line 89
    .line 90
    iget-wide v4, v11, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 91
    .line 92
    new-array v6, v9, [F

    .line 93
    .line 94
    iget v1, v11, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 95
    .line 96
    aput v1, v6, v10

    .line 97
    .line 98
    move-object v1, v7

    .line 99
    invoke-virtual/range {v1 .. v6}, Ld9/a;->q(Lmiuix/animation/property/b;Lj9/c$a;J[F)Ld9/a;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget-object v3, v11, Lcom/miui/maml/folme/ConfigValue;->mEase:Lj9/c$a;

    .line 104
    .line 105
    iget-wide v4, v11, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 106
    .line 107
    new-array v6, v10, [F

    .line 108
    .line 109
    move-object v1, v7

    .line 110
    invoke-virtual/range {v1 .. v6}, Ld9/a;->q(Lmiuix/animation/property/b;Lj9/c$a;J[F)Ld9/a;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    iget-boolean v1, v11, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    iget v1, v11, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 119
    .line 120
    invoke-virtual {v7, v1}, Ld9/a;->m(F)Ld9/a;

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object v1, v11, Lcom/miui/maml/folme/ConfigValue;->mEase:Lj9/c$a;

    .line 124
    .line 125
    invoke-virtual {v7, v1}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 126
    .line 127
    .line 128
    iget-wide v1, v11, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 129
    .line 130
    invoke-virtual {v7, v1, v2}, Ld9/a;->j(J)Ld9/a;

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object v1, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 134
    .line 135
    iget-object v2, v11, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Ln/b;

    .line 136
    .line 137
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Ln/b;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 141
    .line 142
    iget-object v2, v11, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Ln/b;

    .line 143
    .line 144
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Ln/b;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 148
    .line 149
    iget-object v2, v11, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Ln/b;

    .line 150
    .line 151
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Ln/b;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_6
    new-array v0, v9, [Lg9/b;

    .line 156
    .line 157
    aput-object p1, v0, v10

    .line 158
    .line 159
    invoke-virtual {v7, v0}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 160
    .line 161
    .line 162
    return-object v7
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .locals 0

    return-void
.end method
