.class public Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->postMessageToJs(ILjava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

.field public final synthetic val$methodName:Ljava/lang/String;

.field public final synthetic val$params:[Ljava/lang/String;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    iput p2, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$type:I

    iput-object p3, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$methodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$params:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget v0, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$type:I

    const-string v1, "LPJsCallee"

    const-string v2, ")"

    const-string v3, "\","

    const-string v4, "javascript:"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$methodName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v4}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$params:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "TYPE_DEEPLINK deepLinkMethodStr="

    aput-object v3, v2, v7

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$500(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2$1;

    invoke-direct {v2, p0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2$1;-><init>(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$methodName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$params:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$params:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v4}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$000(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->val$params:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "TYPE_DOWNLOAD downLoadMethodStr="

    aput-object v3, v2, v7

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;->this$0:Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    invoke-static {v1}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;->access$500(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2$2;

    invoke-direct {v2, p0}, Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2$2;-><init>(Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee$2;)V

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_1
    return-void
.end method
