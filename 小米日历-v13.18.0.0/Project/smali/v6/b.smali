.class public Lv6/b;
.super Lcom/xiaomi/passport/ui/page/e;
.source "PhoneAccountQuickLoginFragment.java"


# instance fields
.field private x:Ls6/j;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/e;-><init>()V

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
.method protected E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Ls6/j;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Ls6/j;

    .line 9
    .line 10
    iput-object p1, p0, Lv6/b;->x:Ls6/j;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "only LayoutWrapperActivity can use this fragment"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
    .line 21
    .line 22
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Ln5/f;->j:I

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
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/page/e;->G(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lv6/b;->x:Ls6/j;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget p3, Ln5/b;->b:I

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lv6/b;->x:Ls6/j;

    .line 23
    .line 24
    invoke-virtual {p2}, Ls6/j;->y()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lv6/b;->y:Landroid/view/View;

    .line 29
    .line 30
    iget-object p2, p0, Lv6/b;->x:Ls6/j;

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-virtual {p2, p3}, Ls6/j;->setHeaderStartView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lv6/b;->x:Ls6/j;

    .line 37
    .line 38
    invoke-virtual {p2}, Ls6/j;->x()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lv6/b;->z:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget v0, Ln5/f;->A:I

    .line 49
    .line 50
    invoke-static {p2, v0, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-instance p3, Lv6/b$a;

    .line 55
    .line 56
    invoke-direct {p3, p0}, Lv6/b$a;-><init>(Lv6/b;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .line 64
    const/4 v0, -0x1

    .line 65
    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lv6/b;->x:Ls6/j;

    .line 72
    .line 73
    invoke-virtual {p3, p2}, Ls6/j;->setHeaderEndView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lv6/b;->x:Ls6/j;

    .line 77
    .line 78
    sget p3, Ln5/d;->a:I

    .line 79
    .line 80
    invoke-virtual {p2, p3}, Ls6/j;->E(I)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lv6/b;->x:Ls6/j;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    sget v0, Ln5/c;->i:I

    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    float-to-int p3, p3

    .line 96
    const/16 v0, 0x50

    .line 97
    .line 98
    invoke-virtual {p2, p3, v0}, Ls6/j;->F(II)V

    .line 99
    .line 100
    .line 101
    return-object p1
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv6/b;->x:Ls6/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Ln5/b;->a:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lv6/b;->x:Ls6/j;

    .line 13
    .line 14
    iget-object v2, p0, Lv6/b;->y:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ls6/j;->setHeaderStartView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lv6/b;->x:Ls6/j;

    .line 20
    .line 21
    iget-object v2, p0, Lv6/b;->z:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ls6/j;->setHeaderEndView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lv6/b;->x:Ls6/j;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ls6/j;->E(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lv6/b;->x:Ls6/j;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    const/16 v2, 0x30

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ls6/j;->F(II)V

    .line 37
    .line 38
    .line 39
    invoke-super {p0}, Lcom/xiaomi/passport/ui/page/e;->onDestroyView()V

    .line 40
    .line 41
    .line 42
    return-void
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
