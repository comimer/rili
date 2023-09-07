.class public final Lcom/miui/maml/shader/ShaderElement$GradientStops;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "GradientStops"
.end annotation


# instance fields
.field private mColors:[I

.field protected mGradientStopArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/shader/ShaderElement$GradientStop;",
            ">;"
        }
    .end annotation
.end field

.field private mPositions:[F

.field final synthetic this$0:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method protected constructor <init>(Lcom/miui/maml/shader/ShaderElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 12
    .line 13
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


# virtual methods
.method public add(Lcom/miui/maml/shader/ShaderElement$GradientStop;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public getColors()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getPositions()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public init()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public update()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getColor()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 22
    .line 23
    aget v4, v3, v0

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-eq v2, v4, :cond_0

    .line 27
    .line 28
    move v1, v5

    .line 29
    :cond_0
    aput v2, v3, v0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getPosition()F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 44
    .line 45
    aget v4, v3, v0

    .line 46
    .line 47
    cmpl-float v4, v2, v4

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    move v1, v5

    .line 52
    :cond_1
    aput v2, v3, v0

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement;->onGradientStopsChanged()V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
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
