.class public Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/zeus/landingpage/sdk/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->initDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDownload(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelDownload packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPJsCallee"

    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, -0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "0"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->downloadCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadFailed packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "LPJsCallee"

    invoke-static {v2, v1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v6}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$200(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-virtual {v1, v3, v2, v5}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->downloadFailed(Ljava/lang/String;I)V

    return-void
.end method

.method public onDownloadFinished(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFinished packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPJsCallee"

    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v6, "100"

    aput-object v6, v2, v4

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->downloadFinished(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadPaused(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadPaused packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPJsCallee"

    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "0"

    aput-object v5, v2, v3

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->downloadPaused(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadProgressUpdated(Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProgressUpdated packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPJsCallee"

    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0, p2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$202(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;I)I

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->downloadProgressUpdated(Ljava/lang/String;I)V

    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadStarted packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPJsCallee"

    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->downloadStart(Ljava/lang/String;)V

    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallFailed packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPJsCallee"

    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "100"

    aput-object v5, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->installFailed(Ljava/lang/String;I)V

    return-void
.end method

.method public onInstallStart(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallStart packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LPJsCallee"

    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    const-string v5, "100"

    aput-object v5, v3, v2

    const/4 v2, 0x2

    const-string v5, "0"

    aput-object v5, v3, v2

    invoke-virtual {v0, v4, v1, v3}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->installStart(Ljava/lang/String;)V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onInstallSuccess packageName="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LPJsCallee"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$300(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Lcom/miui/zeus/landingpage/sdk/c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$300(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Lcom/miui/zeus/landingpage/sdk/c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/miui/zeus/landingpage/sdk/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$300(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Lcom/miui/zeus/landingpage/sdk/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$400(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/miui/zeus/landingpage/sdk/c;->b(Lcom/miui/zeus/landingpage/sdk/DownloadListener;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$100(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/4 v2, 0x3

    .line 86
    new-array v2, v2, [Ljava/lang/String;

    .line 87
    .line 88
    const/4 v3, 0x4

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v4, 0x0

    .line 94
    aput-object v3, v2, v4

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    const-string v5, "100"

    .line 98
    .line 99
    aput-object v5, v2, v3

    .line 100
    .line 101
    const/4 v3, 0x2

    .line 102
    const-string v5, "0"

    .line 103
    .line 104
    aput-object v5, v2, v3

    .line 105
    .line 106
    invoke-virtual {v0, v4, v1, v2}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$1;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->installSuccess(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
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
