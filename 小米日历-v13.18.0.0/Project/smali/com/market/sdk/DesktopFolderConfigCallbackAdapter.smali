.class public Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;
.super Landroid/os/ResultReceiver;
.source "DesktopFolderConfigCallbackAdapter.java"


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final RESULT_CODE_FAILED:I = 0x2

.field private static final RESULT_CODE_SUCCESS:I = 0x1


# instance fields
.field private final mAdaptee:Lcom/market/sdk/d;


# direct methods
.method public constructor <init>(Lcom/market/sdk/d;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/d;

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
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "key_data"

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/d;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lcom/market/sdk/d;->onFailed(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/d;

    .line 25
    .line 26
    invoke-interface {p2, p1}, Lcom/market/sdk/d;->onSuccess(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
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
