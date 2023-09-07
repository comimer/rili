.class public Lcom/xiaomi/passport/ui/page/b;
.super Lcom/xiaomi/passport/ui/page/BaseLoginFragment;
.source "InputPhoneNumberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/page/b$d;,
        Lcom/xiaomi/passport/ui/page/b$e;
    }
.end annotation


# instance fields
.field private final j:I

.field private k:Lcom/xiaomi/passport/uicontroller/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/passport/data/LoginPreference;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/xiaomi/passport/uicontroller/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/xiaomi/passport/ui/view/AgreementView;

.field private n:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Lj6/h;

.field private r:Lj6/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xbb9

    .line 5
    .line 6
    iput v0, p0, Lcom/xiaomi/passport/ui/page/b;->j:I

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
.end method

.method static synthetic A(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/b;->n:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method static synthetic B(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/b;->l:Lcom/xiaomi/passport/uicontroller/a;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method static synthetic C(Lcom/xiaomi/passport/ui/page/b;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/b;->l:Lcom/xiaomi/passport/uicontroller/a;

    .line 2
    .line 3
    return-object p1
    .line 4
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

.method static synthetic D(Lcom/xiaomi/passport/ui/page/b;)Lj6/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/b;->q:Lj6/h;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method private E()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->n:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getInputText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Ln5/g;->V:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Lz6/a;->a(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->k:Lcom/xiaomi/passport/uicontroller/a;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->n:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getCountryCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Lb7/g;->b(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {}, Lcom/xiaomi/passport/f;->b()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-string v0, "login"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "loginOrRegister"

    .line 55
    .line 56
    :goto_0
    move-object v4, v0

    .line 57
    iget-object v5, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v6, p0, Lcom/xiaomi/passport/ui/page/b;->r:Lj6/g;

    .line 60
    .line 61
    invoke-static/range {v1 .. v6}, Lz6/c;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj6/g;)Lcom/xiaomi/passport/uicontroller/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->k:Lcom/xiaomi/passport/uicontroller/a;

    .line 66
    .line 67
    return-void
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private F(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Ln5/e;->a:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->m:Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 10
    .line 11
    sget v0, Ln5/e;->X:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->n:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 20
    .line 21
    sget v0, Ln5/e;->B:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/Button;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->o:Landroid/widget/Button;

    .line 30
    .line 31
    sget v0, Ln5/e;->V:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/Button;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/b;->p:Landroid/widget/Button;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/b;->o:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/b;->p:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
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

.method private G(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->n:Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 2
    .line 3
    new-instance v1, Lcom/xiaomi/passport/ui/page/b$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/page/b$b;-><init>(Lcom/xiaomi/passport/ui/page/b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->d(ILandroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
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

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->i:Lcom/xiaomi/passport/ui/page/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/xiaomi/passport/ui/page/c;->e(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->m:Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->c:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/view/AgreementView;->setLoginAgreementAndPrivacy(Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->m:Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/view/AgreementView;->e([Lcom/xiaomi/passport/ui/data/PhoneAccount;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->m:Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->d:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v1, 0x8

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lb7/g;->e()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/page/b;->G(I)V

    .line 38
    .line 39
    .line 40
    return-void
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

.method private o()V
    .locals 0

    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->k:Lcom/xiaomi/passport/uicontroller/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/b;->k:Lcom/xiaomi/passport/uicontroller/a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->l:Lcom/xiaomi/passport/uicontroller/a;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/b;->l:Lcom/xiaomi/passport/uicontroller/a;

    .line 20
    .line 21
    :cond_1
    return-void
    .line 22
.end method

.method static synthetic y(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/AgreementView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/b;->m:Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method static synthetic z(Lcom/xiaomi/passport/ui/page/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/b;->E()V

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
.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->m:Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/view/AgreementView;->getAppAgreement()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/b;->o()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/b;->n()V

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xbb9

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->h:Ljava/lang/String;

    .line 12
    .line 13
    const/16 p2, 0x56

    .line 14
    .line 15
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/page/b;->G(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
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

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xiaomi/passport/ui/page/b$e;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/page/b$e;-><init>(Lcom/xiaomi/passport/ui/page/b;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->q:Lj6/h;

    .line 10
    .line 11
    new-instance v0, Lcom/xiaomi/passport/ui/page/b$d;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/page/b$d;-><init>(Lcom/xiaomi/passport/ui/page/b;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->r:Lj6/g;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->o:Landroid/widget/Button;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/page/b;->p()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/xiaomi/passport/ui/page/b$a;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/xiaomi/passport/ui/page/b$a;-><init>(Lcom/xiaomi/passport/ui/page/b;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->u(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/b;->E()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->p:Landroid/widget/Button;

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->i:Lcom/xiaomi/passport/ui/page/c;

    .line 29
    .line 30
    sget-object v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;->PASSWORD_LOGIN:Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {p1, v0, v1, v2}, Lcom/xiaomi/passport/ui/page/c;->g(Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;Landroid/os/Bundle;Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Ln5/f;->g:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/page/b;->F(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object p1
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

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/b;->s()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->onDestroyView()V

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

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->m:Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/view/AgreementView;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b;->m:Lcom/xiaomi/passport/ui/view/AgreementView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/view/AgreementView;->setUserAgreementSelected(Z)V

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
