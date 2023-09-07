.class public La7/b;
.super Landroid/app/Dialog;
.source "PassportDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/CharSequence;

.field private o:Z

.field private p:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Ln5/h;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

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

.method static synthetic a(La7/b;)Landroid/util/Pair;
    .locals 0

    .line 1
    iget-object p0, p0, La7/b;->k:Landroid/util/Pair;

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

.method static synthetic b(La7/b;)Landroid/util/Pair;
    .locals 0

    .line 1
    iget-object p0, p0, La7/b;->l:Landroid/util/Pair;

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

.method static synthetic c(La7/b;)Landroid/util/Pair;
    .locals 0

    .line 1
    iget-object p0, p0, La7/b;->j:Landroid/util/Pair;

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

.method public static d(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)La7/b;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->getTips()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    new-instance v0, La7/b;

    .line 14
    .line 15
    invoke-direct {v0, p0}, La7/b;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->getTips()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, La7/b;->h(Ljava/lang/String;)La7/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;->getTitle()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, La7/b;->l(Ljava/lang/String;)La7/b;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const v0, 0x104000a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0, v1}, La7/b;->k(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
    .line 46
    .line 47
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

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

.method public e([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)La7/b;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    new-instance v1, Landroid/util/Pair;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, La7/b;->p:Landroid/util/Pair;

    .line 16
    .line 17
    new-instance v0, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_0
    array-length v2, p1

    .line 41
    if-ge v1, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-ne v1, p2, :cond_0

    .line 48
    .line 49
    sget v3, Ln5/f;->v:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    sget v3, Ln5/f;->w:I

    .line 53
    .line 54
    :goto_1
    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v3, La7/b$e;

    .line 62
    .line 63
    invoke-direct {v3, p0, p3, v1}, La7/b$e;-><init>(La7/b;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    sget v3, Ln5/e;->B0:I

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/widget/TextView;

    .line 76
    .line 77
    aget-object v3, p1, v1

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v0}, La7/b;->m(Landroid/view/View;)La7/b;

    .line 86
    .line 87
    .line 88
    return-object p0
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

.method public f(Z)La7/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, La7/b;->o:Z

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

.method public g(Ljava/lang/CharSequence;)La7/b;
    .locals 0

    .line 1
    iput-object p1, p0, La7/b;->n:Ljava/lang/CharSequence;

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

.method public h(Ljava/lang/String;)La7/b;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    new-instance v3, La7/b$d;

    .line 14
    .line 15
    invoke-direct {v3, p0}, La7/b$d;-><init>(La7/b;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/passport/ui/internal/util/LinkSpanHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/passport/ui/internal/util/LinkSpanHelper$a;)Landroid/text/Spannable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, La7/b;->n:Ljava/lang/CharSequence;

    .line 23
    .line 24
    :cond_0
    return-object p0
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
.end method

.method public i(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, La7/b;->k:Landroid/util/Pair;

    .line 7
    .line 8
    return-object p0
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

.method public j(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, La7/b;->l:Landroid/util/Pair;

    .line 7
    .line 8
    return-object p0
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

.method public k(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, La7/b;->j:Landroid/util/Pair;

    .line 7
    .line 8
    return-object p0
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

.method public l(Ljava/lang/String;)La7/b;
    .locals 0

    .line 1
    iput-object p1, p0, La7/b;->m:Ljava/lang/String;

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

.method public m(Landroid/view/View;)La7/b;
    .locals 0

    .line 1
    iput-object p1, p0, La7/b;->q:Landroid/view/View;

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

.method public n(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, La7/b;->n:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-virtual {p0}, La7/b;->show()V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Ln5/f;->t:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Ln5/e;->D0:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p1, p0, La7/b;->a:Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object p1, p0, La7/b;->m:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x0

    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, La7/b;->a:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, La7/b;->a:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, La7/b;->a:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v2, p0, La7/b;->m:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget p1, Ln5/e;->N:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p1, p0, La7/b;->b:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object p1, p0, La7/b;->n:Ljava/lang/CharSequence;

    .line 59
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, La7/b;->b:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object p1, p0, La7/b;->b:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, La7/b;->b:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, La7/b;->b:Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object v2, p0, La7/b;->n:Ljava/lang/CharSequence;

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    sget p1, Ln5/e;->O:I

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/widget/Button;

    .line 100
    .line 101
    iput-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 102
    .line 103
    iget-object p1, p0, La7/b;->k:Landroid/util/Pair;

    .line 104
    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p1, Ljava/lang/CharSequence;

    .line 110
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    iget-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 124
    .line 125
    iget-object v2, p0, La7/b;->k:Landroid/util/Pair;

    .line 126
    .line 127
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, Ljava/lang/CharSequence;

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 135
    .line 136
    new-instance v2, La7/b$a;

    .line 137
    .line 138
    invoke-direct {v2, p0}, La7/b$a;-><init>(La7/b;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_3
    :goto_2
    iget-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :goto_3
    sget p1, Ln5/e;->Q:I

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroid/widget/Button;

    .line 157
    .line 158
    iput-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 159
    .line 160
    iget-object p1, p0, La7/b;->l:Landroid/util/Pair;

    .line 161
    .line 162
    if-eqz p1, :cond_5

    .line 163
    .line 164
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Ljava/lang/CharSequence;

    .line 167
    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_4

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_4
    iget-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 181
    .line 182
    iget-object v2, p0, La7/b;->l:Landroid/util/Pair;

    .line 183
    .line 184
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v2, Ljava/lang/CharSequence;

    .line 187
    .line 188
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 192
    .line 193
    new-instance v2, La7/b$b;

    .line 194
    .line 195
    invoke-direct {v2, p0}, La7/b$b;-><init>(La7/b;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_5
    :goto_4
    iget-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 203
    .line 204
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    :goto_5
    sget p1, Ln5/e;->b0:I

    .line 208
    .line 209
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Landroid/widget/Button;

    .line 214
    .line 215
    iput-object p1, p0, La7/b;->f:Landroid/widget/Button;

    .line 216
    .line 217
    iget-object p1, p0, La7/b;->j:Landroid/util/Pair;

    .line 218
    .line 219
    if-eqz p1, :cond_7

    .line 220
    .line 221
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, Ljava/lang/CharSequence;

    .line 224
    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_6

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_6
    iget-object p1, p0, La7/b;->f:Landroid/widget/Button;

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, La7/b;->f:Landroid/widget/Button;

    .line 238
    .line 239
    iget-object v2, p0, La7/b;->j:Landroid/util/Pair;

    .line 240
    .line 241
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v2, Ljava/lang/CharSequence;

    .line 244
    .line 245
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, La7/b;->f:Landroid/widget/Button;

    .line 249
    .line 250
    new-instance v2, La7/b$c;

    .line 251
    .line 252
    invoke-direct {v2, p0}, La7/b$c;-><init>(La7/b;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_7
    :goto_6
    iget-object p1, p0, La7/b;->f:Landroid/widget/Button;

    .line 260
    .line 261
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :goto_7
    sget p1, Ln5/e;->g:I

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Landroid/widget/LinearLayout;

    .line 271
    .line 272
    iput-object p1, p0, La7/b;->c:Landroid/widget/LinearLayout;

    .line 273
    .line 274
    sget p1, Ln5/e;->x0:I

    .line 275
    .line 276
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    iput-object p1, p0, La7/b;->d:Landroid/view/View;

    .line 281
    .line 282
    sget p1, Ln5/e;->y0:I

    .line 283
    .line 284
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iput-object p1, p0, La7/b;->e:Landroid/view/View;

    .line 289
    .line 290
    iget-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-nez p1, :cond_8

    .line 297
    .line 298
    iget-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 299
    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-nez p1, :cond_8

    .line 305
    .line 306
    iget-object p1, p0, La7/b;->f:Landroid/widget/Button;

    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-nez p1, :cond_8

    .line 313
    .line 314
    const/4 p1, 0x1

    .line 315
    goto :goto_8

    .line 316
    :cond_8
    move p1, v0

    .line 317
    :goto_8
    if-nez p1, :cond_10

    .line 318
    .line 319
    iget-object v2, p0, La7/b;->c:Landroid/widget/LinearLayout;

    .line 320
    .line 321
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 325
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_9

    .line 331
    .line 332
    iget-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 333
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-eqz p1, :cond_9

    .line 339
    .line 340
    iget-object p1, p0, La7/b;->f:Landroid/widget/Button;

    .line 341
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-nez p1, :cond_a

    .line 347
    .line 348
    :cond_9
    iget-object p1, p0, La7/b;->c:Landroid/widget/LinearLayout;

    .line 349
    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    const/high16 v3, 0x42000000    # 32.0f

    .line 355
    .line 356
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/w;->b(FLandroid/content/Context;)F

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    float-to-int v3, v3

    .line 365
    iget-object v4, p0, La7/b;->c:Landroid/widget/LinearLayout;

    .line 366
    .line 367
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    iget-object v5, p0, La7/b;->c:Landroid/widget/LinearLayout;

    .line 372
    .line 373
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 378
    .line 379
    .line 380
    :cond_a
    iget-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 381
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-nez p1, :cond_b

    .line 387
    .line 388
    iget-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 389
    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    if-ne p1, v1, :cond_b

    .line 395
    .line 396
    iget-object p1, p0, La7/b;->f:Landroid/widget/Button;

    .line 397
    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-nez p1, :cond_b

    .line 403
    .line 404
    move p1, v0

    .line 405
    move v2, p1

    .line 406
    goto :goto_c

    .line 407
    :cond_b
    iget-object p1, p0, La7/b;->g:Landroid/widget/Button;

    .line 408
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    if-eq p1, v1, :cond_d

    .line 414
    .line 415
    iget-object p1, p0, La7/b;->h:Landroid/widget/Button;

    .line 416
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    if-ne p1, v1, :cond_c

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_c
    move p1, v0

    .line 425
    goto :goto_a

    .line 426
    :cond_d
    :goto_9
    move p1, v1

    .line 427
    :goto_a
    iget-object v2, p0, La7/b;->h:Landroid/widget/Button;

    .line 428
    .line 429
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eq v2, v1, :cond_f

    .line 434
    .line 435
    iget-object v2, p0, La7/b;->f:Landroid/widget/Button;

    .line 436
    .line 437
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-ne v2, v1, :cond_e

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_e
    move v2, v0

    .line 445
    goto :goto_c

    .line 446
    :cond_f
    :goto_b
    move v2, v1

    .line 447
    :goto_c
    iget-object v3, p0, La7/b;->d:Landroid/view/View;

    .line 448
    .line 449
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    iget-object p1, p0, La7/b;->e:Landroid/view/View;

    .line 453
    .line 454
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    :cond_10
    sget p1, Ln5/e;->o:I

    .line 458
    .line 459
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    check-cast p1, Landroid/widget/FrameLayout;

    .line 464
    .line 465
    iput-object p1, p0, La7/b;->i:Landroid/widget/FrameLayout;

    .line 466
    .line 467
    iget-object v2, p0, La7/b;->q:Landroid/view/View;

    .line 468
    .line 469
    if-eqz v2, :cond_11

    .line 470
    .line 471
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 472
    .line 473
    .line 474
    iget-object p1, p0, La7/b;->b:Landroid/widget/TextView;

    .line 475
    .line 476
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    .line 478
    .line 479
    goto :goto_d

    .line 480
    :cond_11
    iget-object p1, p0, La7/b;->b:Landroid/widget/TextView;

    .line 481
    .line 482
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 483
    .line 484
    .line 485
    :goto_d
    sget p1, Ln5/e;->j0:I

    .line 486
    .line 487
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    iget-boolean v2, p0, La7/b;->o:Z

    .line 492
    .line 493
    if-eqz v2, :cond_12

    .line 494
    .line 495
    goto :goto_e

    .line 496
    :cond_12
    move v0, v1

    .line 497
    :goto_e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 498
    .line 499
    .line 500
    return-void
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La7/b;->l(Ljava/lang/String;)La7/b;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La7/b;->l(Ljava/lang/String;)La7/b;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, -0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 11
    .line 12
    .line 13
    return-void
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
