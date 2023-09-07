.class Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;
.super Ljava/lang/Object;
.source "ConfirmCredentialActivity.java"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/util/LoginUIController$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "accountAuthenticatorResponse"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/xiaomi/passport/accountmanager/g;->v(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 39
    .line 40
    .line 41
    return-void
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public d(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/accountmanager/g;->q(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;->c(Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public e(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;->d(Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
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

.method public g(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V
    .locals 0

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity$a;->b:Lcom/xiaomi/passport/ui/internal/ConfirmCredentialActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lz6/a;->a(Landroid/content/Context;I)V

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
