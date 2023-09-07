.class public Lcom/miui/zeus/landingpage/sdk/LPWebView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/zeus/landingpage/sdk/LPWebView;->addJavascriptInterfaceOnMainThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/zeus/landingpage/sdk/LPWebView;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/landingpage/sdk/LPWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/LPWebView$2;->this$0:Lcom/miui/zeus/landingpage/sdk/LPWebView;

    iput-object p2, p0, Lcom/miui/zeus/landingpage/sdk/LPWebView$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/LPWebView$2;->this$0:Lcom/miui/zeus/landingpage/sdk/LPWebView;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/LPWebView;->access$100(Lcom/miui/zeus/landingpage/sdk/LPWebView;)Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/LPWebView$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LPWebView"

    const-string v1, "addJavascriptInterfaceOnMainThread"

    invoke-static {v0, v1}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/LPWebView$2;->this$0:Lcom/miui/zeus/landingpage/sdk/LPWebView;

    invoke-static {v0}, Lcom/miui/zeus/landingpage/sdk/LPWebView;->access$100(Lcom/miui/zeus/landingpage/sdk/LPWebView;)Lcom/miui/zeus/landingpage/sdk/js/LPJsCallee;

    move-result-object v1

    const-string v2, "miui"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
