.class public Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity$a;->a:Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity$a;->a:Lcom/miui/zeus/landingpage/sdk/activity/WebViewActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
