.class Lcom/xiaomi/passport/ui/page/e$k;
.super Lj6/e;
.source "PhoneAccountLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaomi/passport/ui/page/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/ui/page/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lj6/e;-><init>(Landroid/content/Context;)V

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
.method public a()V
    .locals 4

    .line 1
    invoke-super {p0}, Lj6/e;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->i:Lcom/xiaomi/passport/ui/page/c;

    .line 16
    .line 17
    sget-object v1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;->INPUT_PHONE_NUMBER:Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/passport/ui/page/c;->g(Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;Landroid/os/Bundle;Z)V

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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2}, Lj6/e;->b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V

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

.method public e(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lj6/e;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lz6/c;->m(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->c:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 31
    .line 32
    invoke-static {v0, p1, v1}, Lz6/c;->b(Landroid/app/Activity;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;)V

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

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 13
    .line 14
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/e$k;->b:Lcom/xiaomi/passport/ui/page/e;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/page/a;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
