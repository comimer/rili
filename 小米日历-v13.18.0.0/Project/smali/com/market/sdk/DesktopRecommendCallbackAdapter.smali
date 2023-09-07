.class public Lcom/market/sdk/DesktopRecommendCallbackAdapter;
.super Landroid/os/ResultReceiver;
.source "DesktopRecommendCallbackAdapter.java"


# static fields
.field private static final CODE_LOAD_FAILED:I = 0x1

.field private static final CODE_LOAD_SUCCESS:I = 0x0

.field private static final KEY_JSON:Ljava/lang/String; = "json"


# instance fields
.field private final mAdaptee:Lcom/market/sdk/a;


# direct methods
.method public constructor <init>(Lcom/market/sdk/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter;->mAdaptee:Lcom/market/sdk/a;

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


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    if-eq p1, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter;->mAdaptee:Lcom/market/sdk/a;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/market/sdk/a;->b()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string p1, "json"

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter;->mAdaptee:Lcom/market/sdk/a;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/market/sdk/DesktopRecommendInfo;->restore(Ljava/lang/String;)Lcom/market/sdk/DesktopRecommendInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p2, p1}, Lcom/market/sdk/a;->a(Lcom/market/sdk/DesktopRecommendInfo;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
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
