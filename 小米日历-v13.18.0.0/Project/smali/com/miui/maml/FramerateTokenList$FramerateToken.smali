.class public Lcom/miui/maml/FramerateTokenList$FramerateToken;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/FramerateTokenList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FramerateToken"
.end annotation


# instance fields
.field public mFramerate:F

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/FramerateTokenList;


# direct methods
.method public constructor <init>(Lcom/miui/maml/FramerateTokenList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

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
.method public getFramerate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 2
    .line 3
    return v0
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

.method public requestFramerate(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/miui/maml/FramerateTokenList;->access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/miui/maml/FramerateTokenList;->access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;->onFrameRateChage(FF)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 27
    .line 28
    iget-object p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/miui/maml/FramerateTokenList;->access$100(Lcom/miui/maml/FramerateTokenList;)V

    .line 31
    .line 32
    .line 33
    :cond_1
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
.end method
