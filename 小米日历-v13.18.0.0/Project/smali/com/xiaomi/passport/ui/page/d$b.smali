.class Lcom/xiaomi/passport/ui/page/d$b;
.super Lj6/a;
.source "PasswordLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaomi/passport/ui/page/d;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/ui/page/d;Landroid/content/Context;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 3
    invoke-direct {p0, p2}, Lj6/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/ui/page/d;Landroid/content/Context;Lcom/xiaomi/passport/ui/page/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/page/d$b;-><init>(Lcom/xiaomi/passport/ui/page/d;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/page/a;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2}, Lj6/a;->b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V

    .line 18
    .line 19
    .line 20
    return-void
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

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {p1}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lj6/a;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "passportapi"

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, p2, v1, v1}, Lcom/xiaomi/passport/accountmanager/g;->v(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    return-void
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

.method public d(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p1}, Lz6/c;->m(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->c:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lz6/c;->b(Landroid/app/Activity;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;)V

    .line 37
    .line 38
    .line 39
    return-void
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

.method public e(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {p1}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 18
    .line 19
    new-instance v0, Lcom/xiaomi/passport/ui/page/d$b$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/page/d$b$a;-><init>(Lcom/xiaomi/passport/ui/page/d$b;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->v(Ljava/lang/String;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$h;)V

    .line 25
    .line 26
    .line 27
    return-void
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
