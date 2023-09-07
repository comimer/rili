.class Lcom/xiaomi/passport/ui/page/AccountLoginActivity$b;
.super Ljava/lang/Object;
.source "AccountLoginActivity.java"

# interfaces
.implements La7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/AccountLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/AccountLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$b;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$b;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/AccountLoginActivity;->H(Lcom/xiaomi/passport/ui/page/AccountLoginActivity;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$b;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/AccountLoginActivity;->H(Lcom/xiaomi/passport/ui/page/AccountLoginActivity;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x22b0

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/AccountLoginActivity$b;->a:Lcom/xiaomi/passport/ui/page/AccountLoginActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lz6/e;->e(Landroid/content/Context;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    return-void
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
