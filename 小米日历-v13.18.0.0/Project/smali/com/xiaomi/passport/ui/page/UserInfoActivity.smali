.class public Lcom/xiaomi/passport/ui/page/UserInfoActivity;
.super Ls6/j;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/page/UserInfoActivity$b;
    }
.end annotation


# instance fields
.field private d:Landroid/accounts/AccountManagerFuture;

.field private e:Lcom/xiaomi/passport/accountmanager/g;

.field private f:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls6/j;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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
.method public A(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Ln5/f;->f:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

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

.method public B(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    sget v0, Ln5/f;->D:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 p3, 0x3e8

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, p3, :cond_1

    .line 5
    .line 6
    const/16 p3, 0x3e9

    .line 7
    .line 8
    if-eq p1, p3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-ne p2, v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-eq p2, v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ls6/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Ln5/g;->r:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ls6/j;->D(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->e:Lcom/xiaomi/passport/accountmanager/g;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->f:Landroid/accounts/Account;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    sget p1, Ln5/g;->n0:I

    .line 31
    .line 32
    invoke-static {p0, p1}, Lz6/a;->a(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->e:Lcom/xiaomi/passport/accountmanager/g;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/accountmanager/g;->b(Landroid/accounts/Account;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->e:Lcom/xiaomi/passport/accountmanager/g;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->f:Landroid/accounts/Account;

    .line 51
    .line 52
    new-instance v1, Lcom/xiaomi/passport/ui/page/UserInfoActivity$a;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/page/UserInfoActivity$a;-><init>(Lcom/xiaomi/passport/ui/page/UserInfoActivity;)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/xiaomi/passport/accountmanager/g;->g(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->d:Landroid/accounts/AccountManagerFuture;

    .line 63
    .line 64
    :cond_1
    return-void
    .line 65
.end method

.method public onLogoutClicked(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->e:Lcom/xiaomi/passport/accountmanager/g;

    .line 2
    .line 3
    new-instance v0, Lcom/xiaomi/passport/ui/page/UserInfoActivity$b;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/page/UserInfoActivity$b;-><init>(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/passport/accountmanager/g;->y(Lcom/xiaomi/passport/accountmanager/h;Landroid/os/Handler;)Lcom/xiaomi/passport/accountmanager/i;

    .line 10
    .line 11
    .line 12
    return-void
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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
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

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->d:Landroid/accounts/AccountManagerFuture;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Landroid/accounts/AccountManagerFuture;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/UserInfoActivity;->d:Landroid/accounts/AccountManagerFuture;

    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
