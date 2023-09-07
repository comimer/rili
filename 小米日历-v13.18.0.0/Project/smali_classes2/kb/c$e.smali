.class Lkb/c$e;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lkb/a$c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkb/c;


# direct methods
.method constructor <init>(Lkb/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb/c$e;->a:Lkb/c;

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
.end method


# virtual methods
.method public a()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lkb/c$e;->a:Lkb/c;

    .line 2
    .line 3
    invoke-static {p1}, Lkb/c;->c1(Lkb/c;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lkb/c$e;->a:Lkb/c;

    .line 12
    .line 13
    invoke-virtual {p1}, Lkb/a;->i()Lkb/a$c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lkb/a$c;->m()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lkb/c$e;->a:Lkb/c;

    .line 26
    .line 27
    invoke-static {v0}, Lkb/c;->a1(Lkb/c;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lkb/c$e;->a:Lkb/c;

    .line 37
    .line 38
    invoke-static {v0}, Lkb/c;->Z0(Lkb/c;)Landroid/widget/ProgressBar;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lkb/a$c;->l()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x3

    .line 50
    if-ge v0, v1, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lkb/c$e;->a:Lkb/c;

    .line 53
    .line 54
    invoke-static {v0}, Lkb/c;->Y0(Lkb/c;)Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object p1, p1, Lkb/a$c;->e:[Ljava/lang/String;

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    aget-object p1, p1, v1

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lkb/c$e;->a:Lkb/c;

    .line 68
    .line 69
    invoke-static {v0}, Lkb/c;->Y0(Lkb/c;)Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object p1, p1, Lkb/a$c;->e:[Ljava/lang/String;

    .line 74
    .line 75
    aget-object p1, p1, v1

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lkb/c$e;->a:Lkb/c;

    .line 84
    .line 85
    invoke-static {v1}, Lkb/c;->a1(Lkb/c;)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lkb/c$e;->a:Lkb/c;

    .line 93
    .line 94
    invoke-static {v1}, Lkb/c;->Z0(Lkb/c;)Landroid/widget/ProgressBar;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lkb/c$e;->a:Lkb/c;

    .line 102
    .line 103
    invoke-static {v1}, Lkb/c;->Y0(Lkb/c;)Landroid/widget/TextView;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lkb/c$e;->a:Lkb/c;

    .line 111
    .line 112
    invoke-static {v1}, Lkb/c;->Y0(Lkb/c;)Landroid/widget/TextView;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object p1, p1, Lkb/a$c;->e:[Ljava/lang/String;

    .line 117
    .line 118
    aget-object p1, p1, v0

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_0
    return-void
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 0

    return-void
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 0

    return-void
.end method
