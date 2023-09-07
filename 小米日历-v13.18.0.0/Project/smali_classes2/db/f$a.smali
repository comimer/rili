.class Ldb/f$a;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldb/f;


# direct methods
.method constructor <init>(Ldb/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldb/f$a;->a:Ldb/f;

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
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ldb/f$a;->a:Ldb/f;

    .line 8
    .line 9
    invoke-static {p1}, Ldb/f;->i(Ldb/f;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ldb/f$a;->a:Ldb/f;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget v0, Ldb/b;->b:I

    .line 23
    .line 24
    iget-object v1, p0, Ldb/f$a;->a:Ldb/f;

    .line 25
    .line 26
    invoke-static {v1}, Ldb/f;->j(Ldb/f;)Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "miuix:search:recommendation"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/s;->r(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/s;->h()I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Ldb/f$a;->a:Ldb/f;

    .line 41
    .line 42
    invoke-static {v0}, Ldb/f;->k(Ldb/f;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Ldb/f$a;->a:Ldb/f;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget v1, Ldb/b;->b:I

    .line 56
    .line 57
    iget-object v2, p0, Ldb/f$a;->a:Ldb/f;

    .line 58
    .line 59
    invoke-static {v2}, Ldb/f;->l(Ldb/f;)Ldb/e;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "miuix:search:result"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/s;->r(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/s;->j()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Ldb/f$a;->a:Ldb/f;

    .line 73
    .line 74
    invoke-static {v0}, Ldb/f;->l(Ldb/f;)Ldb/e;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Ldb/f$a;->a:Ldb/f;

    .line 79
    .line 80
    invoke-static {v1}, Ldb/f;->m(Ldb/f;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0, p1, v1}, Ldb/e;->j(Ljava/lang/CharSequence;Z)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object p1, p0, Ldb/f$a;->a:Ldb/f;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-static {p1, v0}, Ldb/f;->n(Ldb/f;Z)Z

    .line 91
    .line 92
    .line 93
    return-void
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
